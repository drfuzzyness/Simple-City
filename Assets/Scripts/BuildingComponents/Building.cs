using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class Building : MonoBehaviour {

	[Header("Status")]
	public int age;
	public bool isBuilt;
	public bool isRunning;

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
	

	private Transform roof;
    private BuildingUI bldingUI;

    public bool CreateBuilding() {
		if( isBuilt ) {
			Debug.LogWarning( "Can't CreateBuilding() an already built building");
			return false;
		}
		Debug.Log( "CreateBuilding()" );
		plot.gameObject.SetActive( false );
		isBuilt = true;
		isRunning = false;
		Transform newFloor = Instantiate( baseFloorPrefab, transform.position, transform.rotation ) as Transform;
		Debug.Log( this );
		Debug.Log( newFloor );
		floors.Add( newFloor.GetComponent<Floor>() );
		
		lastFloor.building = this;
		
		lastFloor.transform.SetParent( transform );
// 		bldingUI.overviewCanvas.gameObject.SetActive( true );
		
		dustParticles.Play();
		if( animationsEnabled ) {
			newFloor.GetComponent<Animator>().Play( "BuildBase" );
		}
		StartCoroutine( "Construct", newFloor );
		return true;

	}
	


	public void BuildFloor() {
		if( isBuilt ) {
			if( isRunning ) {
// 				if(floors.Count == 1 && animationsEnabled ) {
// 					floors.Add( Instantiate( floorPrefab,
// 				                        lastFloor.transform.position,
// 				                        transform.rotation ) as Floor ); // new floor above last floor
// 				} 
// 				else {
					Transform newFloor = Instantiate( floorPrefab,
				                        lastFloor.transform.position,
				                        transform.rotation ) as Transform; // new floor above last floor
					floors.Add( newFloor.GetComponent<Floor>() );
					lastFloor.transform.Translate(floors[floors.Count - 2].size, Space.Self);	
// 				}
				lastFloor.transform.SetParent( floors[floors.Count - 2].transform ); // parent new floor to building
				lastFloor.building = this;
				Animator anim = lastFloor.GetComponent<Animator>();
				int state = Animator.StringToHash("BuildFloor");
				if( animationsEnabled ) {
					anim.Play( state );
				} 
				// move overviewCanvas to the top of the building
				// start ceiling moving up
				StartCoroutine( "MoveRoofUp", bldingUI.overviewCanvas.transform.position);
				if( bldingUI != null ) {
// 					bldingUI.overviewCanvas.transform.position = lastFloor.transform.position +
// 									heightBetweenFloors;
					bldingUI.overviewCanvas.transform.Translate( lastFloor.size, Space.Self );
				}
				dustParticles.Play();
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
			Animator anim = roof.GetComponent<Animator>();
			int doneState = Animator.StringToHash("Idle");
			while( animationsEnabled && anim.GetCurrentAnimatorStateInfo(0).shortNameHash != doneState ) {
				yield return null;
			}
			roof.transform.Translate( lastFloor.size, Space.Self );
		}
		yield return null;
		isRunning = true;
	}
	IEnumerator MoveRoofUp( Vector3 target) {
		if( roofPrefab != null ) {
// 			ceiling.transform.position = target;
			roof.transform.Translate( -lastFloor.size * 2, Space.Self );
			Animator anim = roof.GetComponent<Animator>();
			anim.SetTrigger( "RaiseRoof" );
			int state = Animator.StringToHash("Idle");
			if( animationsEnabled ) {
// 				anim.Play( state );
				while( anim.GetCurrentAnimatorStateInfo(0).shortNameHash != state ) {
					yield return null;
				}
			}
			roof.transform.Translate( lastFloor.size * 3, Space.Self );
		}
		yield return null;
	}

	void Update () {
		
	}

	void Awake() {
		bldingUI = GetComponent<BuildingUI>();
	}

    void Start() {
        
        age = 0;
		isBuilt = false;
		isRunning = false;
		if( startBuilt ) {
			CreateBuilding();
		}
	}




}
