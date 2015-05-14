using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class BuildingManager : MonoBehaviour {

	[Header("Data")]
	public List<Building> buildings;
	public List<Building> unownedBuildings;

	public static BuildingManager instance;



	void Awake() {
		instance = this;
	}
	
	public void Cleanse() {
		foreach( Building thisBld in buildings) {
			Destroy( thisBld.gameObject );
		}
		foreach( Building thisBld in unownedBuildings) {
			Destroy( thisBld.gameObject );
		}
	}

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
	}
}