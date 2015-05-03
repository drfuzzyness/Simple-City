using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class BuildingGoods : MonoBehaviour {
	
	public GoodType producedType;
	public float waitBetweenProduced;
	public GoodType desiredImport;
	public int desiredConsumption;
	public SortedDictionary<GoodType, int> stored;
	private bool produceAnother;

	void Start () {
	
	}
	
	void Update () {
	
	}
	
	IEnumerator Produce() {
		while( produceAnother ) {
			for( float timer = 0; timer < waitBetweenProduced; timer += Time.deltaTime ) {
					yield return null;
			}
			stored[producedType] += 1;
		}
	}
	
	public void Export( BuildingGoods target, GoodType type, int amount  ) {
		if( stored[type] < amount )
			Debug.LogError( "Only " + stored[type] + " left of " + type );
		else {
			stored[type] -= amount;
			target.Recive( type, amount );
		}
	}
	
	public void Recive( GoodType type, int amount ) {
		stored[type] += amount;
	}
}
