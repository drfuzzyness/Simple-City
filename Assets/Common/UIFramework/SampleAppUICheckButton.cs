/*============================================================================== 
 * Copyright (c) 2012-2014 Qualcomm Connected Experiences, Inc. All Rights Reserved. 
 * ==============================================================================*/

using UnityEngine;
using System.Collections;

public class SampleAppUICheckButton : ISampleAppUIElement
{
    public event System.Action<bool> TappedOn;
 
    /// <summary>
    /// Constructs a ISampleAppUIElement with selected and unselected states 
    /// param index is a relative position of this UI in the parent layout
    /// param title is title for the UI
    /// param selected specifies whether the element is in selected or unselected state
    /// param style is to define a specific GUIStyle for the UI
    /// </param>
	public SampleAppUICheckButton(float index, string title, bool selected, GUIStyle style)
	{
		mTitle = title;
		mStyle = style;
		mSelected = selected;
		
		mWidth = style.normal.background.width;
		mHeight = style.normal.background.height;
		
		SampleAppUIRect rect = new SampleAppUIRect(0, index / 800.0f, 1, Height / 800.0f);
		this.mRect = rect;
	}
	
	public string Title
	{
		get {
			return mTitle;
		}
		set {
			mTitle = value;
		}
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
	
	public void Enable(bool tf)
	{
		mSelected = tf;
	}
	
	public bool IsEnabled
	{
		get {
			return mSelected;
		}
	}
	
	public override void Draw()
	{
		mTappedOn = GUI.Toggle(mRect.rect, mSelected, mTitle, mStyle);
		if(mTappedOn && !mSelected)
		{
			mSelected = true;
			if(this.TappedOn != null)
			{
				this.TappedOn(true);
				InputController.GUIInput = true;
			}
		}
		if(!mTappedOn && mSelected)
		{
			mSelected = false;
			if(this.TappedOn != null)
			{
				this.TappedOn(false);
				InputController.GUIInput = true;
			}
		}
	}
	
	private SampleAppUIRect mRect;
	private bool mTappedOn;
	private bool mSelected;
	private GUIStyle mStyle;
	
	private float mHeight;
	private float mWidth;
	private string mTitle;
}
