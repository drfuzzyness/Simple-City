/*============================================================================== 
 * Copyright (c) 2012-2014 Qualcomm Connected Experiences, Inc. All Rights Reserved. 
 * ==============================================================================*/

using UnityEngine;
using System.Collections;
using Vuforia;

/// <summary>
/// Displays splash image with appropriate size for different device resolutions
/// This class currently supports only portrait orientation
/// </summary>
public class SplashScreenView : ISampleAppUIView
{
    #region PRIVATE_MEMBER_VARIABLES
    private Texture2D mAndroidPotrait;
    private Texture2D mWindowsPlayModeTexture;
	private GUIStyle m_SplashStyle;
	Texture2D[] iPhoneImages;
    #endregion PRIVATE_MEMBER_VARIABLES
    
    #region ISampleAppUIView implementation
    public void LoadView ()
    {
		mAndroidPotrait = Resources.Load("SplashScreen/AndroidPotrait") as Texture2D;
		mWindowsPlayModeTexture = Resources.Load("SplashScreen/WindowsPlayModePotrait") as Texture2D;

		iPhoneImages = new Texture2D[3];
		iPhoneImages[0] = Resources.Load("SplashScreen/PotraitTextureIPhone") as Texture2D;
		iPhoneImages[1] = Resources.Load("SplashScreen/PotraitTextureIPhone5") as Texture2D;
		iPhoneImages[2] = Resources.Load("SplashScreen/PotraitTextureIPad") as Texture2D;

		m_SplashStyle = new GUIStyle();
		m_SplashStyle.normal.background = PickImageWithBestAspect(iPhoneImages);
    }

    public void UnLoadView ()
    {
        Resources.UnloadAsset(mAndroidPotrait);
        Resources.UnloadAsset(mWindowsPlayModeTexture);
        Resources.UnloadAsset(iPhoneImages[0]);
        Resources.UnloadAsset(iPhoneImages[1]);
        Resources.UnloadAsset(iPhoneImages[2]);
    }

    public void UpdateUI (bool tf)
    {
        if(!tf)
            return;
        
        if (VuforiaRuntimeUtilities.IsPlayMode() && (mWindowsPlayModeTexture != null))
        {
            GUI.DrawTexture(new Rect(0, 0, Screen.width, Screen.height), mWindowsPlayModeTexture);
        }
        else 
        {
            #if (UNITY_IPHONE || UNITY_IOS)

			float textureWidth = m_SplashStyle.normal.background.width;
			float textureHeight = m_SplashStyle.normal.background.height;

			float height = Screen.height;
			float width = (height * textureWidth) / textureHeight;
			float x = (Screen.width - width) / 2;
			GUI.Box(new Rect(x, 0, width, height), "", m_SplashStyle);

            #else   
            
                if (mAndroidPotrait != null)
                {
                    GUI.DrawTexture(new Rect(0, 0, Screen.width, Screen.height), mAndroidPotrait, ScaleMode.ScaleAndCrop);
                }

            #endif
        }
    }

	private Texture2D PickImageWithBestAspect(Texture2D[] splashImages)
	{
		Texture2D bestImage = splashImages[0];
		float diff = 1; //Maximum value;
		foreach(Texture2D image in splashImages)
		{
			float texWidth = image.width;
			float texHeight = image.height;
			float texAspect = texHeight / texWidth;
			float screenAspect = (float)Screen.height/Screen.width;

			if( Mathf.Abs(texAspect - screenAspect) < diff )
			{
				diff = Mathf.Abs(texAspect - screenAspect);
				bestImage = image;
			}

		}
		return bestImage;
	}

    
    #endregion ISampleAppUIView implementation
}

