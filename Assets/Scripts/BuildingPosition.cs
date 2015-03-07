using UnityEngine;
using System.Collections;

public class BuildingPosition : MonoBehaviour {
	

	void OnMouseDown() {
		Debug.Log("bae");
		transform.parent.GetComponent<Building>().createBuilding();
		Destroy( gameObject );
	}
}
