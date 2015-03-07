using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class Building : MonoBehaviour {



	[Header("Status")]
	public float revenue;
	public int age;
	public float costToBuild;


	[Header("Setup")]
	public float revenuePerFloor;
	public int numPositiveFloors;
	public BudgetManager budgetManager;
	public Transform overviewCanvas;
	public Transform floorPrefab;
	public BuildingPosition plotPosition;
	public Vector3 heightBetweenFloors;
	public Color positiveCashflowColor;
	public Color negativeCashflowColor;


	[Header("Data")]
	public List<Transform> floors;
	private bool isBuilt;
	public bool IsBuilt {
		get {
			return isBuilt;
		}
	}


	public bool createBuilding() {
		if( budgetManager.purchase( costToBuild ) ) {
			isBuilt = true;
			floors.Add( Instantiate( floorPrefab, transform.position, transform.rotation ) as Transform );
			floors[floors.Count - 1].SetParent( transform );
			revenuePerFloor = Mathf.Ceil(costToBuild / 5);
			calculateRevenue();
			overviewCanvas.gameObject.SetActive( true );
			overviewCanvas.position = floors[floors.Count - 1].transform.position +
				Vector3.up * ( floors[floors.Count - 1].transform.localScale.y / 2 + .3f );
			return true;
		}
		else {
			Debug.LogError( "not enough money" );
			return false;
		}
	}

	public void buildFloor() {
		if( isBuilt ) {
			floors.Add( Instantiate( floorPrefab,
			                        floors[floors.Count - 1].position + heightBetweenFloors,
			                        transform.rotation ) as Transform ); // new floor above last floor
			floors[floors.Count - 1].SetParent( transform ); // parent new floor to building
			// move overviewCanvas to the top of the building
			overviewCanvas.position = floors[floors.Count - 1].transform.position +
										Vector3.up * ( floors[floors.Count - 1].transform.localScale.y / 2 + .3f );
					
			calculateRevenue();
		}
	}


	public void calculateRevenue() {
		if( floors.Count < numPositiveFloors ) {
			revenue = revenuePerFloor * floors.Count;
		}
		else {
			revenue = revenuePerFloor * numPositiveFloors - revenuePerFloor *
				Mathf.Round( ( floors.Count - revenuePerFloor ) / 1.5f );
		}

		if( revenue >= 0 ) {
			overviewCanvas.GetChild(0).GetComponent<Text>().text = "$" + revenue;
			overviewCanvas.GetChild(0).GetComponent<Text>().color = positiveCashflowColor;
		}
		else {
			overviewCanvas.GetChild(0).GetComponent<Text>().text = "-$" + Mathf.Abs( revenue );
			overviewCanvas.GetChild(0).GetComponent<Text>().color = negativeCashflowColor;
		}
	}

	public void updateCostToBuild( float increaseRate ) {
		// Increase rate should be >= 1
		costToBuild = costToBuild * increaseRate;
		plotPosition.updatePricetagDisplay();
	}

	// Update is called once per frame
	void Update () {
		
	}
	
	void Start() {
		age = 0;
		isBuilt = false;
	}




}
