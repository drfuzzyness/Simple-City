using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class BuildingUI : MonoBehaviour {

	public Text revText;
	
	private Building blding;
	private BuildingRevenue bldingRev;
	
	// Use this for initialization
	void Start () {
		blding = GetComponent<Building>();
		bldingRev = GetComponent<BuildingRevenue>();
	}
	
	// Update is called once per frame
	void Update () {
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
