using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class Building : MonoBehaviour {


	public float costToBuild {
		get {
			return costToBuild;
		}
		private set {
			costToBuild = value;
//			updatePricetagDisplay();
		}
	}
	public bool isBuilt {
		get {
			return isBuilt;
		}
		private set {
			isBuilt = value;
		}
	}
	public float revenue {
		get {
			return revenue;
		}
		private set {
			revenue = value;
		}
	}

	[Header("Setup")]
	public Transform floorPrefab;
	public Text pricetag;
	[Header("Data")]
	public List<Transform> floors;

	public void createBuilding() {
		isBuilt = true;
		floors.Add( Instantiate( floorPrefab, transform.position, transform.rotation ) as Transform );
		floors[floors.Count - 1].SetParent( transform );
		calculateRevenue();
	}

	void calculateRevenue() {

	}

	void updatePricetagDisplay() {
		pricetag.text = "$" + costToBuild;
	}

	// Use this for initialization
	void Start () {
//		updatePricetagDisplay();
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
