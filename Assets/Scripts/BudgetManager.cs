using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class BudgetManager : MonoBehaviour {


	public float money;
	public float revenue {
		get {
			return revenue;
		}
		private set {
			revenue = value;
		}
	}
	[Header("Setup")]
	public Text moneyText;

	[Header("Data")]
	public List<Building> buildings;



	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
