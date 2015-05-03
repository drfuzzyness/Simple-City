using UnityEngine;
using System.Collections;

public class RoadBuilder : MonoBehaviour {

	public GameObject roadPrefab;
	public RoadSegment currentSegment;
	public int age;

	public RoadSegment buildRoadForward() {
		if( canBuildRoad( currentSegment.transform.forward ) ) {
			GameObject newRoadGameObj = Instantiate( roadPrefab,
			                                        currentSegment.transform.position + currentSegment.transform.forward * currentSegment.size,
			                                        currentSegment.transform.rotation ) as GameObject;
			RoadSegment newRoad = newRoadGameObj.GetComponent<RoadSegment>();

			RoadSegment.WireSide( currentSegment.nodeFront, newRoad.nodeBack );

			currentSegment.sidewalkFront.gameObject.SetActive( false );

			newRoad.sidewalkBack.gameObject.SetActive( false );

			currentSegment = newRoad;
			age++;
			return currentSegment;
		}
		makeFrontLoop();
		return null;
	}

	public RoadSegment buildRoadRight() {
		if( canBuildRoad( currentSegment.transform.right ) ) {
			Quaternion newRoadDirection = currentSegment.transform.rotation;
			Vector3 rotation = newRoadDirection.eulerAngles;
			rotation.y += 90f;
			newRoadDirection.eulerAngles = rotation;

			GameObject newRoadGameObj = Instantiate( roadPrefab,
			                                        currentSegment.transform.position + currentSegment.transform.right * currentSegment.size,
			                                        newRoadDirection ) as GameObject;
			RoadSegment newRoad = newRoadGameObj.GetComponent<RoadSegment>();

			RoadSegment.WireSide( currentSegment.nodeRight, newRoad.nodeBack );

			currentSegment.sidewalkRight.gameObject.SetActive( false );
			newRoad.sidewalkBack.gameObject.SetActive( false );
			
			currentSegment = newRoad;
			age++;
			return currentSegment;
		}
		makeFrontLoop();
		return null;
	}
	public RoadSegment buildRoadLeft() {
		if( canBuildRoad( -currentSegment.transform.right ) ) {
			Quaternion newRoadDirection = currentSegment.transform.rotation;
			Vector3 rotation = newRoadDirection.eulerAngles;
			rotation.y -= 90f;
			newRoadDirection.eulerAngles = rotation;
			
			GameObject newRoadGameObj = Instantiate( roadPrefab,
			                                        currentSegment.transform.position + -currentSegment.transform.right * currentSegment.size,
			                                        newRoadDirection ) as GameObject;
			RoadSegment newRoad = newRoadGameObj.GetComponent<RoadSegment>();
			RoadSegment.WireSide( currentSegment.nodeLeft, newRoad.nodeBack );
			currentSegment.sidewalkLeft.gameObject.SetActive( false );
			newRoad.sidewalkBack.gameObject.SetActive( false );
			
			currentSegment = newRoad;
			age++;
			return currentSegment;
		}
		makeFrontLoop();
		return null;
	}

	bool canBuildRoad( Vector3 direction ) {
		Ray testAhead = new Ray( currentSegment.transform.position + direction.normalized * currentSegment.size * 0.5f, direction.normalized );
		return !Physics.Raycast( testAhead, currentSegment.size * 0.5f);
	}

	public void makeFrontLoop() {
//		currentSegment.nodeRight.nextNodes.Add( currentSegment.nodeLeft );
	}

	public void makeBackLoop() {
//		currentSegment.nodeLeft.nextNodes.Add( currentSegment.nodeRight );
	}
	// Use this for initialization
	void Start () {
	}

	
	// Update is called once per frame
	void Update () {
	
	}
}
