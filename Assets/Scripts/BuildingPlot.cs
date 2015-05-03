using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class BuildingPosition : MonoBehaviour {

	public Text pricetag;
	public Material hoverMaterial;
	public Material passiveMaterial;

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

	void OnMouseEnter() {
		GetComponent<MeshRenderer>().material = hoverMaterial;
		pricetag.gameObject.SetActive(true);
	}
	void OnMouseExit() {
		pricetag.gameObject.SetActive(false);
		GetComponent<MeshRenderer>().material = passiveMaterial;
	}
}
