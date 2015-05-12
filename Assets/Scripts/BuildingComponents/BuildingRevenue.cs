using UnityEngine;
using System.Collections;

public class BuildingRevenue : MonoBehaviour {
	public enum ValueCalculationMode {QualityOfLife, PunishHighrises }
	
	[Header("Status")]
	public bool isOwned;
	public float revenue;
	public float combinedValue; 
	public float floorConstructionCost;
	[SerializeField]
	private ValueCalculationMode valueCalculationMode;
	
	[Header("Quality of Life Algorithum")]
	public float marketValue; // changes with the surrounding neighborhood
	public float structureValue; // value based on the actual structure independant of 
	
	[Header("Punish Highrise Algorithum")]
	public float perFloorValue; // should be multiplied against the marketValue
	public float perFloorRent;
	public float negativePerFloorMultiplier; // used to punish high-rise buildings
	public float modifierForNegativeFloors;
	public int numPositiveFloors;
	
	
	private delegate void ValueCalculation();
	private ValueCalculation TheValueCalculation;
	private Building blding;
	private BuildingUI bldingUI;
	
	public void BuyNewBuilding() {
		if( BudgetManager.instance.Purchase( combinedValue ) ) {
			perFloorValue = Mathf.Ceil(marketValue / 5);
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
		if( BudgetManager.instance.Purchase( combinedValue ) ) {
			perFloorValue = Mathf.Ceil(marketValue / 5);
			isOwned = true;
// 			return true;
		}
		else {
// 			Debug.LogWarning( "not enough money" );
// 			return false;
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
		if( blding.floors.Count < numPositiveFloors ) {
			revenue = perFloorValue * blding.floors.Count;
		}
		else {
			revenue = (perFloorValue * numPositiveFloors) - 
				Mathf.Round( (blding.floors.Count - numPositiveFloors) * negativePerFloorMultiplier);
		}
		
	}
	
	void CalculateRevenueQualityOfLife() {
		
	}
	
	public void UpdateCostToBuild( float increaseRate ) {
		// Increase rate should be >= 1
		if( !blding.isBuilt ) {
			combinedValue = Mathf.Round( marketValue + structureValue );
		}
	}
	
	void CalculateRevenue() {
		TheValueCalculation();
		combinedValue = Mathf.Round( marketValue + structureValue );
	}

	void Awake () {
		blding = GetComponent<Building>();
		bldingUI = GetComponent<BuildingUI>();
	}
	
	void Start () {
		isOwned = false;
		switch( valueCalculationMode ) {
			case ValueCalculationMode.PunishHighrises:
				TheValueCalculation = CalculateHighriseValue;
				break;
			case ValueCalculationMode.QualityOfLife:
				TheValueCalculation = CalculateRevenueQualityOfLife;
				break;
		}
	}
	
	void Update () {
		CalculateRevenue();
	}
}
