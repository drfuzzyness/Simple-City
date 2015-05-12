using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SphereOfInfluence : MonoBehaviour {
	
	public enum InfluenceMode { AllInRadius, ScaledWithDistance };
	public enum CalculationMode { AverageValue, LinearBuildings };
	
	public float radius;
	public List<Building> neighbors;
	private Building blding;
	
	/*
	For this, each building calculates its own market value based on the neighbors.
	Buildings influence eachother by changing their own respective rates or values.
	*/
	void Awake() {
// 		blding = GetComponent<Building>();
	}
	
	void Start () {
	
	}
	
// 	void OnDrawGizmos() {
// 		if( blding.isRunning ) {
// 			switch( debugVisualizationMode ) {
// 				case VisualizationsMode.Spheres:
// 					Gizmos.DrawWireSphere( transform.position, radius );
// 					break;
// 				case VisualizationsMode.Connections:
// 					foreach( Building thisBld in neighbors) {
// 						Gizmos.DrawLine( transform.position, thisBld.transform.position );
// 					}
// 					break;
// 			}
// 			
// 		}
// 	}
	
	// Update is called once per frame
	void Update () {
		UpdateNeighborsList();	
	}
	
	 public void UpdateNeighborsList() {
		Collider[] hitColliders = Physics.OverlapSphere(transform.position, radius);
		neighbors = new List<Building>();
		foreach( Collider col in hitColliders ) {
			if( col.tag == "Building" && col.gameObject != gameObject ) {
				Building building = col.GetComponent<Building>();
				if( building.isRunning ) {
					neighbors.Add( building );
				}
			}
		}
	}
	
	public float AverageRevenue() {
		float sum = 0f;
		foreach( Building building in neighbors) {
			sum += building.GetComponent<BuildingRevenue>().revenue;
		}
		if( neighbors.Count == 0f ) {
			Debug.Log( "No neighbors found in neighbors list. Might need to UpdateNeighborsList" );
			return 0f;
		}
		return ( sum/neighbors.Count );
	}
	
	
	
	
}
