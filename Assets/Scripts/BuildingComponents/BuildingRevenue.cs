using UnityEngine;
using System.Collections;

public class BuildingRevenue : MonoBehaviour {
	public enum ValueCalculationMode {Neighbors, PunishHighrises }
	
	[Header("Status")]
	public bool isOwned;
	public float revenue;
	public float combinedValue; 
	public float floorConstructionCost;
	[SerializeField]
	private ValueCalculationMode valueCalculationMode;
	[Header("Algorithum Components")]
	public float perFloorValue;
	
	[Header("Neighbors Algorithum")]
	public float marketValue; // changes with the surrounding neighborhood
	public float valuePerNeighbor;
	public float structureValue; // value based on the actual structure independant of 
	
	[Header("Punish Highrise Algorithum")]
	public float baseValue;
	public float perFloorRent;
	 // 
	public float negativePerFloorMultiplier; // used to punish high-rise buildings
	public int numPositiveFloors;
	public float rentToValueConversion = 5f;
	
	
	private delegate void ValueCalculation();
	private ValueCalculation TheValueCalculation;
	private Building blding;
	private BuildingUI bldingUI;
	private SphereOfInfluence sphrInf;
	
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
		if( blding.floors.Count < numPositiveFloors ) {
			revenue = perFloorRent * blding.floors.Count;
		}
		else {
			revenue = (perFloorRent * numPositiveFloors) - 
				Mathf.Round( (blding.floors.Count - numPositiveFloors) * negativePerFloorMultiplier);
		}
		combinedValue = Mathf.Round( revenue * rentToValueConversion + baseValue );
	}
	
	void CalculateRevenueNeighbors() {
		// Simulates value through being close to neighbors
		marketValue = sphrInf.neighbors.Count * valuePerNeighbor;
		structureValue = blding.floors.Count * perFloorValue;
		combinedValue = Mathf.Round( marketValue + structureValue );
		revenue = combinedValue / rentToValueConversion;
	}
	
	void CalculateRevenue() {
		TheValueCalculation();
	}

	void Awake () {
		blding = GetComponent<Building>();
		bldingUI = GetComponent<BuildingUI>();
		sphrInf = GetComponent<SphereOfInfluence>();
	}
	
	void Start () {
		isOwned = false;
		switch( valueCalculationMode ) {
			case ValueCalculationMode.PunishHighrises:
				TheValueCalculation = CalculateHighriseValue;
				break;
			case ValueCalculationMode.Neighbors:
				TheValueCalculation = CalculateRevenueNeighbors;
				break;
		}
	}
	
	void Update () {
		CalculateRevenue();
	}
}
