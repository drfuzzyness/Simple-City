using UnityEngine;
using System.Collections;

public class Floor : MonoBehaviour {
	
	public Building building;
	public Transform highRes;
	public Transform lowRes;
	public Vector3 size;
	public Vector3 rightfulLocalPosition;

	// Use this for initialization
	void Start () {
		if( building == null) {
			Debug.LogError( gameObject.name + " can't get parent BuildingUI." );
		}
		rightfulLocalPosition = transform.localPosition;
	}
	
	void OnMouseDown() {
		if( CheckIfMouseUnobstructed() ) {
			building.buildingUI.MouseDown();
		}
	}
	void OnMouseEnter() {
		if( CheckIfMouseUnobstructed() ) {
			building.buildingUI.MouseEnter();
		}
	}
	void OnMouseOver() {
		if( CheckIfMouseUnobstructed() ) {
			if( Input.GetMouseButtonDown(1) ) {
				building.buildingUI.MouseDown();
			}
		}
	}
	void OnMouseExit() {
// 		if( CheckIfMouseUnobstructed() ) {
			building.buildingUI.MouseExit();
// 		}
	}
	
	public static bool CheckIfMouseUnobstructed() {
// 		Debug.Log(  UnityEngine.EventSystems.EventSystem.current.IsPointerOverGameObject() );
// 		Ray ray = Camera.main.ScreenPointToRay( Input.mousePosition );
// 		RaycastHit hit = new RaycastHit();
// 		Debug.Log( hit.collider );	
		return !UnityEngine.EventSystems.EventSystem.current.IsPointerOverGameObject(); 
		// solution via via http://answers.unity3d.com/questions/822273/how-to-prevent-raycast-when-clicking-46-ui.html
		
// 		Ray ray = Camera.main.ScreenPointToRay( Input.mousePosition );
// 		RaycastHit hit = new RaycastHit();
// 		
// 		if( Physics.Raycast( ray, out hit ) ) {
// 			Debug.Log( hit.collider );
// 			return hit.collider.tag == "Floor" || hit.collider.tag == "Building";
// 		}
// 		return false;
	}
	
}
