using UnityEngine;
using System.Collections;

public class CameraController : MonoBehaviour {

	public float cameraSpeed;

	// Update is called once per frame
	void Update () {
		transform.Translate( Input.GetAxis("Horizontal") * cameraSpeed,
		                    Input.GetAxis("Vertical") * cameraSpeed,
		                    0f );
	}
}
