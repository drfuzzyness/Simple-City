using UnityEngine;
using System.Collections;

public class CarMaker : MonoBehaviour {

	public Car carPrefab;
	public TrafficNode output;

	public void make() {
		Car newGO = Instantiate( carPrefab, output.transform.position, output.transform.rotation ) as Car;
		newGO.nextNode = output;
		newGO.decideWhatNext();
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
