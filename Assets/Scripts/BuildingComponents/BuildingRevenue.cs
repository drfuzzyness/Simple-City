using UnityEngine;
using System.Collections;

public class BuildingRevenue : MonoBehaviour {
	
	public enum ValueCalculationMode {QualityOfLife, PunishHighrises }
	
	[Header("Status")]
	public float revenue;
	public float combinedValue; 
	[SerializeField]
	private ValueCalculationMode valueCalculationMode;
	
	[Header("Quality of Life Algorithum")]
	public float marketValue; // changes with the surrounding neighborhood
	public float structureValue; // value based on the actual structure independant of 
	
	[Header("Punish Highrise Algorithum")]
	public float perFloorMultiplier; // should be multiplied against the marketValue
	public float negativePerFloorMultiplier; // used to punish high-rise buildings
	public float modifierForNegativeFloors;
	public int numPositiveFloors;
	
	
	private delegate void ValueCalculation();
	private ValueCalculation TheValueCalculation;
	private Building blding;
	private BuildingUI bldingUI;
	
	public bool BuyNewBuilding() {
		if( BudgetManager.instance.Purchase( combinedValue ) ) {
			perFloorMultiplier = Mathf.Ceil(marketValue / 5);
			blding.CreateBuilding();
			return true;
		}
		else {
// 			Debug.LogWarning( "not enough money" );
			return false;
		}
	}
	
	public bool BuyExistingBuilding() {
		Debug.LogError( "BuyExistingBuilding() is not yet implemented." );
		if( BudgetManager.instance.Purchase( combinedValue ) ) {
			perFloorMultiplier = Mathf.Ceil(marketValue / 5);
			return true;
		}
		else {
// 			Debug.LogWarning( "not enough money" );
			return false;
		}
	}
	
	void CalculateRevenueBasedOnFloors() {
		if( blding.floors.Count < numPositiveFloors ) {
			revenue = perFloorMultiplier * blding.floors.Count;
		}
		else {
			revenue = (perFloorMultiplier * numPositiveFloors) - 
				Mathf.Round( (blding.floors.Count - numPositiveFloors) * negativePerFloorMultiplier);
		}

	}
	
	void CalculateRevenueQualityOfLife() {
		
	}
	
	public void UpdateCostToBuild( float increaseRate ) {
		// Increase rate should be >= 1
		if( !blding.isBuilt ) {
			marketValue = Mathf.Round( marketValue * increaseRate );
		}
	}
	
	void CalculateRevenue() {
		TheValueCalculation();
	}

	void Awake () {
		blding = GetComponent<Building>();
		bldingUI = GetComponent<BuildingUI>();
	}
	
	void Start () {
		switch( valueCalculationMode ) {
			case ValueCalculationMode.PunishHighrises:
				TheValueCalculation = CalculateRevenueBasedOnFloors;
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
