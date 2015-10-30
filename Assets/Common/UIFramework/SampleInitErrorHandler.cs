/*==============================================================================
Copyright (c) 2012-2014 Qualcomm Connected Experiences, Inc.
All Rights Reserved.
==============================================================================*/

using System;
using System.Collections.Generic;
using UnityEngine;
using Vuforia;

/// <summary>
/// A class showing simple error messages.
/// Errors are queued and shown for a certain amount of time.
/// </summary>
public class SampleInitErrorHandler : MonoBehaviour
{

    #region NESTED

    /// <summary>
    /// Basic data describing an error message
    /// </summary>
    private struct ErrorData
    {
        public string Title;
        public string Text;
    }

    #endregion // NESTED

    private GUIStyle mErrorTitleMessage;
    private GUIStyle mErrorBodyMessage;
    private GUIStyle mErrorOkButton;
    private ErrorData mCurrentError;
    private AppManager mManager;
    VuforiaUnity.InitError mErrorcode;

    #region PRIVATE_MEMBER_VARIABLES

    #endregion // PRIVATE_MEMBER_VARIABLES



    #region PUBLIC_METHODS

    /// <summary>
    /// initilizes the class, loads UI skin and styles
    /// </summary>
    public void InitPopUp()
    {
        mErrorTitleMessage = new GUIStyle();
        mErrorBodyMessage = new GUIStyle();
        mErrorOkButton = new GUIStyle();

        mErrorTitleMessage.font = Resources.Load("SourceSansPro-Regular_Small") as Font;
        mErrorBodyMessage.font = Resources.Load("SourceSansPro-Regular_Small") as Font;
        mErrorOkButton.font = Resources.Load("SourceSansPro-Regular_Small") as Font;

        mErrorOkButton.alignment = TextAnchor.MiddleCenter;
        mErrorTitleMessage.alignment = TextAnchor.MiddleCenter;
        mErrorBodyMessage.alignment = TextAnchor.MiddleCenter;

        mErrorTitleMessage.normal.background = Resources.Load("UserInterface/grayTexture") as Texture2D;
        mErrorBodyMessage.normal.background = Resources.Load("UserInterface/white_texture") as Texture2D;
        mErrorOkButton.normal.background = Resources.Load("UserInterface/capture_button_normal_XHigh") as Texture2D;
        mErrorOkButton.normal.textColor = Color.white;
        mErrorBodyMessage.wordWrap = true;
    }

    /// <summary>
    /// This method draws the current error message and automatically pops new error messages 
    /// from the queue if the life time of the current error is over
    /// </summary>

    public void Draw()
    {
         int smallerScreenDimension = Screen.width < Screen.height ? Screen.width : Screen.height;
         float deviceDependentScale = smallerScreenDimension / 480f;

         Vector2 screenCenter = new Vector2(Screen.width / 2f, Screen.height / 2f);
         GUIUtility.ScaleAroundPivot(new Vector2(deviceDependentScale, deviceDependentScale), screenCenter);

         GUILayout.BeginArea(new Rect(Screen.width / 2 - 150, Screen.height / 2 - 120, 300, 240));
         GUI.Box(new Rect(0, 0, 300, 50), mCurrentError.Title, mErrorTitleMessage);

         GUI.Box(new Rect(0, 50, 300, 190), string.Empty, mErrorBodyMessage);

         GUILayout.BeginHorizontal();
         GUILayout.FlexibleSpace();
         GUI.Label(new Rect(1, 55, 300, 135), mCurrentError.Text, mErrorBodyMessage);

         GUILayout.FlexibleSpace();
         GUILayout.EndHorizontal();

         DrawPopUp();

         GUILayout.EndArea();

         // reset scale after drawing
         GUIUtility.ScaleAroundPivot(Vector2.one, screenCenter);
    }

    private void DrawPopUp()
    {
        if (mErrorcode == VuforiaUnity.InitError.INIT_LICENSE_ERROR_NO_NETWORK_TRANSIENT)
        {
            if (GUI.Button(new Rect(35, 185, 100, 40), "Close", mErrorOkButton))
            {
#if UNITY_EDITOR
                UnityEditor.EditorApplication.isPlaying = false;
#else
            Application.Quit();
#endif
            }

            if (GUI.Button(new Rect(165, 185, 100, 40), "Retry", mErrorOkButton))
            {
                Application.LoadLevel(0);
            }
        }
        else
        {
            if (GUI.Button(new Rect(75, 185, 150, 50), "Close", mErrorOkButton))
            {
#if UNITY_EDITOR
                UnityEditor.EditorApplication.isPlaying = false;
#else
            Application.Quit();
#endif
            }
        }
        
    }

    public void SetErrorCode(VuforiaUnity.InitError errorCode)
    {
        mCurrentError = new ErrorData();
        mCurrentError.Title = "Vuforia Initialization Error";
        mCurrentError.Text = "";
        Debug.LogError("Vuforia initialization failed: " + errorCode);
        mErrorcode = errorCode;
        switch (errorCode)
        {
            case VuforiaUnity.InitError.INIT_LICENSE_ERROR_MISSING_KEY:
                mCurrentError.Text =
                      "Vuforia App key is missing. Please get a valid key, by logging into your account at developer.vuforia.com and creating a new project ";
                break;
#if (UNITY_IPHONE || UNITY_IOS)
            case VuforiaUnity.InitError.INIT_NO_CAMERA_ACCESS:
                 mCurrentError.Text = 
                    "Camera Access was denied to this App. \n" + 
                    "When running on iOS8 devices, \n" + 
                    "users must explictly allow the App to access the camera.\n" + 
                    "To restore camera access on your device, go to: \n" + 
                    "Settings > Privacy > Camera > [This App Name] and switch it ON.";
                break;
#endif
            case VuforiaUnity.InitError.INIT_LICENSE_ERROR_INVALID_KEY:
                mCurrentError.Text =
                      " Invalid Key used. Please make sure you are using a valid Vuforia App Key";

                break;

            case VuforiaUnity.InitError.INIT_LICENSE_ERROR_NO_NETWORK_TRANSIENT:
                mCurrentError.Text =
                      "Unable to contact server. Please try again later.";

                break;

            case VuforiaUnity.InitError.INIT_LICENSE_ERROR_NO_NETWORK_PERMANENT:
                mCurrentError.Text =
                      "No network available. Please make sure you are connected to the Internet.";

                break;

            case VuforiaUnity.InitError.INIT_LICENSE_ERROR_CANCELED_KEY:
                mCurrentError.Text = "This app license key has been canceled and may no longer be used. Please get a new license key";
                break;

            case VuforiaUnity.InitError.INIT_ERROR:
                mCurrentError.Text = "Failed to initialize Vuforia.";
                break;

            case VuforiaUnity.InitError.INIT_LICENSE_ERROR_PRODUCT_TYPE_MISMATCH:
                mCurrentError.Text =
                    "Vuforia App key is not valid for this product. Please get a valid key, " +
                    "by logging into your account at developer.vuforia.com and choosing the " +
                    "right product type during project creation";
                break;
        }
    }


    #endregion // PUBLIC_METHODS
}
