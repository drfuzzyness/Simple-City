using UnityEngine;
using System.Collections;

public class HideOnClick : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if( Input.GetMouseButtonDown( 0 ) ) {
			iTween.MoveTo( gameObject, transform.position - (Vector3.up * 50 ), 4f );
		}
	}
}
