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
		if( Input.GetMouseButtonDown( 0 ) && Floor.CheckIfMouseUnobstructed() ) {
			Ray clickRay = Camera.main.ScreenPointToRay( Input.mousePosition );
			RaycastHit hit = new RaycastHit();
			if( Physics.Raycast( clickRay, out hit ) && hit.collider.tag == "Terrain" ) {
				Collider[] cols = Physics.OverlapSphere( hit.point,buildingPrefab.baseFloorPrefab.GetComponent<BoxCollider>().size.x * 1.5f );
				bool doBuild = true;
				foreach( Collider thisCol in cols ) {
					if( thisCol.tag == "Building" || thisCol.tag == "Floor" ) {
						Debug.Log( "Too close to " + thisCol );
						doBuild = false;
						PlayerUIManager.instance.IncorrectPlacement();
					}
				}
				if( doBuild ) {
					switch( buildMode ) {
						case BuildMode.ClickOnPlane:
								// click hit
								if( hit.collider.tag == "Terrain" ) {
									// try to build a building on terrain
									if( BudgetManager.instance.Purchase( BudgetManager.instance.baseValue ) ) {
										Building newBuild = Instantiate( buildingPrefab, hit.point, Quaternion.identity ) as Building;
										newBuild.CreateBuilding();
										BuildingManager.instance.buildings.Add( newBuild );
									}
								}
							break;
						case BuildMode.ClickOnMesh:
							if( BudgetManager.instance.Purchase( BudgetManager.instance.baseValue ) ) {
								Vector3 normal = GetNormalFromRay( clickRay );
								Quaternion rotation = Quaternion.LookRotation( normal );
								rotation *= Quaternion.Euler( Vector3.right * 90f);
								Debug.Log( rotation );
								Building bld = Instantiate( buildingPrefab, hit.point + normal.normalized * 2f, rotation ) as Building;
								bld.transform.SetParent( hit.transform );
								BuildingManager.instance.buildings.Add( bld );
							}
							break;		
					}
				}
			}
		}
		// buttons
	}
	public static Vector3 GetNormalFromRay( Ray ray ) {
		RaycastHit hit = new RaycastHit();
		if ( Physics.Raycast( ray, out hit) ) {
			MeshCollider meshCollider = hit.collider as MeshCollider;
			Mesh mesh = meshCollider.sharedMesh;
			Vector3[] vertices = mesh.vertices;
			int[] triangles = mesh.triangles;
			Vector3 p0 = vertices[triangles[hit.triangleIndex * 3 + 0]];
	        Vector3 p1 = vertices[triangles[hit.triangleIndex * 3 + 1]];
	        Vector3 p2 = vertices[triangles[hit.triangleIndex * 3 + 2]];
			Transform hitTransform = hit.collider.transform;
	        p0 = hitTransform.TransformPoint(p0);
	        p1 = hitTransform.TransformPoint(p1);
	        p2 = hitTransform.TransformPoint(p2);
			return Vector3.Cross( (p1 - p0), (p2 - p0) );
		}
		return Vector3.zero;
	}
	
}
