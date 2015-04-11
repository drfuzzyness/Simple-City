using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class RoadSegment : MonoBehaviour {

	public TrafficNode nodeFront;
	public TrafficNode nodeRight;
	public TrafficNode nodeBack;
	public TrafficNode nodeLeft;
	public Transform sidewalkFront;
	public Transform sidewalkRight;
	public Transform sidewalkBack;
	public Transform sidewalkLeft;

	public Direction<TrafficNode> nodes;

	public struct Direction<T> {
		T forward;
		T right;
		T backward;
		T left;
	}




	[Header("Config")]
	public GameObject roadPrefab;
	public float size;

	public void buildRoadForward() {
		GameObject newRoadGameObj = Instantiate( roadPrefab, transform.position + transform.forward * size, transform.rotation ) as GameObject;
		RoadSegment newRoad = newRoadGameObj.GetComponent<RoadSegment>();
		Debug.Log( newRoad );
		nodeRight.nextNodes.Add( newRoad.nodeRight );
		nodeRight.isConnected = true;
		newRoad.nodeLeft.nextNodes.Add( nodeLeft );
		sidewalkFront.gameObject.SetActive( false );
		nodeLeft.isConnected = true;
		newRoad.sidewalkBack.gameObject.SetActive( false );

	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
