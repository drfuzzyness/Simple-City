using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class BuildingUI : MonoBehaviour {

	public Transform UITransform;
	
	public Text revText;
	public Color positiveCashflowColor;
	public Color neutralColor;
	public Color negativeCashflowColor;
	public MeshRenderer buildingPlot;
	public Material hoverMaterial;
	public Material invisibleMaterial;
	public Material lineRenderMat;
	public enum NeighborVisualization { Off, Spheres, Connections };
	public enum MouseAction { Ignore, BuildFloor, Info };
	
	public MouseAction leftMouseAction;
	public MouseAction rightMouseAction;
	public NeighborVisualization neighborVisualization;
	private Building blding;
	private SphereOfInfluence sphrinf;
	private BuildingRevenue bldingRev;
	private bool showMoreInfoDisplay;
	[HideInInspector]
	public Transform overviewCanvas;
	[HideInInspector]
	public Transform detailsCanvas;
	
	
	
	void Start () {
		blding = GetComponent<Building>();
		bldingRev = GetComponent<BuildingRevenue>();
		sphrinf = GetComponent<SphereOfInfluence>();
		overviewCanvas = UITransform.GetChild(0);
		detailsCanvas = UITransform.GetChild(1);
	}
	
	void Update () {
		if( bldingRev != null )
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
					Gizmos.DrawWireSphere( transform.position, sphrinf.radius );
					break;
				case NeighborVisualization.Connections:
// 					Debug.Log("y");
					foreach( Building thisBld in sphrinf.neighbors) {
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
			if( bldingRev.BuyNewBuilding() ) {
// 				buildingPlot.gameObject.SetActive( false );
// 				gameObject.SetActive( false );
			}
		} else if( blding.isRunning ) {
			if( Input.GetMouseButtonDown( 0 ) ) {
				Debug.Log("lmb"); // leftclick
				switch( leftMouseAction ) {
					case MouseAction.BuildFloor:
						bldingRev.AddFloor();
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
						bldingRev.AddFloor();
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
		BudgetManager.instance.paused = true;
		// animate to display
		while( showMoreInfoDisplay ) {
			yield return null;
		}
		BudgetManager.instance.paused = false;
		detailsCanvas.gameObject.SetActive( false );
		// animate away display
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
			revText.text = "$" + bldingRev.combinedValue;
		}
	}

}
