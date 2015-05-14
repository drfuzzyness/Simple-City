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
	
	[SerializeField]
	private int MainMenuIndex;
	[SerializeField]
	private int ClassicIndex;
	[SerializeField]
	private int SimulationIndex;
	
	public static SetupManager instance;
	
	public void ShowMainMenu() {
		Application.LoadLevel( MainMenuIndex );
	}
	
	public void PlayClassic() {
		Debug.Log("Play Classic");
		Application.LoadLevel( ClassicIndex );
	}
	
	public void PlaySimulation() {
		Debug.Log("Play Simulation");
		Application.LoadLevel( SimulationIndex );
	}
	
	void DestroyManagers() {
		
	}
	
	void Awake() {
		instance = this;
	}
}
