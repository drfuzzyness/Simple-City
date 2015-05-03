using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class Building : MonoBehaviour {

	[Header("Status")]
// 	public float revenue;
	public int age;
// 	public float costToBuild;

	[Header("Balance")]
	public bool startBuilt;
// 	public float revenuePerFloor;
// 	public float modifierForNegativeFloors;
// 	public int numPositiveFloors;



	[Header("Prefabs")]
	public Transform floorPrefab;
	public Transform baseFloorPrefab;
	public Vector3 heightBetweenFloors;
	public ParticleSystem dustParticles;

	[Header("Setup")]
	public Transform overviewCanvas;
	public BuildingPlot plot;
// 	public Color positiveCashflowColor;
// 	public Color negativeCashflowColor;


	[Header("Data")]
	public List<Transform> floors;
	public bool isBuilt; // im a dork
	public bool isRunning;

	public bool CreateBuilding() {
		isBuilt = true;
		isRunning = false;
		Transform newFloor = Instantiate( baseFloorPrefab, transform.position, transform.rotation ) as Transform;
		floors.Add( newFloor );
		newFloor.SetParent( transform );
		overviewCanvas.gameObject.SetActive( true );
		overviewCanvas.position = newFloor.position + newFloor.up * ( newFloor.localScale.y / 2 + .3f );
		dustParticles.Play();
		newFloor.GetComponent<Animator>().Play( "Build" );
		StartCoroutine( "Construct", newFloor.GetComponent<Animator>() );
		return true;

	}



	public void buildFloor() {
		if( isRunning ) {
			floors.Add( Instantiate( floorPrefab,
			                        floors[floors.Count - 1].position + heightBetweenFloors,
			                        transform.rotation ) as Transform ); // new floor above last floor
			floors[floors.Count - 1].SetParent( transform ); // parent new floor to building
			// move overviewCanvas to the top of the building
			overviewCanvas.position = floors[floors.Count - 1].transform.position +
										Vector3.up * ( floors[floors.Count - 1].transform.localScale.y / 2 + .3f );
					
// 			calculateRevenue();
			dustParticles.Play();
		}
	}


// 	public void calculateRevenue() {
// 		if( floors.Count < numPositiveFloors ) {
// 			revenue = revenuePerFloor * floors.Count;
// 		}
// 		else {
// 			revenue = (revenuePerFloor * numPositiveFloors) - 
// 				Mathf.Round( (floors.Count - numPositiveFloors) * revenuePerFloor / 0.4f );
// 		}
// 
// 		updateMoneyCanvas();
// 	}

// 	public void updateCostToBuild( float increaseRate ) {
// 		// Increase rate should be >= 1
// 		if( !isBuilt ) {
// 			costToBuild = Mathf.Round( costToBuild * increaseRate );
// 			plot.updatePricetagDisplay();
// 		}
// 	}

	IEnumerator Construct( Animator anim ) {
		int buildState = Animator.StringToHash("Build");
		while( anim.GetCurrentAnimatorStateInfo(0).shortNameHash == buildState ) {
			yield return null;
		}
		isRunning = true;
	}

// 	void updateMoneyCanvas() {
// 		if( revenue >= 0 ) {
// 			overviewCanvas.GetChild(0).GetComponent<Text>().text = "$" + revenue;
// 			overviewCanvas.GetChild(0).GetComponent<Text>().color = positiveCashflowColor;
// 		}
// 		else {
// 			overviewCanvas.GetChild(0).GetComponent<Text>().text = "-$" + Mathf.Abs( revenue );
// 			overviewCanvas.GetChild(0).GetComponent<Text>().color = negativeCashflowColor;
// 		}
// 	}

	// Update is called once per frame
	void Update () {
		
	}
	
	void Start() {
		age = 0;
		isBuilt = false;
		if( startBuilt ) {
			Destroy( plot.gameObject );
			CreateBuilding();
		}
	}




}
