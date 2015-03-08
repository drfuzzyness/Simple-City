using UnityEngine;
using System.Collections;

public class DayNightCycle : MonoBehaviour {

	[Header("Status")]
	public float timer;

	[Header("Setup")]
	public float cycleDuration;
	public Transform sunlight;
	public Transform moonlight;

	private Vector3 sunStart;
	private Vector3 moonStart;

	public float timeOfDay {
		get {
			return timer % cycleDuration;
		}
	}

	// Use this for initialization
	void Start () {
		sunStart = sunlight.localEulerAngles;
		moonStart = moonlight.localEulerAngles;
	}
	
	// Update is called once per frame
	void Update () {
		timer += Time.deltaTime;
		updateMoonPosition();
		updateSunPosition();
	}

	void updateSunPosition() {
		Vector3 rotation = new Vector3( timer / cycleDuration * 360 + sunStart.x, sunStart.y, sunStart.z );
		sunlight.localEulerAngles = rotation;	
	}

	void updateMoonPosition() {
		Vector3 rotation = new Vector3( timer / cycleDuration * 360 + moonStart.x, moonStart.y, moonStart.z );
		moonlight.localEulerAngles = rotation;	
	}
}
