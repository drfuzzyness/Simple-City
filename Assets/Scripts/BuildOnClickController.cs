using UnityEngine;
using System.Collections;

public class BuildOnClickController : MonoBehaviour {

	public Building buildingPrefab;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		// click
		if( Input.GetMouseButtonDown( 0 ) ) {
			Ray clickRay = Camera.main.ScreenPointToRay( Input.mousePosition );
			RaycastHit clickRayHit = new RaycastHit();
			if( Physics.Raycast( clickRay, out clickRayHit ) ) {
				// click hit
				if( clickRayHit.collider.tag == "Terrain" ) {
					// try to build a building on terrain
					Building newBuild = Instantiate( buildingPrefab, clickRayHit.point, Quaternion.identity ) as Building;
					BuildingManager.instance.buildings.Add( newBuild );
				}

			}
		}
		// buttons
	}
}
