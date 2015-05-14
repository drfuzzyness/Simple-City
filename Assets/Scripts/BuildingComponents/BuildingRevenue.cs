using UnityEngine;
using System.Collections;

public class BuildingRevenue : MonoBehaviour {
	
	
	[Header("Status")]
	public bool isOwned;
	public float revenue;
	public float combinedValue; 
	public float floorConstructionCost;
	[SerializeField]
	
	[Header("Algorithum Components")]
	public float perFloorValue;
	
	[Header("Neighbors Algorithum")]
	public float marketValue; // changes with the surrounding neighborhood
	public float structureValue; // value based on the actual structure independant of 
	
	[Header("Punish Highrise Algorithum")]
	public float landValue;
	
	private delegate void ValueCalculation();
	private ValueCalculation TheValueCalculation;
	private Building blding;
	
	public void BuyNewBuilding() {
		if( BudgetManager.instance.Purchase( combinedValue ) ) {
// 			perFloorValue = Mathf.Ceil(marketValue / 5);
			blding.CreateBuilding();
			isOwned = true;
// 			return true;
		}
		else {
// 			Debug.LogWarning( "not enough money" );
// 			return false;
		}
	}
	
	public void BuyExistingBuilding() {
		Debug.LogError( "BuyExistingBuilding() is not yet implemented." );
		if( isOwned ) {
			Debug.LogError( "Building is already owned by you." );
			return;
		}
		if( BudgetManager.instance.Purchase( combinedValue ) ) {
			perFloorValue = Mathf.Ceil(marketValue / 5);
			isOwned = true;
// 			return true;
		}
	}
	
	public void AddFloor() {
		if( BudgetManager.instance.Purchase( floorConstructionCost )) {
			blding.BuildFloor();
// 			return true;
		}
// 		return false;
	}
	
	void CalculateHighriseValue() {
		// This is the classic formula that made the classic, argubly political, and unfun game
		if( blding.floors.Count < BudgetManager.instance.numPositiveFloors ) { 
			revenue = BudgetManager.instance.perFloorRent * blding.floors.Count;
		}
		else {
			revenue = (BudgetManager.instance.perFloorRent * BudgetManager.instance.numPositiveFloors) - 
				Mathf.Round( (blding.floors.Count - BudgetManager.instance.numPositiveFloors) * BudgetManager.instance.negativePerFloorMultiplier);
		}
		combinedValue = Mathf.Round( revenue * BudgetManager.instance.rentToValueConversion + landValue );
		floorConstructionCost = combinedValue * BudgetManager.instance.valueToNewFloorConversion;
	}
	
	void CalculateRevenueNeighbors() {
		// Simulates value through being close to neighbors
		marketValue = blding.sphereOfInfluence.neighbors.Count * BudgetManager.instance.valuePerNeighbor;
		structureValue = blding.floors.Count * perFloorValue;
		combinedValue = Mathf.Round( marketValue + structureValue );
		revenue = combinedValue / BudgetManager.instance.rentToValueConversion;
		floorConstructionCost = structureValue * BudgetManager.instance.valueToNewFloorConversion;
	}
	
	void CalculateRevenue() {
		TheValueCalculation();
	}

	void Awake () {
		blding = GetComponent<Building>();
	}
	
	void Start () {

	}
	
	void Update () {
		switch( BudgetManager.instance.valueCalculationMode ) {
			case BudgetManager.ValueCalculationMode.PunishHighrises:
				TheValueCalculation = CalculateHighriseValue;
				break;
			case BudgetManager.ValueCalculationMode.Neighbors:
				TheValueCalculation = CalculateRevenueNeighbors;
				break;
		}
		CalculateRevenue();
	}
}
