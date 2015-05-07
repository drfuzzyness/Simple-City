using UnityEngine;
using System.Collections;

public class Floor : MonoBehaviour {
	
	public Building building;
	private BuildingUI bldingUI;

	// Use this for initialization
	void Start () {
		if( building == null) {
			Debug.LogError( gameObject.name + " can't get parent BuildingUI." );
		}
		bldingUI = building.GetComponent<BuildingUI>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void OnMouseDown() {
		bldingUI.MouseDown();
	}
	void OnMouseEnter() {
		bldingUI.MouseEnter();
	}
	void OnMouseExit() {
		bldingUI.MouseExit();
	}
	
	
}
