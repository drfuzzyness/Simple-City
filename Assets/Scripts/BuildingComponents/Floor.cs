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
		bldingUI = building.GetComponent<BuildingUI>();
		rightfulLocalPosition = transform.localPosition;
	}
	
	void OnMouseDown() {
		bldingUI.MouseDown();
	}
	void OnMouseEnter() {
		bldingUI.MouseEnter();
	}
	void OnMouseOver() {
		if( Input.GetMouseButtonDown(1) ) {
			bldingUI.MouseDown();
		}
	}
	void OnMouseExit() {
		bldingUI.MouseExit();
	}
	
	
}
