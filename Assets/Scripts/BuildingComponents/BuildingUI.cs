using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;

public class BuildingUI : MonoBehaviour {

	
	public enum NeighborVisualization { Off, Spheres, Connections };
	public enum MouseAction { Ignore, BuildFloor, Info };
	
	[Header("Controls")]
	public MouseAction leftMouseAction;
	public MouseAction rightMouseAction;
	public NeighborVisualization neighborVisualization;	
	[Header("Overview Panel")]	
	public Transform UITransform;
	
	public Text revText;
	[Header("Details Panel")]
	public Text detTitle;
	public Text detFloors;
	public Text detRevenue;
	public Text detValue;
	public Button buyButton;
	public Button addFloorButton;
	
	[Header("Colors")]
	public Color positiveCashflowColor;
	public Color neutralColor;
	public Color negativeCashflowColor;
	public MeshRenderer buildingPlot;
	public Material hoverMaterial;
	public Material invisibleMaterial;
	public Material lineRenderMat;
	
	
	private Building blding;
	private bool showMoreInfoDisplay;
	[HideInInspector]
	public Transform overviewCanvas;
	[HideInInspector]
	public Transform detailsCanvas;
	
	
	
	void Start () {
		blding = GetComponent<Building>();
		overviewCanvas = UITransform.GetChild(0);
		detailsCanvas = UITransform.GetChild(1);
	}
	
	void Update () {
		if( blding.buildingRevenue != null )
			UpdateMoneyCanvas();
	}
	
// 	void OnPostRender() {
// 		DrawSphereVisualization();	
// 	}
	
	
	public void DrawSphereVisualization() {
		if( blding.isRunning ) {
// 			Debug.Log( "Trying to visualize" );
			switch( neighborVisualization ) {
				case NeighborVisualization.Spheres:
					Gizmos.DrawWireSphere( transform.position, blding.sphereOfInfluence.radius );
					break;
				case NeighborVisualization.Connections:
// 					Debug.Log("y");
					foreach( Building thisBld in blding.sphereOfInfluence.neighbors) {
// 						Gizmos.DrawLine( transform.position, thisBld.transform.position );
						Color bldColor = negativeCashflowColor;
// 						Debug.Log("z");
						if( this.GetComponent<BuildingRevenue>().revenue >= 0 ) {
							bldColor = positiveCashflowColor;
						}
// 						Debug.Log("a");
						SimpleLineRenderer.instance.RenderLine( thisBld.transform.position,
													   transform.position,
													   Color.red, Color.white );
// 					    Debug.Log("b");
					}
					break;
				default: 
					break;
			}
			
		}
	}
	
	public void MouseDown() {
		if( !blding.isBuilt) {
			blding.buildingRevenue.BuyNewBuilding();
		} else if( blding.isRunning ) {
			if( Input.GetMouseButtonDown( 0 ) ) {
				Debug.Log("lmb"); // leftclick
				switch( leftMouseAction ) {
					case MouseAction.BuildFloor:
						blding.buildingRevenue.AddFloor();
						break;
					case MouseAction.Info:
						ToggleDisplayDetails();
						break;
					default: 
						break;
				}
			}
			if ( Input.GetMouseButtonDown( 1 ) ) { // rightclick
				Debug.Log("rmb");
				switch( rightMouseAction ) {
					case MouseAction.BuildFloor:
						blding.buildingRevenue.AddFloor();
						break;
					case MouseAction.Info:
						ToggleDisplayDetails();
						break;
					default: 
						break;
				}
			}
		}
	}

	
	public void MouseEnter() {
		if( !blding.isBuilt ){
			buildingPlot.material = hoverMaterial;
			overviewCanvas.gameObject.SetActive(true);
		} else if( blding.isBuilt && blding.isRunning ) {
			overviewCanvas.gameObject.SetActive( true );
		}
	}
	
	public void MouseExit() {
		if( !blding.isBuilt ){
			buildingPlot.material = invisibleMaterial;
			overviewCanvas.gameObject.SetActive(false);
		} else if( blding.isBuilt && blding.isRunning ) {
			overviewCanvas.gameObject.SetActive( false );
// 			showMoreInfoDisplay = false;
		}
	}
	
	void ToggleDisplayDetails() {
		if( showMoreInfoDisplay ) {
			showMoreInfoDisplay = false;
		} else {
			showMoreInfoDisplay = true;
			StartCoroutine( MoreInfoDisplay() );
		}
	}
	
	IEnumerator MoreInfoDisplay() {
		detailsCanvas.gameObject.SetActive( true );
		BudgetManager.instance.isPaused = true;
		// animate to display
		while( showMoreInfoDisplay ) {
			UpdateDescriptionCanvas();
			yield return null;
		}
		BudgetManager.instance.isPaused = false;
		detailsCanvas.gameObject.SetActive( false );
		// animate away display
	}
	
	void UpdateMoneyCanvas() {
		if( blding.isRunning ) {
			if( blding.buildingRevenue.revenue >= 0 ) {
				revText.text = "$" + blding.buildingRevenue.revenue;
				revText.color = positiveCashflowColor;
			}
			else {
				revText.text = "-$" + Mathf.Abs( blding.buildingRevenue.revenue );
				revText.color = negativeCashflowColor;
			}
		} else if ( !blding.isBuilt ) {
			revText.color = neutralColor;
			revText.text = "$" + blding.buildingRevenue.combinedValue;
		}
	}
	
	void UpdateDescriptionCanvas() {
		switch( blding.buildingExports.type ) {
			case BuildingExports.BuildingType.Commercial:
				detTitle.text = "Commercial Building";
				break;
			case BuildingExports.BuildingType.Industrial:
				detTitle.text = "Industrial Building";
				break;
			default:
				detTitle.text = "Residential Building";
				break;
		}
		
		detFloors.text = blding.floors.Count.ToString();
		
		RenderMoneyTextPretty( blding.buildingRevenue.revenue, detRevenue );
		RenderMoneyTextPretty( blding.buildingRevenue.combinedValue, detValue );
		
		if( blding.buildingRevenue.isOwned ) {
			buyButton.gameObject.SetActive( false );
			addFloorButton.gameObject.SetActive( true );
		} else {
			buyButton.gameObject.SetActive( true );
			addFloorButton.gameObject.SetActive( false );
		}
			
	}
	
	public static void RenderMoneyTextPretty( float value, Text target ) {
		if( value >= 0 ) {
			target.text = "$" + value;
		}
		else {
			target.text = "-$" + Mathf.Abs( value );
		}
	}

}
