using UnityEngine;
using System.Collections;

[RequireComponent( typeof( MeshCollider ))]
public class Planet : MonoBehaviour {
	public static Vector3 GetNormalFromRay( Ray ray ) {
		RaycastHit hit = new RaycastHit();
		if ( Physics.Raycast( ray, out hit) ) {
			MeshCollider meshCollider = hit.collider as MeshCollider;
			Mesh mesh = meshCollider.sharedMesh;
			Vector3[] vertices = mesh.vertices;
			int[] triangles = mesh.triangles;
			Vector3 p0 = vertices[triangles[hit.triangleIndex * 3 + 0]];
	        Vector3 p1 = vertices[triangles[hit.triangleIndex * 3 + 1]];
	        Vector3 p2 = vertices[triangles[hit.triangleIndex * 3 + 2]];
			Transform hitTransform = hit.collider.transform;
	        p0 = hitTransform.TransformPoint(p0);
	        p1 = hitTransform.TransformPoint(p1);
	        p2 = hitTransform.TransformPoint(p2);
			return Vector3.Cross( (p1 - p0), (p2 - p0) );
		}
		return Vector3.zero;
	}
}
