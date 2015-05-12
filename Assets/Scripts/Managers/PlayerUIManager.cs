using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class PlayerUIManager : MonoBehaviour {
	
	[Header("Budget Flashes")]
	public Color budgetFlashColor;
	public int budgetNumFlashes;
	public float budgetDurationOfFlashes;
	[Header("Configuration")]
	public Image budgetPanel;
	public Material wireframeMaterial;
	public static PlayerUIManager instance;

// 	public Material mat;
//     private Vector3 startVertex;
//     private Vector3 mousePos;
//     void Update() {
//         mousePos = Input.mousePosition;
//         if (Input.GetKeyDown(KeyCode.Space))
//             startVertex = new Vector3(mousePos.x / Screen.width, mousePos.y / Screen.height, 0);
//         
//     }
//     void OnPostRender() {
//         if (!mat) {
//             Debug.LogError("Please Assign a material on the inspector");
//             return;
//         }
//         GL.PushMatrix();
//         mat.SetPass(0);
//         GL.LoadOrtho();
//         GL.Begin(GL.LINES);
//         GL.Color(Color.red);
//         GL.Vertex(startVertex);
//         GL.Vertex(new Vector3(mousePos.x / Screen.width, mousePos.y / Screen.height, 0));
//         GL.End();
//         GL.PopMatrix();
//     }
//     void Example() {
//         startVertex = new Vector3(0, 0, 0);
//     }
	public void NotEnoughtMoney() {
		StartCoroutine( FlashBudgetPanel() );
	}
	
	public void IncorrectPlacement() {
		
	}
	
	public void TogglePause() {
		if( BudgetManager.instance.isPaused ) {
			BudgetManager.instance.isPaused = false;
		} else {
			BudgetManager.instance.isPaused = true;
		}
	}
	
// 	void OnPostRender() {
// 		foreach( Building thisBld in BuildingManager.instance.buildings ) {
// 			thisBld.GetComponent<BuildingUI>().DrawSphereVisualization();
// 			foreach( Floor thisFloor in thisBld.floors ) {
// // 				SimpleLineRenderer.instance.RenderWireframeMesh( thisFloor.GetComponent<MeshRenderer>(),
// // 													    thisBld.GetComponent<MeshFilter>(),
// // 														wireframeMaterial );
// 			}
// 		}
// 	}
	
	IEnumerator FlashBudgetPanel() {
		float flashDuration = budgetDurationOfFlashes / budgetNumFlashes;
		Color baseColor = budgetPanel.color;
		for( int flash = 0; flash < budgetNumFlashes; flash++) {
			for( float timer = 0; timer < flashDuration/2; timer += Time.deltaTime ) {
				budgetPanel.color = Color.Lerp( baseColor, budgetFlashColor, timer/( flashDuration / 2) );
				yield return null;
			}
			for( float timer = flashDuration/2; timer > 0; timer -= Time.deltaTime ) {
				budgetPanel.color = Color.Lerp( baseColor, budgetFlashColor, timer/( flashDuration / 2) );
				yield return null;
			}
			budgetPanel.color = baseColor;
		}
	}

	void Awake() {
		instance = this;
	}
	
	void Update() {
	}
}
