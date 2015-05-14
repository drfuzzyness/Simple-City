using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class CityGridGenerator : MonoBehaviour {

	public bool buildOnStart;
	private bool alreadyBuilt;	
	[Header("Setup")]
	public Transform buildingPrefab;
	public RoadBuilder roadBuilder;
	public Vector2 buildingsGrid;
	public Vector3 sizeOfBuilding;

	private int maxX, maxY;
// 	private int numBuiltBuildings;

	public Building getBuilding( int x, int y ) {
		if( ( 0 < x && x <= maxX ) && ( 0 < y && y <= maxY ) )
			return BuildingManager.instance.buildings[ y + x * maxY ];
		else {
			Debug.LogError( "Building does not exist at " + x + ", " + y );
			return null;
		}
	}

	void OnDrawGizmos() {
		Vector3 center = transform.position;
		center.x += buildingsGrid.x * sizeOfBuilding.x / 2;
		center.z += buildingsGrid.y * sizeOfBuilding.z / 2;
		Vector3 size = sizeOfBuilding;
		size.x *= buildingsGrid.x + 1;
		size.z *= buildingsGrid.y + 1;
		Gizmos.DrawWireCube( center, size );
	}

	// Use this for initialization
	void Start () {
		maxX = Mathf.FloorToInt( buildingsGrid.x );
		maxY = Mathf.FloorToInt( buildingsGrid.y );
// 		numBuiltBuildings = 0;
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

	public void GenerateGridOfBuildings() {
		for( float x = 0; x <= buildingsGrid.x; x++ ) {
			for( float y = 0; y <= buildingsGrid.y; y++ ) {
				Vector3 pos = new Vector3( transform.position.x + x * sizeOfBuilding.x,
				                          transform.position.y,
				                          transform.position.z + y * sizeOfBuilding.z );
				Transform newBuilding = Instantiate( buildingPrefab, pos, transform.rotation ) as Transform;
				BuildingManager.instance.buildings.Add( newBuilding.GetComponent<Building>() );
			}
		}
		alreadyBuilt = true;
	}
}