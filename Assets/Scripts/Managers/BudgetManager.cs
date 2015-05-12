using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class BudgetManager : MonoBehaviour {

	public bool isPaused;	
	public float money;
	public float sumRevenue;
	private float countdown;

	[Header("Balance")]
	public float timePerPaycheck;
	public int paychecksPerConstruction;
	public float baseValue;
	private float originalBaseValue;
	public float baseValuePerBuilding;
	public bool buildFloorsEveryConstruction;

	[Header("UI Display")]

	public Text moneyText;
	public Text revenueText;
	public Text countdownText;
	public Slider countdownSlider;
	public Color positiveCashflowColor;
	public Color negativeCashflowColor;

	public static BudgetManager instance;

	private int numOwnedBuildings;
	private int paychecks;
	

	public bool Purchase( float price ) {
		if( money > price ) {
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
		originalBaseValue = baseValue;
	}
	
	// Update is called once per frame
	void Update () {
		UpdateCountdown();
		UpdateOwnedAndRunningBuildings();
// 		UpdateBaseValuesLinear();
		UpdateCostToBuildForPlots();
		CalculateRevenue();
		UpdateUI();
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
		countdownText.text = ( paychecks % paychecksPerConstruction + 1 ) + "/" + paychecksPerConstruction ;

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
		CalculateRevenue();
	}
	
	void UpdateBaseValuesLinear() {
		baseValue = originalBaseValue + baseValuePerBuilding * numOwnedBuildings;
		foreach( Building thisBuilding in BuildingManager.instance.buildings ) {
			thisBuilding.buildingRevenue.baseValue = baseValue;
		}
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