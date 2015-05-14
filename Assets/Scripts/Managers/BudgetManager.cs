using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class BudgetManager : MonoBehaviour {
	
	[Header("Status")]
	public bool isPaused;	
	public float money;
	public float sumRevenue;
	private float countdown;

	[Header("Time")]
	public float timePerPaycheck;
	public int paychecksPerConstruction;
	
	
	public enum IncreaseRate { Zero, Linear, Exponential };
	private delegate void IncreaseRateFunc();
	private IncreaseRateFunc increaseRateFunc;
	
	[Header("Base Value")]
	public float landValue;
	private float originalLandValue;
	public IncreaseRate valueIncreaseRate;
	public float linearValuePerBuilding;
	public float exponent;
	
	
	public enum ValueCalculationMode {Neighbors, PunishHighrises };
	[Header("Building Calculation Mode")]
	public ValueCalculationMode valueCalculationMode;
	public float rentToValueConversion = 5f;
	[Header("Building Calculation Mode: Neighbors")]
	public float valuePerNeighbor;
	
	[Header("Building Calculation Mode: Punish Highrises")]
	public float perFloorRent;
	public float negativePerFloorMultiplier; // used to punish high-rise buildings
	public int numPositiveFloors;
	[Header("Build Floors")]
// 	public IncreaseRate floorsIncreaseRate;
	public bool buildFloorsEveryConstruction;
// 	public float newFloorLinear = 5f;
	public float valueToNewFloorConversion;

	[Header("UI Display")]

	public Text moneyText;
	public Text revenueText;
	public Text valueText;
	public Text countdownText;
	public Text pausedText;
	public Slider countdownSlider;
	public Color positiveCashflowColor;
	public Color negativeCashflowColor;

	public static BudgetManager instance;

	private int numOwnedBuildings;
	private int paychecks;
	

	public bool Purchase( float price ) {
		if( money >= price ) {
			money -= price;
			return true;
		}
		PlayerUIManager.instance.NotEnoughtMoney();
		return false;
	}

	void Awake() {
		instance = this;
	}


	// Use this for initialization
	void Start () {
		isPaused = false;
		countdown = timePerPaycheck;
		CalculateRevenue();
		UpdateUI();
		originalLandValue = landValue;
	}
	
	// Update is called once per frame
	void Update () {
		switch( valueIncreaseRate ) {
			case IncreaseRate.Linear:
				increaseRateFunc = UpdateMarketValuesLinear;
				break;
			case IncreaseRate.Exponential:
				increaseRateFunc = UpdateMarketValuesExponential;
				break;
			case IncreaseRate.Zero:
				increaseRateFunc = null;
				break;
		}
		
		UpdateCountdown();
		UpdateOwnedAndRunningBuildings();
		increaseRateFunc(); // changes based on mode
		UpdateCostToBuildForPlots();
		CalculateRevenue();
		foreach( Building thisBuilding in BuildingManager.instance.buildings ) {
// 			Debug.Log("Applying baseValue of " + baseValue + " to " + thisBuilding);
			thisBuilding.buildingRevenue.landValue = landValue;
		}
		UpdateUI();
		if( money < 0 ) {
			PlayerUIManager.instance.GameOver();
		}
	}

	void CalculateRevenue() {
		sumRevenue = 0f;
		foreach( Building thisBuilding in BuildingManager.instance.buildings ) {
			if( thisBuilding.isRunning && thisBuilding.buildingRevenue.isOwned )
				sumRevenue += thisBuilding.buildingRevenue.revenue;
		}
	}

	void UpdateUI() {
		moneyText.text = "$" + money;

		if( sumRevenue >= 0 ) {
			revenueText.text = "+$" + sumRevenue;
			revenueText.color = positiveCashflowColor;
		}
		else {
			revenueText.text = "-$" + Mathf.Abs( sumRevenue );
			revenueText.color = negativeCashflowColor;
		}
		valueText.text = "$" + landValue;
		countdownText.text = ( paychecks % paychecksPerConstruction + 1 ) + "/" + paychecksPerConstruction ;
		if( isPaused ) {
			pausedText.text = "GAME PAUSED";
		} else {
			pausedText.text = "";
		}

	}

	void UpdateCountdown() {
		if( !isPaused ) {
			countdown -= Time.deltaTime;
		}
		if( countdown < 0 ) {
			countdown = timePerPaycheck;
			ApplyPaycheck();
		}
		countdownSlider.value = (timePerPaycheck - countdown)/timePerPaycheck;

	}

	void ApplyPaycheck() {
		paychecks++;
		if( buildFloorsEveryConstruction && paychecks%paychecksPerConstruction == 0) {
			BuildFloorOnAll();
		}
		CalculateRevenue();
		money += sumRevenue;


		foreach( Building thisBuilding in BuildingManager.instance.buildings ) {
			if( thisBuilding.isRunning ) {
				thisBuilding.age++;
			}
		}
	}

	void BuildFloorOnAll() {
		foreach( Building thisBuilding in BuildingManager.instance.buildings ) {
			if( thisBuilding.isRunning )
				thisBuilding.BuildFloor();
		}
	}
	
	void UpdateMarketValuesExponential() {
		landValue = originalLandValue * Mathf.Pow( exponent, numOwnedBuildings );
		
	}
	
	void UpdateMarketValuesLinear() {
		landValue = originalLandValue + linearValuePerBuilding * numOwnedBuildings;

	}

	void UpdateCostToBuildForPlots() {
		foreach( Building thisBuilding in BuildingManager.instance.buildings ) {
			if( !thisBuilding.isBuilt ) {
// 				thisBuilding.GetComponent<BuildingRevenue>().UpdateCostToBuild( costToBuildIncreaseRate );
			}
		}
	}
	
	void UpdateOwnedAndRunningBuildings() {
		numOwnedBuildings = 0;
		foreach( Building thisBuilding in BuildingManager.instance.buildings ) {
			if( thisBuilding.isRunning && thisBuilding.buildingRevenue.isOwned ) {
				
			}
		}
	}
}