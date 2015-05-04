using UnityEngine;
using System.Collections;

public class BuildingRevenue : MonoBehaviour {
	
	public float revenue;
	public float costToBuild;
	public float revenuePerFloor;
	public float modifierForNegativeFloors;
	public int numPositiveFloors;
	
	private Building blding;
	private BuildingUI bldingUI;
	
	public bool BuyBuilding() {
		if( BudgetManager.instance.purchase( costToBuild ) ) {
			revenuePerFloor = Mathf.Ceil(costToBuild / 5);
			CalculateRevenue();
			blding.CreateBuilding();
			return true;
		}
		else {
			Debug.LogWarning( "not enough money" );
			return false;
		}
	}
	
	public void CalculateRevenue() {
		if( blding.floors.Count < numPositiveFloors ) {
			revenue = revenuePerFloor * blding.floors.Count;
		}
		else {
			revenue = (revenuePerFloor * numPositiveFloors) - 
				Mathf.Round( (blding.floors.Count - numPositiveFloors) * revenuePerFloor / 0.4f );
		}

	}
	
	public void UpdateCostToBuild( float increaseRate ) {
		// Increase rate should be >= 1
		if( !blding.isBuilt ) {
			costToBuild = Mathf.Round( costToBuild * increaseRate );
			blding.plot.updatePricetagDisplay();
		}
	}

	void Start () {
		blding = GetComponent<Building>();
		bldingUI = GetComponent<BuildingUI>();
	}
	
	void Update () {
			CalculateRevenue();
	}
}
