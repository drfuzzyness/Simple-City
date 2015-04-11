using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TrafficNode : MonoBehaviour {

	public List<TrafficNode> nextNodes;
	public Building accessableBuilding;

	[Header("Status")]
	public bool isConnected;

	void OnDrawGizmos() {
		if( nextNodes.Count >= 1 ) {
			foreach( TrafficNode thisNode in nextNodes ) {
				Gizmos.DrawLine( transform.position, thisNode.transform.position );
			}
		}
		else {
			Gizmos.DrawWireSphere( transform.position, .1f );
		}
	}
}
