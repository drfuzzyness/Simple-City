using UnityEngine;
using System.Collections;

public class SimpleLineRenderer : MonoBehaviour {
// ALL FUNCTIONS MUST BE CALLED DURING
// void OnPostRender() {}

	public static void RenderLine( Vector3 origin, Vector3 destination, Color start, Color end) {
		GL.Begin(GL.LINES);
		GL.Color( start );
		GL.Vertex( origin );
		GL.Color( end );
		GL.Vertex( destination );
		GL.End();
	}
	
}
