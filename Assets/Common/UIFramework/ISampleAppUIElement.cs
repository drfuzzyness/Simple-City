/*============================================================================== 
 * Copyright (c) 2012-2014 Qualcomm Connected Experiences, Inc. All Rights Reserved. 
 * ==============================================================================*/

using UnityEngine;
using System.Collections;

/// <summary>
/// Custom ISampleAppUIElement that encapsulates Unity GUI Elements and runs a custom Draw() call.
/// All UIElements for this application must implement this interface
/// </summary>
public abstract class ISampleAppUIElement 
{
    public virtual void Draw()
	{
	}

	public Font font
	{ 
		get {
			#if UNTY_EDITOR
			return Resources.Load("SourceSansPro-Regular") as Font;
			#else
			if(Screen.dpi > 260) {
				return Resources.Load("SourceSansPro-Regular_big_xhdpi") as Font;
			}
			else if (Screen.height == 1848 && Screen.width == 1200){
				return Resources.Load("SourceSansPro-Regular_big_xhdpi") as Font;
			}
			else {
				return Resources.Load("SourceSansPro-Regular") as Font;
			}
			#endif
		}
	}
	
	public virtual float Height 
	{ 
		get {
			return 0;
		}
		set {
			
		}
	}
	
	public virtual float Width 
	{ 
		get {
			return 0;
		}
		set {
			
		}
	}
}

