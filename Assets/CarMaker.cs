using UnityEngine;
using System.Collections;

public class CarMaker : MonoBehaviour {

	public Car carPrefab;
	public void make(TrafficNode next) {
		GameObject newGO = Instantiate( carPrefab, next.transform.position, next.transform.rotation ) as GameObject;
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
