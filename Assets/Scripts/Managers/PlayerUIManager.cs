using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class PlayerUIManager : MonoBehaviour {
	
	[Header("Budget Flashes")]
	public Color budgetFlashColor;
	public int budgetNumFlashes;
	public float budgetDurationOfFlashes;
	[Header("Configuration")]
	public Image budgetPanel;
	public static PlayerUIManager instance;

	public void NotEnoughtMoney() {
		StartCoroutine( FlashBudgetPanel() );
	}
	
	public void TogglePause() {
		if( BudgetManager.instance.paused ) {
			BudgetManager.instance.paused = false;
		} else {
			BudgetManager.instance.paused = true;
		}
	}
	
	IEnumerator FlashBudgetPanel() {
		float flashDuration = budgetDurationOfFlashes / budgetNumFlashes;
		Color baseColor = budgetPanel.color;
		for( int flash = 0; flash < budgetNumFlashes; flash++) {
			for( float timer = 0; timer < flashDuration/2; timer += Time.deltaTime ) {
				budgetPanel.color = Color.Lerp( baseColor, budgetFlashColor, timer/( flashDuration / 2) );
				yield return null;
			}
			for( float timer = flashDuration/2; timer > 0; timer -= Time.deltaTime ) {
				budgetPanel.color = Color.Lerp( baseColor, budgetFlashColor, timer/( flashDuration / 2) );
				yield return null;
			}
			budgetPanel.color = baseColor;
		}
	}

	void Awake() {
		instance = this;
	}
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
