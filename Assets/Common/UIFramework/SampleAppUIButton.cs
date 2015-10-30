/*============================================================================== 
 * Copyright (c) 2012-2014 Qualcomm Connected Experiences, Inc. All Rights Reserved. 
 * ==============================================================================*/

using UnityEngine;
using System.Collections;

public class SampleAppUIButton : ISampleAppUIElement
{
    public event System.Action TappedOn;
    
    /// <summary>
    /// Initializes a Button UI 
    /// </summary>
    /// <param name="rect">rectangle that defines its position and size</param>
    /// <param name="style">GUIStyle for background texture and font etc</param>
    /// <param name="buttonTexture">Texture for icon for the button</param>
	public SampleAppUIButton(Rect rect, GUIStyle style, Texture buttonTexture)
	{
		this.mRect = rect;
		this.mButtonImage = buttonTexture;
		mStyle = style;
		mTitle = "";
	}

    /// <summary>
    /// Initializes a Button UI 
    /// </summary>
    /// <param name="rect">rectangle that defines its position and size</param>
    /// <param name="style">GUIStyle for background texture and font etc</param>
    /// <param name="title">Title for the button</param>
	public SampleAppUIButton(Rect rect, GUIStyle style, string title)
	{
		this.mRect = rect;
		mStyle = style;
		mTitle = title;
	}
	
	
	public override void Draw()
	{
		if(mButtonImage != null)
		{
			if(GUI.Button(mRect, mButtonImage, mStyle))
			{
				if(this.TappedOn != null){
					this.TappedOn();

                    InputController.GUIInput = true;
				}
			}
		}
		else 
		{
			if(GUI.Button(mRect, mTitle, mStyle))
			{
				if(this.TappedOn != null){
					this.TappedOn();

                    InputController.GUIInput = true;
				}
			}
		}
	}
	
	private Texture mButtonImage;
	private Rect mRect;
	private GUIStyle mStyle;
	private string mTitle;
}
