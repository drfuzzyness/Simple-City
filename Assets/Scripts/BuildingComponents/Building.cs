using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class Building : MonoBehaviour {

	[Header("Status")]
	public int age;

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
	public bool isBuilt;
	public bool isRunning;

	private Transform ceiling;
    private BuildingUI bldingUI;

    public bool CreateBuilding() {
		isBuilt = true;
		isRunning = false;
		Transform newFloor = Instantiate( baseFloorPrefab, transform.position, transform.rotation ) as Transform;
		floors.Add( newFloor );
		newFloor.SetParent( transform );
		bldingUI.overviewCanvas.gameObject.SetActive( true );
		bldingUI.overviewCanvas.transform.position = newFloor.position + newFloor.up * ( newFloor.localScale.y / 2 + .3f );
		dustParticles.Play();
		newFloor.GetComponent<Animator>().Play( "Build" );
		StartCoroutine( "Construct", newFloor.GetComponent<Animator>() );
		return true;

	}



	public void BuildFloor() {
		if( isRunning ) {
			if(floors.Count == 1 ) {
				floors.Add( Instantiate( floorPrefab,
			                        floors[floors.Count - 1].position,
			                        transform.rotation ) as Transform ); // new floor above last floor
				floors[floors.Count - 1].SetParent( transform ); // parent new floor to building
				// move overviewCanvas to the top of the building
				if( bldingUI != null )
					bldingUI.overviewCanvas.transform.position = floors[floors.Count - 1].transform.position;
			} 
			floors.Add( Instantiate( floorPrefab,
			                        floors[floors.Count - 1].position + heightBetweenFloors,
			                        transform.rotation ) as Transform ); // new floor above last floor
			floors[floors.Count - 1].SetParent( transform ); // parent new floor to building
			// move overviewCanvas to the top of the building
			if( bldingUI != null )
				bldingUI.overviewCanvas.transform.position = floors[floors.Count - 1].transform.position +
										Vector3.up * ( floors[floors.Count - 1].transform.localScale.y / 2 + .3f );
			dustParticles.Play();
		}
	}


	IEnumerator Construct( Animator anim ) {
		int buildState = Animator.StringToHash("Build");
		while( anim.GetCurrentAnimatorStateInfo(0).shortNameHash == buildState ) {
			yield return null;
		}
		isRunning = true;
	}

	void Update () {
		
	}

    void Start() {
        bldingUI = GetComponent<BuildingUI>();
        age = 0;
		isBuilt = false;
		if( startBuilt ) {
			Destroy( plot.gameObject );
			CreateBuilding();
		}
	}




}
