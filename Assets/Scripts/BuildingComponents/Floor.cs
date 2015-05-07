using UnityEngine;
using System.Collections;

public class Floor : MonoBehaviour {
	
	private BuildingUI bldingUI;

	// Use this for initialization
	void Start () {
		bldingUI = transform.parent.GetComponent<BuildingUI>();
		if( bldingUI == null) {
			Debug.LogError( gameObject.name + " can't get parent BuildingUI." );
		}
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
