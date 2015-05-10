using UnityEngine;
using System.Collections;

public class SimpleLineRenderer : MonoBehaviour {
	public static SimpleLineRenderer instance;
	public Material wireframeMaterial;
// 	private int passCount; // added passes to try and fix the wireframe overwriting the RenderLine()
// ALL FUNCTIONS MUST BE CALLED DURING
// void OnPostRender() {}

	public void RenderLine( Vector3 origin, Vector3 destination, Color start, Color end) {
// 		Debug.Log( "attempting to draw" );
		GL.PushMatrix();
		wireframeMaterial.SetPass( 0 ); // passes are dependant on the material's shader
		GL.Begin(GL.LINES);
		GL.Color( start );
		GL.Vertex( origin );
		
		GL.Vertex( destination );
		GL.Color( end );
		GL.End();
		GL.PopMatrix();
// 		passCount++;
	}
	
	public void RenderWireframeMesh( MeshRenderer meshrend, MeshFilter meshfilt, Material mat ) {
		Mesh mesh = meshfilt.mesh;
		Vector3[] vertices = mesh.vertices;
		int[] triangles = mesh.triangles;
		GL.PushMatrix();
		mat.SetPass( 0 );
		GL.Begin( GL.LINES );
		foreach( int trig in triangles ) {
			GL.Vertex( vertices[triangles[trig * 3 + 0]] );
	        GL.Vertex( vertices[triangles[trig * 3 + 1]] );
			GL.Vertex( vertices[triangles[trig * 3 + 2]] );
		}
		GL.End();
		GL.PopMatrix();
// 		passCount++;
	}
	
	void Awake() {
		instance = this;
	}
	
	void Update() {
// 		passCount = 0;
	}
	
}
