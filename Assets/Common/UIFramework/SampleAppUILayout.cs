/*============================================================================== 
 * Copyright (c) 2012-2014 Qualcomm Connected Experiences, Inc. All Rights Reserved. 
 * ==============================================================================*/

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// A utility class that encapsulates the creation of different kinds of UI elements that are commonly used in all sample app menus.
/// </summary>
public class SampleAppsUILayout
{
	public List<ISampleAppUIElement> GUIElements;
	private float mIndex;
	
	private GUIStyle mStyleHeader;
	private GUIStyle mStyleAboutButton;
	private GUIStyle mStyleSlider;
	private GUIStyle mStyleToggle;
	private GUIStyle mStyleCloseButton;
	private GUIStyle mStyleGroupLabel;
	
	private Font StyleFont
	{ 
		get {

#if UNITY_ANDROID
			if(Screen.dpi > 320 ) {
				if(Screen.width < 1080) {
					return Resources.Load("SourceSansPro-Regular") as Font;
				}
				else
				return Resources.Load("SourceSansPro-Regular_big_xhdpi") as Font;
			}
			else if (Screen.height == 1848 && Screen.width == 1200){
				return Resources.Load("SourceSansPro-Regular_big_xhdpi") as Font;
			}
			else {
				if(Screen.width <= 480) {
					return Resources.Load("SourceSansPro-Regular_Small") as Font;
				}
				else
				return Resources.Load("SourceSansPro-Regular") as Font;
			}
				
#elif (UNITY_IPHONE || UNITY_IOS)
			 if(Screen.height > 1500 ){
				return Resources.Load("SourceSansPro-Regular_big_iPad3") as Font;
			} else
			if(Screen.dpi < 170)
			{
				return Resources.Load("SourceSansPro-Regular_Small") as Font;
			}
			else 
			return Resources.Load("SourceSansPro-Regular") as Font;

#else
            return Resources.Load("SourceSansPro-Regular") as Font;
#endif
        }
	}
	
	public SampleAppsUILayout()
	{
		GUIElements = new List<ISampleAppUIElement>();
		SampleAppUIBox box = new SampleAppUIBox();
		
		GUIElements.Add (box);
		
		//Header Label
		mStyleHeader = new GUIStyle();
		mStyleHeader.normal.background = Resources.Load("UIStyles/header") as Texture2D;
		mStyleHeader.font = StyleFont;
		mStyleHeader.alignment = TextAnchor.MiddleLeft;
		mStyleHeader.contentOffset = new Vector2(Screen.width * 0.04f, 0);
		
		//About Button
		mStyleAboutButton = new GUIStyle();
		mStyleAboutButton.normal.background = Resources.Load("UIStyles/checkedoff") as Texture2D;
        mStyleAboutButton.active.background = Resources.Load("UIStyles/checkedoff") as Texture2D;
        mStyleAboutButton.onNormal.background = Resources.Load("UIStyles/checkedoff") as Texture2D;
		mStyleAboutButton.font = StyleFont;
		mStyleAboutButton.alignment = TextAnchor.MiddleLeft;
		mStyleAboutButton.contentOffset = new Vector2(Screen.width * 0.08f, 0);
		
		//Sliding options
		mStyleSlider = new GUIStyle();
		mStyleSlider.normal.background = Resources.Load("UIStyles/slideroff") as Texture2D;
        mStyleSlider.active.background = Resources.Load("UIStyles/slideron") as Texture2D;
        mStyleSlider.onNormal.background = Resources.Load("UIStyles/slideron") as Texture2D;
		mStyleSlider.font = StyleFont;
		mStyleSlider.alignment = TextAnchor.MiddleLeft;
		mStyleSlider.contentOffset = new Vector2(Screen.width * 0.08f, 0);
		
		//Check Toggle options
		mStyleToggle = new GUIStyle();
		mStyleToggle.normal.background = Resources.Load("UIStyles/checkedoff") as Texture2D;
        mStyleToggle.active.background = Resources.Load("UIStyles/checkedon") as Texture2D;
        mStyleToggle.onNormal.background = Resources.Load("UIStyles/checkedon") as Texture2D;
		mStyleToggle.font = StyleFont;
		mStyleToggle.alignment = TextAnchor.MiddleLeft;
		mStyleToggle.contentOffset = new Vector2(Screen.width * 0.08f, 0);
		
		//Group Labels
		mStyleGroupLabel = new GUIStyle();
		mStyleGroupLabel.normal.background = Resources.Load("UIStyles/label") as Texture2D;
		mStyleGroupLabel.font = StyleFont;
		mStyleGroupLabel.alignment = TextAnchor.MiddleLeft;
		mStyleGroupLabel.contentOffset = new Vector2(Screen.width * 0.08f, 0);
		
		//Close Button
		mStyleCloseButton = new GUIStyle();
		mStyleCloseButton.normal.background = Resources.Load("UIStyles/buttonoff") as Texture2D;
        mStyleCloseButton.active.background = Resources.Load("UIStyles/buttonon") as Texture2D;
        mStyleCloseButton.onNormal.background = Resources.Load("UIStyles/buttonon") as Texture2D;
		mStyleCloseButton.font = StyleFont;
		mStyleCloseButton.alignment = TextAnchor.MiddleCenter;
	}
	
	public void Draw()
	{
		foreach(ISampleAppUIElement element in GUIElements)
		{
			element.Draw();
		}
	}
	
	public SampleAppUILabel AddLabel(string title)
	{
		SampleAppUILabel label = new SampleAppUILabel(mIndex,title, mStyleHeader);
		mIndex += label.Height;
		GUIElements.Add(label);
		return label;
	}
	
	public SampleAppUILabel AddGroupLabel(string title)
	{
		SampleAppUILabel label = new SampleAppUILabel(mIndex,title, mStyleGroupLabel);
		mIndex += label.Height;
		GUIElements.Add(label);
		return label;
	}
	
	public SampleAppUICheckButton AddSimpleButton(string title)
	{
		SampleAppUICheckButton button = new SampleAppUICheckButton(mIndex,title, false, mStyleAboutButton);
		mIndex += button.Height;
		GUIElements.Add(button);
		return button;
	}
	
	public SampleAppUICheckButton AddSlider(string title, bool tf)
	{
		SampleAppUICheckButton slider = new SampleAppUICheckButton(mIndex, title, tf, mStyleSlider);
		mIndex += slider.Height;
		GUIElements.Add (slider);
		return slider;
	}

    public SampleAppUICheckButton AddSlider_Type2(string title, bool tf)
    {
        SampleAppUICheckButton slider = new SampleAppUICheckButton(mIndex, title, tf, mStyleToggle);
        mIndex += slider.Height;
        GUIElements.Add(slider);
        return slider;
    }
	
	public SampleAppUIRadioButton AddToggleOptions(string[] titleList, int selectedId)
	{
		GUIStyle[] styles = new GUIStyle[titleList.Length];
		for(int i = 0; i < styles.Length; i++)
		{
			styles[i] = mStyleToggle;
		}
		
		SampleAppUIRadioButton button = new SampleAppUIRadioButton(mIndex, selectedId, titleList, styles);
		mIndex = button.Height;
		GUIElements.Add(button);
		return button;
	}
	
	public SampleAppUIButton AddButton(string title, Rect rect)
	{
		SampleAppUIButton button = new SampleAppUIButton(rect, mStyleCloseButton, title);
		GUIElements.Add (button);
		mIndex += button.Height;
		return button;
	}
	
	public SampleAppUIButton AddButton(Texture buttonTexture, Rect rect)
	{
		SampleAppUIButton button = new SampleAppUIButton(rect, mStyleCloseButton, buttonTexture);
		GUIElements.Add (button);
		mIndex += button.Height;
		return button;
	}
	
	
	public void AddGap(float val)
	{
		mIndex += val;
	}
	
	
}
