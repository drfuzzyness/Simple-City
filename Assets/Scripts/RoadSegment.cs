using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class RoadSegment : MonoBehaviour {



	public struct Side {
		public TrafficNode left;
		public TrafficNode right;
	}
	public Side nodeFront;
	public Side nodeRight;
	public Side nodeBack;
	public Side nodeLeft;

	[Header("Setup")]
	public TrafficNode FL;
	public TrafficNode FR;
	public TrafficNode RL;
	public TrafficNode RR;
	public TrafficNode BL;
	public TrafficNode BR;
	public TrafficNode LL;
	public TrafficNode LR;

	public Transform sidewalkFront;
	public Transform sidewalkRight;
	public Transform sidewalkBack;
	public Transform sidewalkLeft;
	public float size;

	public static void WireSide( Side lhs, Side rhs ) {
		lhs.right.nextNodes.Add( rhs.left );
		lhs.right.isConnected = true;
		rhs.left.isConnected = true;
		rhs.right.nextNodes.Add( lhs.left );
		rhs.right.isConnected = true;
		lhs.left.isConnected = true;
	}

	public void WireInternals() {

	}


	// Use this for initialization
	void Start () {
	
	}
}
