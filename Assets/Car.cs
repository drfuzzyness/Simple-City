using UnityEngine;
using System.Collections;

public class Car : MonoBehaviour {

	public TrafficNode nextNode;
	public TrafficNode previousNode;
	public float timeBtwnNodes; // Units/sec

	void Start() {
		decideWhatNext();
	}

	// Update is called once per frame
	void Update () {
	
	}

	IEnumerator driveToNextNode() {
		for( float time = 0f; time < timeBtwnNodes; time += Time.deltaTime ) {
			transform.position = Vector3.Lerp( previousNode.transform.position,
			                                  nextNode.transform.position,
			                                  time / timeBtwnNodes );
			transform.rotation = Quaternion.Lerp( previousNode.transform.rotation,
			                                     nextNode.transform.rotation,
			                                     time / timeBtwnNodes);
			yield return null;
		}
		transform.position = nextNode.transform.position;
		transform.rotation = nextNode.transform.rotation;
		decideWhatNext();
	}

	void decideWhatNext() {
		previousNode = nextNode;
		nextNode = chooseDestination( nextNode );
		StartCoroutine( "driveToNextNode" );
	}

	TrafficNode chooseDestination( TrafficNode node ) {
		int index = Random.Range( 0, node.nextNodes.Count );
		return node.nextNodes[ index ];
	}
}
