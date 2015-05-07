using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class BuildingUI : MonoBehaviour {

	public Canvas overviewCanvas;
	public Text revText;
	public Color positiveCashflowColor;
	public Color neutralColor;
	public Color negativeCashflowColor;
	public MeshRenderer buildingPlot;
	public Material hoverMaterial;
	public Material invisibleMaterial;
	private Building blding;
	
	private BuildingRevenue bldingRev;
	
	
	
	void Start () {
		blding = GetComponent<Building>();
		bldingRev = GetComponent<BuildingRevenue>();
	}
	
	void Update () {
		if( bldingRev != null )
			UpdateMoneyCanvas();
	}
	
	public void MouseDown() {
		if( !blding.isBuilt) {
			if( bldingRev.BuyBuilding() ) {
				buildingPlot.gameObject.SetActive( false );
// 				gameObject.SetActive( false );
			}
		}
	}

	
	public void MouseEnter() {
		if( !blding.isBuilt ){
			buildingPlot.material = hoverMaterial;
// 			overviewCanvas.gameObject.SetActive(true);
		} else if( blding.isBuilt && blding.isRunning ) {
			overviewCanvas.gameObject.SetActive( true );
			Debug.Log("sup");
		}
	}
	
	public void MouseExit() {
		if( !blding.isBuilt ){
			buildingPlot.material = invisibleMaterial;
// 			buildingPlot.GetComponent<Renderer>().material
// 			overviewCanvas.gameObject.SetActive(false);
		} else if( blding.isBuilt && blding.isRunning ) {
			overviewCanvas.gameObject.SetActive( false );
			Debug.Log("bye");
		}
	}
	
	void UpdateMoneyCanvas() {
		if( blding.isRunning ) {
			if( bldingRev.revenue >= 0 ) {
				revText.text = "$" + bldingRev.revenue;
				revText.color = positiveCashflowColor;
			}
			else {
				revText.text = "-$" + Mathf.Abs( bldingRev.revenue );
				revText.color = negativeCashflowColor;
			}
		} else if ( !blding.isBuilt ) {
			revText.color = neutralColor;
			revText.text = "$" + bldingRev.costToBuild;
		}
	}

}
