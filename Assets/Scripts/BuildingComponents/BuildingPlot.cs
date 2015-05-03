using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class BuildingPlot : MonoBehaviour {

	public Text pricetag;
	public Material hoverMaterial;
	public Material passiveMaterial;
	private BuildingRevenue bldRev;

	// Use this for initialization
	void Start () {
		bldRev = transform.parent.GetComponent<BuildingRevenue>();
		updatePricetagDisplay();
	}

	public void updatePricetagDisplay() {
		pricetag.text = "$" + bldRev.costToBuild;
	}

	void OnMouseDown() {
		if( bldRev.BuyBuilding() ) {
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
