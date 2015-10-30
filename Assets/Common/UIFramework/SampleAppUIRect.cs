/*============================================================================== 
 * Copyright (c) 2012-2014 Qualcomm Connected Experiences, Inc. All Rights Reserved. 
 * ==============================================================================*/
using UnityEngine;
using System.Collections;

/// <summary>
/// Custom rectangle for drawing Unity GUI elements. It scales everything to device screen width.
/// </summary>
public class SampleAppUIRect
{
    public Rect rect
    {
        get {
            return new Rect(mX * Screen.width, mY * Screen.width, mWidth * Screen.width, mHeight * Screen.width);
        }
    }
    
    public SampleAppUIRect(float x, float y, float W, float H)
    {
        mX = x;
        mY = y;
        mWidth = W;
        mHeight = H;
    }
    
    private float mX;
    private float mY;
    private float mWidth;
    private float mHeight;
    
}
