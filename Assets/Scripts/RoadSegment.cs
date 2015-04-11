using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class RoadSegment : MonoBehaviour {

	[Header("Config")]
	public TrafficNode nodeFront;
	public TrafficNode nodeRight;
	public TrafficNode nodeBack;
	public TrafficNode nodeLeft;
	public Transform sidewalkFront;
	public Transform sidewalkRight;
	public Transform sidewalkBack;
	public Transform sidewalkLeft;
	public float size;



	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
