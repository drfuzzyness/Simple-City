/*============================================================================== 
 * Copyright (c) 2012-2014 Qualcomm Connected Experiences, Inc. All Rights Reserved. 
 * ==============================================================================*/

using UnityEngine;
using System.Collections;

public class SampleAppUIBox : ISampleAppUIElement
{   
    /// <summary>
    /// Initializes a new instance of a box UI
    /// </summary>
	public SampleAppUIBox()
	{
		this.mRect = new Rect(0, 0, Screen.width, Screen.height);
		mStyle = new GUIStyle();
		mStyle.normal.background = Resources.Load("UIStyles/main_background") as Texture2D;
	}
	
	public override void Draw()
	{
		GUI.Box(mRect, "", mStyle);
		if (Input.GetMouseButtonDown(0) || Input.GetMouseButtonUp(0))
		{
			InputController.GUIInput = true;
		}
	}
    
    private Rect mRect;
    private GUIStyle mStyle;
}


