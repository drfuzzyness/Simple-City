/*============================================================================== 
 * Copyright (c) 2012-2014 Qualcomm Connected Experiences, Inc. All Rights Reserved. 
 * ==============================================================================*/

using UnityEngine;
using System.Collections;

public class SampleAppUILabel : ISampleAppUIElement 
{
    /// <summary>
    /// Initializes a new instance for label
    /// <param name='index'> specifies relative position of the UI in the parent layout
    /// <param name='title'> specifies title for the UI
    /// <param name='style> specifies a specific GUIStyle for the UI
	public SampleAppUILabel(float index, string title, GUIStyle style)
	{
		mStyle = style;
		mTitle = title;
		mWidth = mStyle.normal.background.width;
		mHeight = mStyle.normal.background.height;
		
		SampleAppUIRect rect = new SampleAppUIRect(0, index / 800.0f, 1, Height / 800.0f);
		this.mRect = rect;
	}
	
	public override void Draw()
	{
		GUI.Label(mRect.rect, mTitle, mStyle);
	}
	
	public override float Width
	{
		get {
			return mWidth;
		}
	}
	
	public override float Height
	{
		get {
			return mHeight;
		}
	}
	
	private SampleAppUIRect mRect;
	private GUIStyle mStyle;
	private string mTitle;
	private float mWidth;
	private float mHeight;
}

