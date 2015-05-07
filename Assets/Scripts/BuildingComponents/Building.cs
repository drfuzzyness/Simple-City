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



    [Header("Prefabs")]
	public Transform baseFloorPrefab;
	public Transform floorPrefab;
	public Transform roofPrefab;
	public Vector3 heightBetweenFloors;
	public ParticleSystem dustParticles;

	[Header("Setup")]
	public BuildingPlot plot;



	[Header("Data")]
	public List<Transform> floors;
	

	private Transform ceiling;
    private BuildingUI bldingUI;

    public bool CreateBuilding() {
		isBuilt = true;
		isRunning = false;
		Transform newFloor = Instantiate( baseFloorPrefab, transform.position, transform.rotation ) as Transform;
		floors.Add( newFloor );
		newFloor.SetParent( transform );
// 		bldingUI.overviewCanvas.gameObject.SetActive( true );
		bldingUI.overviewCanvas.transform.position = newFloor.position + newFloor.up * ( newFloor.localScale.y / 2 + .3f );
		dustParticles.Play();
		newFloor.GetComponent<Animator>().Play( "BuildBase" );
		newFloor.GetComponent<Floor>().building = this;
		StartCoroutine( "Construct", newFloor.GetComponent<Animator>() );
		return true;

	}



	public void BuildFloor() {
		if( isBuilt ) {
			if( isRunning ) {
				if(floors.Count == 1 ) {
					floors.Add( Instantiate( floorPrefab,
				                        floors[floors.Count - 1].position,
				                        transform.rotation ) as Transform ); // new floor above last floor
				} 
				else {
					floors.Add( Instantiate( floorPrefab,
				                        floors[floors.Count - 1].position,
				                        transform.rotation ) as Transform ); // new floor above last floor
					floors[floors.Count - 1].Translate(heightBetweenFloors, Space.Self);	
				}
				floors[floors.Count - 1].SetParent( floors[floors.Count - 2] ); // parent new floor to building
				floors[floors.Count - 1].GetComponent<Floor>().building = this;
				Animator anim = floors[floors.Count - 1].GetComponent<Animator>();
				int state = Animator.StringToHash("BuildFloor");
				anim.Play( state );
				// move overviewCanvas to the top of the building
				// start ceiling moving up
				StartCoroutine( "MoveRoofUp", bldingUI.overviewCanvas.transform.position);
				if( bldingUI != null )
					bldingUI.overviewCanvas.transform.position = floors[floors.Count - 1].transform.position +
									heightBetweenFloors;
				dustParticles.Play();
			} else {
				Debug.LogWarning(gameObject.name + " hasn't finished building and can't BuildFloor()");
			}
		}
	}


	IEnumerator Construct( Animator anim ) {
		int buildState = Animator.StringToHash("BuildBase");
		while( anim.GetCurrentAnimatorStateInfo(0).shortNameHash == buildState ) {
			yield return null;
		}
		isRunning = true;
		StartCoroutine( CreateRoof() );
	}
	
	IEnumerator CreateRoof() {
		ceiling = Instantiate( roofPrefab, transform.position, transform.rotation ) as Transform;
		ceiling.SetParent( transform );
		ceiling.Translate( -heightBetweenFloors, Space.Self );
		Animator anim = ceiling.GetComponent<Animator>();
		int state = Animator.StringToHash("BuildBase");
		while( anim.GetCurrentAnimatorStateInfo(0).shortNameHash == state ) {
			yield return null;
		}
// 		isRunning = true;
	}
	IEnumerator MoveRoofUp( Vector3 target) {
		ceiling.transform.position = target;
		Animator anim = ceiling.GetComponent<Animator>();
		int state = Animator.StringToHash("BuildFloor");
		anim.Play( state );
		while( anim.GetCurrentAnimatorStateInfo(0).shortNameHash == state ) {
			yield return null;
		}
	}

	void Update () {
		
	}

	void Awake() {
		bldingUI = GetComponent<BuildingUI>();
	}

    void Start() {
        
        age = 0;
		isBuilt = false;
		if( startBuilt ) {
			plot.gameObject.SetActive( false );
			CreateBuilding();
		}
	}




}
