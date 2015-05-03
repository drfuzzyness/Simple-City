using UnityEngine;
using System.Collections;

public class CameraController : MonoBehaviour {

	public float cameraSpeed;
	public float scrollSpeed = 1f;
	public Vector2 min; // -43.70458, -283.6006
	public Vector2 max; // 200.8231, -42.18439
	public bool clamp;

	// Update is called once per frame
	void Update () {
		transform.Translate( Input.GetAxis("Horizontal") * cameraSpeed * Time.deltaTime,
		                    0f,
		                    Input.GetAxis("Vertical") * cameraSpeed * Time.deltaTime );
		if( clamp ) {
			Vector3 pos = transform.position;
			pos.x = Mathf.Clamp( transform.position.x, min.x, max.x );
			pos.z = Mathf.Clamp( transform.position.z, min.y, max.y );
			transform.position = pos;
		}
		float orthSize = Camera.main.orthographicSize;
		orthSize = Mathf.Clamp( orthSize + Input.GetAxis("Mouse ScrollWheel") * scrollSpeed, 5f, 100f );
		Camera.main.orthographicSize = orthSize;
	}
}
