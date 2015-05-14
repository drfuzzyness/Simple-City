using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class Building : MonoBehaviour {

	[Header("Status")]
	public int age;
	public bool isBuilt;
	public bool isRunning;
	public int floorsInQuene;
	public bool isUnderConstruction;

	[Header("Balance")]
	public bool startBuilt;
	public bool animationsEnabled;
	
    [Header("Prefabs")]
	public Transform baseFloorPrefab;
	public Transform floorPrefab;
	public Transform roofPrefab;
// 	public Vector3 heightBetweenFloors;
	public ParticleSystem dustParticles;

	[Header("Setup")]
	public BuildingPlot plot;



	[Header("Data")]
	public List<Floor> floors;
	private Floor lastFloor {
		get { 
			return floors[floors.Count - 1];
		}
	}
	
	[HideInInspector]
	public BuildingRevenue buildingRevenue;
	[HideInInspector]
	public BuildingExports buildingExports;
	[HideInInspector]
	public SphereOfInfluence sphereOfInfluence;
	[HideInInspector]	
	private Transform roof;
	[HideInInspector]
    public BuildingUI buildingUI;

    public bool CreateBuilding() {
		if( isBuilt ) {
			Debug.LogWarning( "Can't CreateBuilding() an already built building");
			return false;
		}
		Debug.Log( "CreateBuilding()" );
		plot.gameObject.SetActive( false );
		buildingUI.detailsButton.gameObject.SetActive( true );
		isBuilt = true;
		isRunning = false;
		Transform newFloor = Instantiate( baseFloorPrefab, transform.position, transform.rotation ) as Transform;
		Debug.Log( this );
		Debug.Log( newFloor );
		floors.Add( newFloor.GetComponent<Floor>() );
		
		lastFloor.building = this;
		
		lastFloor.transform.SetParent( transform );
		buildingUI.UITransform.gameObject.SetActive( false );
		
		dustParticles.Play();
		if( animationsEnabled ) {
			newFloor.GetComponent<Animator>().Play( "BuildBase" );
		}
		StartCoroutine( "Construct", newFloor );
		return true;

	}
	


	public void BuildFloor() {
		Debug.Log("BuildFloor()");
		if( isBuilt ) {
			if( isRunning ) {
				if( isUnderConstruction ) {
					floorsInQuene++;
				} else {
					isUnderConstruction = true;
					floorsInQuene++;
					StartCoroutine( BuildNextFloor() );
				}
				
			} else {
				Debug.LogWarning(gameObject.name + " hasn't finished building and can't BuildFloor()");
			}
		}
	}
	
	IEnumerator Construct( Transform newBase ) {
		Animator anim = newBase.GetComponent<Animator>();
		int doneState = Animator.StringToHash("Done");
		if( animationsEnabled ) {
			while( anim.GetCurrentAnimatorStateInfo(0).shortNameHash != doneState ) {
				yield return null;
			}
		}
		Debug.Log("create done playing BuildBase");
		yield return null;
// 		isRunning = true;
		StartCoroutine( CreateRoof() );
	}



	
	IEnumerator CreateRoof() {
		if( roofPrefab != null ) {
			roof = Instantiate( roofPrefab, transform.position, transform.rotation ) as Transform;
			roof.SetParent( transform );
			roof.Translate( -lastFloor.size, Space.Self );
			buildingUI.UITransform.parent = roof.GetChild(0);
// 			bldingUI.UITransform.Translate( transform.forward * -1.5f, Space.Self);
			Animator anim = roof.GetComponent<Animator>();
			int doneState = Animator.StringToHash("Idle");
			while( animationsEnabled && anim.GetCurrentAnimatorStateInfo(0).shortNameHash != doneState ) {
				yield return null;
			}
			Debug.Log( "Done Creating Roof");
			roof.transform.Translate( lastFloor.size, Space.Self );
			
		}
		isRunning = true;
		Debug.Log( "Enabling UI");
		buildingUI.UITransform.gameObject.SetActive( true );
		yield return null;
		
	}
	
	IEnumerator BuildNextFloor() {
	// 				if(floors.Count == 1 && animationsEnabled ) {
// 					floors.Add( Instantiate( floorPrefab,
// 				                        lastFloor.transform.position,
// 				                        transform.rotation ) as Floor ); // new floor above last floor
// 				} 
// 				else {
			while( floorsInQuene > 0) {
				int rotationNdx = Random.Range(-1, 2);
				Transform newFloor = Instantiate( floorPrefab,
			                        lastFloor.transform.position,
			                        transform.rotation ) as Transform; // new floor above last floor
				floors.Add( newFloor.GetComponent<Floor>() );
				lastFloor.transform.Translate(floors[floors.Count - 2].size, Space.Self);	
	// 				}
				lastFloor.transform.SetParent( floors[floors.Count - 2].transform ); // parent new floor to building
				lastFloor.transform.Rotate( 0f, rotationNdx * 90f, 0f, Space.Self);
				lastFloor.building = this;
				
				StartCoroutine( MoveRoofUp() );
				dustParticles.Play();
				
				Animator anim = lastFloor.transform.GetChild(0).GetComponent<Animator>();
				int state = Animator.StringToHash("BuildFloor");
				if( animationsEnabled ) {
					anim.Play( state );
					yield return new WaitForSeconds( .5f ); // praise the sun
					while( anim.GetCurrentAnimatorStateInfo(0).shortNameHash == state ) {
						yield return null;
					}
					// swap to lowres model
					lastFloor.highRes.gameObject.SetActive( false );
					lastFloor.lowRes.gameObject.SetActive( true );
				} 
				floorsInQuene--;
			}
			isUnderConstruction = false;
	}
	
	IEnumerator MoveRoofUp() {
		Debug.Log( "Trying to MoveRoofUp()" );
		if( roof != null ) {
// 			ceiling.transform.position = target;
			
// 			roof.transform.Translate( -lastFloor.size, Space.Self );
			Animator anim = roof.GetComponent<Animator>();
			anim.SetTrigger( "RaiseRoof" );
			int state = Animator.StringToHash("Idle");
			if( animationsEnabled ) {
// 				anim.Play( state );
				yield return new WaitForSeconds( .5f ); // praise the sun
				while( anim.GetCurrentAnimatorStateInfo(0).shortNameHash != state ) {
// 					Debug.Log( anim.GetCurrentAnimatorStateInfo(0) + ", waiting for " + state );
					yield return null;
				}
			}
			Debug.Log( "Done MoveRoofUp()" );
			roof.transform.Translate( lastFloor.size, Space.Self ); // You will never believe how long it took to figure out the roof problem
		}
		yield return null;
	}

	void Update () {
		
	}

	void Awake() {
		buildingUI = GetComponent<BuildingUI>();
		buildingRevenue = GetComponent<BuildingRevenue>();
		buildingExports = GetComponent<BuildingExports>();
		sphereOfInfluence = GetComponent<SphereOfInfluence>();
	}

    void Start() {
		if( startBuilt ) {
			CreateBuilding();
		}
	}




}
