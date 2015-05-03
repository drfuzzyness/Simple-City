using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class CityGridGenerator : MonoBehaviour {

	[Header("Setup")]
	public Transform buildingPrefab;
	public Vector2 buildingsGrid;
	public Vector3 sizeOfBuilding;

	private int maxX, maxY;
	private int numBuiltBuildings;

	public Building getBuilding( int x, int y ) {
		if( ( 0 < x && x <= maxX ) && ( 0 < y && y <= maxY ) )
			return BuildingManager.instance.buildings[ y + x * maxY ];
		else {
			Debug.LogError( "Building does not exist at " + x + ", " + y );
			return null;
		}
	}


	// Use this for initialization
	void Start () {
		maxX = Mathf.FloorToInt( buildingsGrid.x );
		maxY = Mathf.FloorToInt( buildingsGrid.y );
		numBuiltBuildings = 0;
		GenerateGridOfBuildings();
	}
	
	// Update is called once per frame
	void Update () {
	}


	void ApplyConstruction() {
		foreach( Building thisBuilding in BuildingManager.instance.buildings ) {
			thisBuilding.BuildFloor();
		}
	}

	void GenerateGridOfBuildings() {
		for( float x = 0; x <= buildingsGrid.x; x++ ) {
			for( float y = 0; y <= buildingsGrid.y; y++ ) {
				Vector3 pos = new Vector3( transform.position.x + x * sizeOfBuilding.x,
				                          transform.position.y,
				                          transform.position.z + y * sizeOfBuilding.z );
				Transform newBuilding = Instantiate( buildingPrefab, pos, transform.rotation ) as Transform;
				BuildingManager.instance.buildings.Add( newBuilding.GetComponent<Building>() );
			}
		}
	}
}