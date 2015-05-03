using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class BuildingManager : MonoBehaviour {

	[Header("Data")]
	public List<Building> buildings;

	public static BuildingManager instance;



	void Awake() {
		instance = this;
	}

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
	}
}