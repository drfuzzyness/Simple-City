using UnityEngine;
using System.Collections;



public class BuildOnClickController : MonoBehaviour {
	
	public enum BuildMode { ClickOnPlane, ClickOnMesh };
	public BuildMode buildMode;
	public Building buildingPrefab;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		// click
		if( Input.GetMouseButtonDown( 0 ) ) {
			Ray clickRay = Camera.main.ScreenPointToRay( Input.mousePosition );
			RaycastHit hit = new RaycastHit();
			if( Physics.Raycast( clickRay, out hit ) ) {
			switch( buildMode ) {
					case BuildMode.ClickOnPlane:
							// click hit
							if( hit.collider.tag == "Terrain" ) {
								// try to build a building on terrain
								Building newBuild = Instantiate( buildingPrefab, hit.point, Quaternion.identity ) as Building;
								BuildingManager.instance.buildings.Add( newBuild );
							}
						break;
					case BuildMode.ClickOnMesh:
						Vector3 normal = Planet.GetNormalFromRay( clickRay );
						Quaternion rotation = Quaternion.LookRotation( normal );
						rotation *= Quaternion.Euler( Vector3.right * 90f);
						Debug.Log( rotation );
						Building bld = Instantiate( buildingPrefab, hit.point + normal.normalized * 2f, rotation ) as Building;
						bld.transform.SetParent( hit.transform );
						BuildingManager.instance.buildings.Add( bld );
						break;
							
				}
			}
		}
		// buttons
	}
}
