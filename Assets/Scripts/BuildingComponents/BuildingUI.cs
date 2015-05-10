using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class BuildingUI : MonoBehaviour {

	public Transform overviewCanvas;
	public Text revText;
	public Color positiveCashflowColor;
	public Color neutralColor;
	public Color negativeCashflowColor;
	public MeshRenderer buildingPlot;
	public Material hoverMaterial;
	public Material invisibleMaterial;
	public Material lineRenderMat;
	public enum NeighborVisualization { Off, Spheres, Connections };
	public NeighborVisualization neighborVisualization;
	private Building blding;
	private SphereOfInfluence sphrinf;
	private BuildingRevenue bldingRev;
	
	
	
	void Start () {
		blding = GetComponent<Building>();
		bldingRev = GetComponent<BuildingRevenue>();
		sphrinf = GetComponent<SphereOfInfluence>();
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
			Debug.Log( "Trying to visualize" );
			switch( neighborVisualization ) {
				case NeighborVisualization.Spheres:
					Gizmos.DrawWireSphere( transform.position, sphrinf.radius );
					break;
				case NeighborVisualization.Connections:
					foreach( Building thisBld in sphrinf.neighbors) {
// 						Gizmos.DrawLine( transform.position, thisBld.transform.position );
						Color bldColor = negativeCashflowColor;
						if( this.GetComponent<BuildingRevenue>().revenue >= 0 ) {
							bldColor = positiveCashflowColor;
						}
						SimpleLineRenderer.instance.RenderLine( thisBld.transform.position,
													   transform.position,
													   Color.red, Color.white, lineRenderMat );
					}
					break;
				default: 
					break;
			}
			
		}
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
			overviewCanvas.gameObject.SetActive(true);
		} else if( blding.isBuilt && blding.isRunning ) {
			overviewCanvas.gameObject.SetActive( true );
		}
	}
	
	public void MouseExit() {
		if( !blding.isBuilt ){
			buildingPlot.material = invisibleMaterial;
// 			buildingPlot.GetComponent<Renderer>().material
			overviewCanvas.gameObject.SetActive(false);
		} else if( blding.isBuilt && blding.isRunning ) {
			overviewCanvas.gameObject.SetActive( false );
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
			revText.text = "$" + bldingRev.combinedValue;
		}
	}

}
