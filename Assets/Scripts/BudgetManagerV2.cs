using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class BudgetManagerV2: MonoBehaviour {

	[Header("Status")]
	public float money;
	public float revenue;
	private float countdown;

	[Header("Rules")]
	public float timePerPaycheck;
	public int paychecksPerConstruction;
	public float costToBuildIncreaseRate;

	[Header("Setup")]
	public Text moneyText;
	public Text revenueText;
	public Text countdownText;
	public Slider countdownSlider;
	public Color positiveCashflowColor;
	public Color negativeCashflowColor;
	public Transform buildingPrefab;
	public Vector3 startGrid;
	public Vector2 endGrid;
	public Vector2 incrementGrid;

	[Header("Data")]
	public List<BuildingV2> buildings;

	private int maxX;
	private int maxZ;
	private int numBuiltBuildings;
	private int paychecks;

	public bool purchase( float price, BuildingV2 newBuilding ) {
		if( money > price ) {
			money -= price;
			numBuiltBuildings++;
			updateCostToBuildForPlots( newBuilding );
			updateUI();
			return true;
		}
		return false;
	}

	public BuildingV2 getBuilding( int x, int z ) {
		if( ( 0 < z && z <= maxZ ) && ( 0 < z && z <= maxZ ) )
			return buildings[ z + z*maxX ];
		else
			return null;
	}

	public Vector2 calculateLocation( int ndex ) {
		Vector2 returnVect;
		returnVect.y = ndex % ( maxZ + 1 );
		returnVect.x = (ndex - returnVect.y) / ( maxZ + 1 );
		return returnVect;
	}


	// Use this for initialization
	void Start () {
		countdown = timePerPaycheck;
		calculateRevenue();
		updateUI();
		numBuiltBuildings = 0;
		generateGridOfBuildings();
	}
	
	// Update is called once per frame
	void Update () {
		updateCountdown();
	}

	void calculateRevenue() {
		revenue = 0;
		foreach( BuildingV2 thisBuilding in buildings ) {
			if( thisBuilding.IsBuilt )
				revenue += thisBuilding.revenue;
		}
	}

	void updateUI() {
		moneyText.text = "$" + money;

		if( revenue >= 0 ) {
			revenueText.text = "+$" + revenue;
			revenueText.color = positiveCashflowColor;
		}
		else {
			revenueText.text = "-$" + Mathf.Abs( revenue );
			revenueText.color = negativeCashflowColor;
		}
		countdownText.text = ( paychecks % paychecksPerConstruction + 1 ) + "/" + paychecksPerConstruction ;

	}

	void updateCountdown() {
		countdown -= Time.deltaTime;
		if( countdown < 0 ) {
			countdown = timePerPaycheck;
			applyPaycheck();
		}
		countdownSlider.value = (timePerPaycheck - countdown)/timePerPaycheck;

	}

	void applyPaycheck() {
		paychecks++;
		if( paychecks%paychecksPerConstruction == 0) {
			applyConstruction();
		}
		calculateRevenue();
		money += revenue;


		foreach( BuildingV2 thisBuilding in buildings ) {
			if( thisBuilding.IsBuilt ) {
				thisBuilding.age++;
			}
		}

		updateUI();
	}

	void applyConstruction() {
		foreach( BuildingV2 thisBuilding in buildings ) {
			thisBuilding.buildFloor();
		}
	}

	void updateCostToBuildForPlots(BuildingV2 theNewBuilding) {
		// get building index
		// I used a Lambda Expression, paraphrased from 
		// http://forum.unity3d.com/threads/c-having-trouble-using-find-on-a-list.90719/#post-587182
		int bldNdx = buildings.FindIndex( thisBuilding => thisBuilding == theNewBuilding );
		Vector2 bldPos = calculateLocation( bldNdx );
		Debug.Log( "ndex:" + bldNdx + " x,y:" + bldPos );
		int x = Mathf.RoundToInt( bldPos.x );
		int y = Mathf.RoundToInt( bldPos.y );
		// alert neighbors
		BuildingV2 buildingToUpdate;
		buildingToUpdate = getBuilding( x + 1, y );
//		if( buildingToUpdate != null )
			buildingToUpdate.updateCostToBuild( costToBuildIncreaseRate );

		buildingToUpdate = getBuilding( x - 1, y );
//		if( buildingToUpdate != null )
			buildingToUpdate.updateCostToBuild( costToBuildIncreaseRate );

		buildingToUpdate = getBuilding( x, y + 1);
//		if( buildingToUpdate != null )
			buildingToUpdate.updateCostToBuild( costToBuildIncreaseRate );

		buildingToUpdate = getBuilding( x, y - 1 );
//		if( buildingToUpdate != null )
			buildingToUpdate.updateCostToBuild( costToBuildIncreaseRate );
	}

	void generateGridOfBuildings() {
		for( float posX = startGrid.x; posX <= endGrid.x; posX += incrementGrid.x ) {
			maxX++;
			maxZ = 0; // because I'm a shitty coder. This way maxY isn't massive
			for( float posZ = startGrid.z; posZ <= endGrid.y; posZ += incrementGrid.y ) {
//				Debug.Log( "Creating a building at " + posX + ", " + posZ );
				maxZ++;
				Transform newBuilding = Instantiate( buildingPrefab,
				                                   new Vector3( posX, startGrid.y, posZ ),
				                                   Quaternion.identity ) as Transform;
				buildings.Add( newBuilding.GetComponent<BuildingV2>() );
			}
		}
		maxX--; // So arrays aren't off-by-one
		maxZ--;
	}
}