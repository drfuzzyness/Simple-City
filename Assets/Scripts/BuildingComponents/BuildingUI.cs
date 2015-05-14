using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;

public class BuildingUI : MonoBehaviour {

	
	public enum NeighborVisualization { Off, Spheres, Connections };
	public enum MouseAction { Ignore, BuildFloor, Info };
	public enum OverviewDisplay { None, NewFloor, Revenue, TotalValue}
	
	[Header("Controls")]
	public MouseAction leftMouseAction;
	public MouseAction rightMouseAction;
	public NeighborVisualization neighborVisualization;	
	
	[Header("Overview Panel")]
	public OverviewDisplay overviewDisplayMode;
	private bool showOverviewDisplay;
	public Transform UITransform;
	
	public Text overviewText;
	public Button detailsButton;
	public Text overviewLabel; 
	
	[Header("Details Panel")]
	public bool showNewFloorInfo;
	public Text detTitle;
	public Text detFloors;
	public Text detRevenue;
	public Text detValue;
	public Text detFloorPrice;
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
		UpdateOverviewCanvas();
		if( showNewFloorInfo ) {
			detFloorPrice.gameObject.SetActive( true );
			addFloorButton.gameObject.SetActive( false );
		} else {
			detFloorPrice.gameObject.SetActive( false );
			addFloorButton.gameObject.SetActive( false );
		}
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
			Debug.Log("Building on Plot");
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
	
	public void ToggleDisplayDetails() {
		if( showMoreInfoDisplay ) {
			showMoreInfoDisplay = false;
		} else {
			showMoreInfoDisplay = true;
			StartCoroutine( DoMoreInfoDisplay() );
		}
	}
	
	public void ToggleOverviewDisplay() {
		if( showOverviewDisplay ) {
			showOverviewDisplay = false;
		} else {
			showMoreInfoDisplay = true;
			StartCoroutine( DoOverviewDisplay() );
		}
	}
	
	IEnumerator DoMoreInfoDisplay() {
		detailsCanvas.gameObject.SetActive( true );
// 		BudgetManager.instance.isPaused = true;
		// animate to display
		while( showMoreInfoDisplay ) {
			// keep canvas above ground
			UpdateDescriptionCanvas();
			yield return null;
			if( Input.GetMouseButtonDown(1) )
				showMoreInfoDisplay = false;
		}
// 		BudgetManager.instance.isPaused = false;
		detailsCanvas.gameObject.SetActive( false );
		// animate away display
	}
	
	IEnumerator DoOverviewDisplay() {
		while( showOverviewDisplay ) {
			UpdateOverviewCanvas();
			yield return null;
		}
		
	}
	
	void UpdateOverviewCanvas() {
		if( blding.isRunning ) {
			if( overviewDisplayMode != OverviewDisplay.None ) {
					overviewText.gameObject.SetActive( true );
					overviewLabel.gameObject.SetActive( true );
			}
			switch( overviewDisplayMode ) {
				case OverviewDisplay.NewFloor:
					overviewText.text = "$" + blding.buildingRevenue.floorConstructionCost;
					overviewText.color = overviewLabel.color = positiveCashflowColor;
					overviewLabel.text = "NEW FLOOR";
					break;
				case OverviewDisplay.Revenue:
					if( blding.buildingRevenue.revenue >= 0 ) {
						overviewText.text = "$" + blding.buildingRevenue.revenue;
						overviewText.color = overviewLabel.color = positiveCashflowColor;
						overviewLabel.text = "INCOME";
					}
					else {
						overviewText.text = "-$" + Mathf.Abs( blding.buildingRevenue.revenue );
						overviewText.color = overviewLabel.color = negativeCashflowColor;
						overviewLabel.text = "INCOME";
					}
					break;
				case OverviewDisplay.TotalValue:
					if( blding.buildingRevenue.combinedValue >= 0 ) {
						overviewText.text = "$" + blding.buildingRevenue.combinedValue;
						overviewText.color = overviewLabel.color = positiveCashflowColor;
						overviewLabel.text = "TOTAL VALUE";
					}
					else {
						overviewText.text = "-$" + Mathf.Abs( blding.buildingRevenue.combinedValue );
						overviewText.color = overviewLabel.color = negativeCashflowColor;
						overviewLabel.text = "TOTAL VALUE";
					}
					break;
				default:
					overviewText.gameObject.SetActive( false );
					overviewLabel.gameObject.SetActive( false );
					break;
			}
			
		} else if ( !blding.isBuilt ) {
			overviewText.color = overviewLabel.color = neutralColor;
			overviewText.text = "$" + blding.buildingRevenue.combinedValue;
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
		
		detFloorPrice.text = "$" + blding.buildingRevenue.floorConstructionCost;
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
