/*============================================================================== 
 * Copyright (c) 2012-2014 Qualcomm Connected Experiences, Inc. All Rights Reserved. 
 * ==============================================================================*/

using UnityEngine;
using System.Collections;

/// <summary>
/// Resource paths and UI sizes are stored here as static constants. 
/// </summary>
public class SampleAppUIConstants
{

    public static SampleAppUIRect RectLabelOne = new SampleAppUIRect(0, 0, 1, 96.0f / 800.0f);
    public static SampleAppUIRect RectLabelAbout = new SampleAppUIRect(0, 96.0f / 800.0f, 1, 80.0f / 800.0f);
    public static SampleAppUIRect RectOptionOne = new SampleAppUIRect(0, 178.0f / 800.0f, 1, 80.0f / 800.0f);
    public static SampleAppUIRect RectOptionTwo = new SampleAppUIRect(0, 260.0f / 800.0f, 1, 80.0f / 800.0f);
    public static SampleAppUIRect RectOptionThree = new SampleAppUIRect(0, 342.0f / 800.0f, 1, 80.0f / 800.0f);
    public static SampleAppUIRect RectLabelTwo = new SampleAppUIRect(0, 437.0f / 800.0f, 1, 53.0f / 800.0f);
    public static SampleAppUIRect RectOptionFour = new SampleAppUIRect(0, 490.0f / 800.0f, 1, 80.0f / 800.0f);
    public static SampleAppUIRect RectOptionFive = new SampleAppUIRect(0, 572.0f / 800.0f, 1, 80.0f / 800.0f);
    public static SampleAppUIRect RectLabelThree = new SampleAppUIRect(0, 669.0f / 800.0f, 1, 53.0f / 800.0f);
    public static SampleAppUIRect RectOptionSix = new SampleAppUIRect(0, 722.0f / 800.0f, 1, 80.0f / 800.0f);
    public static SampleAppUIRect RectOptionSeven = new SampleAppUIRect(0, 804.0f / 800.0f, 1, 80.0f / 800.0f);
    public static SampleAppUIRect RectOptionEight = new SampleAppUIRect(0, 920.0f / 800.0f, 1, 70.0f / 800.0f);
	
	public static SampleAppUIRect RectReset = new SampleAppUIRect(0, 506.0f / 800.0f, 1, 53.0f / 800.0f);
	
    public static Rect CloseButtonRect = new Rect(0, Screen.height - (100 * Screen.width) / 800.0f, Screen.width, (70.0f * Screen.width) / 800.0f);
    public static Rect BoxRect = new Rect(0, 0, Screen.width, Screen.height);

    public static SampleAppUIRect RectLabelFour = new SampleAppUIRect(0, 357.0f / 800.0f, 1, 53.0f / 800.0f);
    public static SampleAppUIRect RectOptionTen = new SampleAppUIRect(0, 410.0f / 800.0f, 1, 80.0f / 800.0f);
    public static SampleAppUIRect RectOptionEleven = new SampleAppUIRect(0, 492.0f / 800.0f, 1, 80.0f / 800.0f);
    public static SampleAppUIRect RectLabelFive = new SampleAppUIRect(0, 589.0f / 800.0f, 1, 53.0f / 800.0f);
    public static SampleAppUIRect RectOptionTwelve = new SampleAppUIRect(0, 642.0f / 800.0f, 1, 80.0f / 800.0f);
    public static SampleAppUIRect RectOptionThirteen = new SampleAppUIRect(0, 724.0f / 800.0f, 1, 80.0f / 800.0f);
    public static SampleAppUIRect RectOptionFourteen = new SampleAppUIRect(0, 806.0f / 800.0f, 1, 80.0f / 800.0f);
    public static SampleAppUIRect RectOptionFifteen = new SampleAppUIRect(0, 888.0f / 800.0f, 1, 80.0f / 800.0f);

    public static SampleAppUIRect RectOptionSixteen = new SampleAppUIRect(0, 424.0f / 800.0f, 1, 80.0f / 800.0f);
    public static SampleAppUIRect RectLabelSix = new SampleAppUIRect(0, 519.0f / 800.0f, 1, 53.0f / 800.0f);
    public static SampleAppUIRect RectOptionsSvnteen = new SampleAppUIRect(0, 572.0f / 800.0f, 1, 80.0f / 800.0f);
    public static SampleAppUIRect RectOptionsEighteen = new SampleAppUIRect(0, 654.0f / 800.0f, 1, 80.0f / 800.0f);


    public static string MainBackground = "UIStyles/main_background";

    public static string ImageTargetLabelStyle = "UIStyles/image_targets";
    public static string CylinderTargetLabelStyle = "UIStyles/cylinder_targets";
    public static string MultiTargetLabelStyle = "UIStyles/multi_targets";
    public static string FrameMarkerLabelStyle = "UIStyles/frame_markers";
    public static string TextRecognitionLabelStyle = "UIStyles/text_recognition";
    public static string VideoPlaybackLabelStyle = "UIStyles/video_playback";
    public static string VirtualButtonsLabelStyle = "UIStyles/virtual_buttons";
    public static string OcclusionManagementStyle = "UIStyles/occlusion_management";
    public static string BackgroundTextureStyle = "UIStyles/background_texture";
    public static string UDTTextureStyle = "UIStyles/userdefinedtarget";
    public static string Books = "UIStyles/books";
    public static string CloudRecognition = "UIStyles/cloud_recognition";

    public static string AboutLableStyle = "UIStyles/about";
    public static string ButtonsLabelStyle = "UIStyles/buttons_label";
    public static string ExtendedTrackingStyleOff = "UIStyles/TrackingOff";
    public static string ExtendedTrackingStyleOn = "UIStyles/TrackingOn";
    public static string CameraFlashStyleOff = "UIStyles/FlashOff";
    public static string CameraFlashStyleOn = "UIStyles/FlashOn";
    public static string AutoFocusStyleOn = "UIStyles/AutofocusOn";
    public static string AutoFocusStyleOff = "UIStyles/AutofocusOff";
    public static string PlayFullscreenModeOn = "UIStyles/playfullscreenOn";
    public static string PlayFullscreenModeOff = "UIStyles/playfullscreenOff";
    public static string CameraLabelStyle = "UIStyles/Camera";
    public static string CameraFacingFrontStyleOn = "UIStyles/FrontCameraOn";
    public static string CameraFacingFrontStyleOff = "UIStyles/FrontCameraOff";
    public static string CameraFacingRearStyleOn = "UIStyles/RearCameraOn";
    public static string CameraFacingRearStyleOff = "UIStyles/RearCameraOff";
    public static string StonesAndChipsStyleOn = "UIStyles/StonesChipsOn";
    public static string StonesAndChipsStyleOff = "UIStyles/StonesChipsOff";
    public static string TarmacOn = "UIStyles/TarmacOn";
    public static string TarmacOff = "UIStyles/TarmacOff";
    public static string DatasetLabelStyle = "UIStyles/Database";
    public static string closeButtonStyleOff = "UIStyles/ButtonOff";
    public static string closeButtonStyleOn = "UIStyles/ButtonOn";
    public static string CharacterModeStyleOn = "UIStyles/CharacterModeOn";
    public static string CharacterModeStyleOff = "UIStyles/CharacterModeOff";
	
	public static string TrackerOff = "UIStyles/TrackerOff";
	public static string TrackerOn = "UIStyles/TrackerOn";
	public static string MeshUpdatesOff = "UIStyles/MeshUpdatesOff";
	public static string MeshUpdatesOn = "UIStyles/MeshUpdatesOn";
	public static string SmartTerrainLabel = "UIStyles/SmartTerrain";
	public static string Reset = "UIStyles/Reset";
	

    public static string YellowButtonStyleOn = "UIStyles/YellowButtonOn";
    public static string YellowButtonStyleOff = "UIStyles/YellowButtonOff";
    public static string RedButtonStyleOn = "UIStyles/RedButtonOn";
    public static string RedButtonStyleOff = "UIStyles/RedButtonOff";
    public static string GreenButtonStyleOn = "UIStyles/GreenButtonOn";
    public static string GreenButtonStyleOff = "UIStyles/GreenButtonOff";
    public static string BlueButtonStyleOn = "UIStyles/BlueButtonOn";
    public static string BlueButtonStyleOff = "UIStyles/BlueButtonOff";

    public static string AboutTitleForImageTgt = "Image Targets";
    public static string AboutTitleFoMultiTgt = "Multi Targets";
    public static string AboutTitleForCylinderTgt = "Cylinder Targets";
    public static string AboutTitleForFrameMarkers = "Frame Markers";
    public static string AboutTitleForUDT = "User Defined Targets";
    public static string AboutTitleForTextReco = "Text Reco";
    public static string AboutTitleForCloudReco = "Cloud Reco";
    public static string AboutTitleForBooks = "Books";
    public static string AboutTitleForVirtualBtns = "Virtual Buttons";
    public static string AboutTitleForVideoBg = "Background Texture";
    public static string AboutTitleForVideoPb = "Video Playback";
    public static string AboutTitleForOcclusionMgt = "Occlusion Management";


}
