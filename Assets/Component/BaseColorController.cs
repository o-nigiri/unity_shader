using UnityEngine;
using System.Collections;


public class BaseColorController : MonoBehaviour {

	// Use this for initialization
	void Start () {
		GetComponent<Renderer> ().material.SetColor("_BaseColor", Color.black);
	}

	// Update is called once per frame
	//void Update () {

	}
}
