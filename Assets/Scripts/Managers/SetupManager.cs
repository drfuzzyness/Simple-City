using UnityEngine;
using System.Collections;

public class SetupManager : MonoBehaviour {
	
	/* Needs to setup:
	- Budget Manager
	- Building Generation Mode
		- City Grid vs. 
	*/
	
	/* Possible Features
	- Statistics Storage
	- Main Menu Animations
	*/
	
	public static SetupManager instance;
	
	public void PlayClassic() {
		
	}
	
	public void PlaySimulation() {
		
	}

	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void Awake() {
		instance = this;
	}
}
