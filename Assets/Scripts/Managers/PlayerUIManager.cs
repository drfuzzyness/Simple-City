using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityStandardAssets.ImageEffects;

public class PlayerUIManager : MonoBehaviour {
	
	public bool isGamePlayable;
	[Header("Gameover")]
	public float gameoverDOF;
	public AnimationCurve gameoverTransition;
	public float gameoverDelay;
	public Text bankruptText;
	
	[Header("Budget Flashes")]
	public Color budgetFlashColor;
	public int budgetNumFlashes;
	private bool isFlashing;
	public float budgetDurationOfFlashes;
	[Header("Configuration")]
	public Image budgetPanel;
	public Material wireframeMaterial;
	public static PlayerUIManager instance;

	public void NotEnoughtMoney() {
		if( !isFlashing )
			StartCoroutine( FlashBudgetPanel() );
	}
	
	public void IncorrectPlacement() {
		
	}
	
	public void TogglePause() {
		if( BudgetManager.instance.isPaused ) {
			BudgetManager.instance.isPaused = false;
		} else {
			BudgetManager.instance.isPaused = true;
		}
	}

	IEnumerator FlashBudgetPanel() {
		isFlashing = true;
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
		budgetPanel.color = baseColor;
		isFlashing = false;
	}
	
	
	
	public void GameOver() {
		if( !isGamePlayable )
			return;
		isGamePlayable = false;
		StartCoroutine( GameOverDisplay() );
	}
	
	IEnumerator GameOverDisplay() {
		VignetteAndChromaticAberration vignette = GetComponent<VignetteAndChromaticAberration>();
		vignette.enabled = true;
		bankruptText.gameObject.SetActive( true );
		float prevBlur = vignette.blurDistance;
		float ratio = 0f;
		BudgetManager.instance.isPaused = true;
		yield return null;
		for( float timer = 0f; timer > gameoverDelay; timer += Time.deltaTime) {
// 			Debug.Log( "flashing " + timer );
			ratio = timer / gameoverDelay;
// 			Debug.Log( Mathf.Lerp( prevExposure, flashExposurePeak, flashTransition.Evaluate( ratio ) ) );	
			vignette.blurDistance = Mathf.Lerp( prevBlur, gameoverDOF, gameoverTransition.Evaluate( ratio ) );
			vignette.blur = Mathf.Lerp( prevBlur, gameoverDOF, gameoverTransition.Evaluate( ratio ) );
			yield return null;
		}
		// go to main menu
		SetupManager.instance.ShowMainMenu();
	}	

	void Awake() {
		instance = this;
	}
	
	void Update() {
		if( Input.GetKeyDown(KeyCode.Escape) ) {
			SetupManager.instance.ShowMainMenu();
		}
	}
	
	void Start() {
		isGamePlayable = true;
	}
}
