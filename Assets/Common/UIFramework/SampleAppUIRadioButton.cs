/*============================================================================== 
 * Copyright (c) 2012-2014 Qualcomm Connected Experiences, Inc. All Rights Reserved. 
 * ==============================================================================*/

using UnityEngine;
using System.Collections;

public class SampleAppUIRadioButton : ISampleAppUIElement 
{
    public event System.Action<int> TappedOnOption;
    
    /// <summary>
    /// Constructs a ISampleAppUIElement with series of options to choose from; 
    /// Only one option is selected at a time. param index specifies the relative position of UI element in the parent layout
    /// param selectedIs specifies which option is currently selected
    /// param title[,] specifies a series of title for each of the options
    /// param styles[,] specifies GUIStyles for all options
    /// </param>
	public SampleAppUIRadioButton(float index, int selectedId, string[] title, GUIStyle[] styles)
	{
		mIndex = index;
		this.mRect = new SampleAppUIRect[title.Length];
		
		mStyle = styles;
		titleList = new string[title.Length];
		for(int i = 0; i < title.Length; i++)
		{
			float height = mStyle[i].normal.background.height;
			mRect[i] = new SampleAppUIRect(0, mIndex / 800.0f, 1, height / 800.0f);
			
			mIndex += height + 2;
			titleList[i] = title[i];
		}
		
		mOptionsTapped = new bool[title.Length];
		mOptionsSelected = new bool[title.Length];
		mOptionsSelected[selectedId] = true;
	}
	
	private float mIndex;
	
	public override float Width
	{
		get {
			return 800.0f;
		}
	}
	
	public override float Height
	{
		get {
			return mIndex;
		}
	}
	
	
	public void EnableIndex(int index)
	{
		if(index < mOptionsSelected.Length) {
			mOptionsSelected[index] = SetToTrue();
		}
	}
	
	private bool SetToTrue()
	{
		for(int i = 0 ; i < mOptionsSelected.Length; i++)
		{
			mOptionsSelected[i] = false;
		}
		return true;
	}
	
	public override void Draw()
	{
		if(titleList == null)
		{
			for(int i = 0 ; i < mRect.Length; i++)
			{
				mOptionsTapped[i] = GUI.Toggle(mRect[i].rect, mOptionsSelected[i], "", mStyle[i]);
				if(mOptionsTapped[i] && !mOptionsSelected[i])
				{
					mOptionsSelected[i] = SetToTrue();  
					if(this.TappedOnOption != null)
					{
						this.TappedOnOption(i);
						InputController.GUIInput = true;
					}
				}
			}
		}
		else {
		for(int i = 0 ; i < mRect.Length; i++)
		{
			mOptionsTapped[i] = GUI.Toggle(mRect[i].rect, mOptionsSelected[i], titleList[i], mStyle[i]);
			if(mOptionsTapped[i] && !mOptionsSelected[i])
			{
				mOptionsSelected[i] = SetToTrue();  
				if(this.TappedOnOption != null)
				{
					this.TappedOnOption(i);
					InputController.GUIInput = true;
				}
			}
		}
		}
	}
	
	private bool[] mOptionsTapped;
	private bool[] mOptionsSelected;
	private SampleAppUIRect[] mRect;
	private bool mTappedOn;
	private GUIStyle[] mStyle;
	
	private float mWidth;
	private float mHeight;
	private string[] titleList;


}
