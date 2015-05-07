using UnityEngine;
using System.Collections;

public class CameraController : MonoBehaviour {
	
	public enum ControlMode { Planar, Spherical }
	public ControlMode controlMode;
	public Transform focalPoint;
	public float cameraSpeed;
	public float scrollSpeed = 1f;
	public Vector2 min;
	public Vector2 max;
	public bool clamp;

	// Update is called once per frame
	void Update () {
		switch( controlMode ) {
			case ControlMode.Planar:
				MoveCamPlanar();
				break;
			case ControlMode.Spherical:
				MoveCamSpherical();
				break;
		}
		float orthSize = Camera.main.orthographicSize;
		orthSize = Mathf.Clamp( orthSize + Input.GetAxis("Mouse ScrollWheel") * scrollSpeed, 5f, 100f );
		Camera.main.orthographicSize = orthSize;
	}
	
	void MoveCamPlanar(){
		transform.Translate( Input.GetAxis("Horizontal") * cameraSpeed * Time.deltaTime,
		                    0f,
		                    Input.GetAxis("Vertical") * cameraSpeed * Time.deltaTime );
		if( clamp ) {
			Vector3 pos = transform.position;
			pos.x = Mathf.Clamp( transform.position.x, min.x, max.x );
			pos.z = Mathf.Clamp( transform.position.z, min.y, max.y );
			transform.position = pos;
		}
	}
	
	void MoveCamSpherical() {
		transform.LookAt( focalPoint );
		transform.Translate( Input.GetAxis("Horizontal") * cameraSpeed * Time.deltaTime,
		                    Input.GetAxis("Vertical") * cameraSpeed * Time.deltaTime,
		                    Input.GetAxis("Mouse ScrollWheel") * scrollSpeed * Time.deltaTime, Space.Self );
		transform.LookAt( focalPoint );
	}
}
