using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class BuildingUI : MonoBehaviour {

	public Canvas overviewCanvas;
	public Text revText;
	public Color positiveCashflowColor;
	public Color negativeCashflowColor;
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
	
	void UpdateMoneyCanvas() {
		if( bldingRev.revenue >= 0 ) {
			revText.text = "$" + bldingRev.revenue;
			revText.color = positiveCashflowColor;
		}
		else {
			revText.text = "-$" + Mathf.Abs( bldingRev.revenue );
			revText.color = negativeCashflowColor;
		}
	}

}
