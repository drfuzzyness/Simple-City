using UnityEngine;
using System.Collections;

public class Floor : MonoBehaviour {
	
	public Building building;
	public Vector3 size;
	public Vector3 rightfulLocalPosition;
	private BuildingUI bldingUI;

	// Use this for initialization
	void Start () {
		if( building == null) {
			Debug.LogError( gameObject.name + " can't get parent BuildingUI." );
		}
		rightfulLocalPosition = transform.localPosition;
	}
	
	void OnMouseDown() {
		if( CheckIfMouseUnobstructed() ) {
			bldingUI.MouseDown();
		}
	}
	void OnMouseEnter() {
		if( CheckIfMouseUnobstructed() ) {
			bldingUI.MouseEnter();
		}
	}
	void OnMouseOver() {
		if( CheckIfMouseUnobstructed() ) {
			if( Input.GetMouseButtonDown(1) ) {
				bldingUI.MouseDown();
			}
		}
	}
	void OnMouseExit() {
// 		if( CheckIfMouseUnobstructed() ) {
			bldingUI.MouseExit();
// 		}
	}
	
	public static bool CheckIfMouseUnobstructed() {
// 		Debug.Log(  UnityEngine.EventSystems.EventSystem.current.IsPointerOverGameObject() );
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
