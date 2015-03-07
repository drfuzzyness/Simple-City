using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class BuildingPosition : MonoBehaviour {

	public Text pricetag;

	// Use this for initialization
	void Start () {
		updatePricetagDisplay();
	}

	public void updatePricetagDisplay() {
		pricetag.text = "$" + transform.parent.GetComponent<Building>().costToBuild;
	}

	void OnMouseDown() {
		if( transform.parent.GetComponent<Building>().createBuilding() ) {
			Destroy( gameObject );
	//		gameObject.SetActive( false );
		}
	}
}
