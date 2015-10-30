/*============================================================================== 
 * Copyright (c) 2012-2014 Qualcomm Connected Experiences, Inc. All Rights Reserved. 
 * ==============================================================================*/
using UnityEngine;
using System.Collections;
using Vuforia;

/// <summary>
/// This class manages different views in the scene like AboutPage, SplashPage and ARCameraView.
/// All of its Init, Update and Draw calls take place via SceneManager's Monobehaviour calls to ensure proper sync across all updates
/// </summary>
public class AppManager : MonoBehaviour
{

    #region PUBLIC_MEMBER_VARIABLES
    public string TitleForAboutPage = "About";
    public ISampleAppUIEventHandler m_UIEventHandler;
    #endregion PUBLIC_MEMBER_VARIABLES

    #region PROTECTED_MEMBER_VARIABLES
    public static ViewType mActiveViewType;
    public enum ViewType { SPLASHVIEW, ABOUTVIEW, UIVIEW, ARCAMERAVIEW };
    
    #endregion PROTECTED_MEMBER_VARIABLES

    #region PRIVATE_MEMBER_VARIABLES
    private SplashScreenView mSplashView;
    private AboutScreenView mAboutView;
    private float mSecondsVisible = 4.0f;
    #endregion PRIVATE_MEMBER_VARIABLES

    //This gets called from SceneManager's Start() 
    public virtual void InitManager()
    {
        mSplashView = new SplashScreenView();
        mAboutView = new AboutScreenView();
        mAboutView.SetTitle(TitleForAboutPage);
        mAboutView.OnStartButtonTapped += OnAboutStartButtonTapped;
        m_UIEventHandler.CloseView += OnTappedOnCloseButton;
        m_UIEventHandler.GoToAboutPage += OnTappedOnGoToAboutPage;
        InputController.SingleTapped += OnSingleTapped;
        InputController.DoubleTapped += OnDoubleTapped;
        InputController.BackButtonTapped += OnBackButtonTapped;

        mSplashView.LoadView();
        StartCoroutine(LoadAboutPageForFirstTime());
        mActiveViewType = ViewType.SPLASHVIEW;
    }

    public virtual void DeInitManager()
    {
        mSplashView.UnLoadView();
        mAboutView.UnLoadView();
        m_UIEventHandler.CloseView -= OnAboutStartButtonTapped;
        m_UIEventHandler.GoToAboutPage -= OnTappedOnGoToAboutPage;
        InputController.SingleTapped -= OnSingleTapped;
        InputController.DoubleTapped -= OnDoubleTapped;
        InputController.BackButtonTapped -= OnBackButtonTapped;

        m_UIEventHandler.UnBind();
    }

    public virtual void UpdateManager()
    {
        //Does nothing but anyone extending AppManager can run their update calls here
    }

    public virtual void Draw()
    {
        m_UIEventHandler.UpdateView(false);
        switch (mActiveViewType)
        {
            case ViewType.SPLASHVIEW:
                mSplashView.UpdateUI(true);
                break;

            case ViewType.ABOUTVIEW:
                mAboutView.UpdateUI(true);
                break;

            case ViewType.UIVIEW:
                m_UIEventHandler.UpdateView(true);
                break;

            case ViewType.ARCAMERAVIEW:
                break;
        }
    }

    #region UNITY_MONOBEHAVIOUR_METHODS

    #endregion UNITY_MONOBEHAVIOUR_METHODS

    #region PRIVATE_METHODS

    private void OnSingleTapped()
    {
        if (mActiveViewType == ViewType.ARCAMERAVIEW)
        {
            // trigger focus once
            m_UIEventHandler.TriggerAutoFocus();
        }
    }

    private void OnDoubleTapped()
    {
        if (mActiveViewType == ViewType.ARCAMERAVIEW)
        {
            mActiveViewType = ViewType.UIVIEW;
        }
    }

    private void OnTappedOnGoToAboutPage()
    {
        mActiveViewType = ViewType.ABOUTVIEW;
    }

    private void OnBackButtonTapped()
    {
        if (mActiveViewType == ViewType.ABOUTVIEW)
        {
            Application.Quit();
        }
        else if (mActiveViewType == ViewType.UIVIEW) //Hide UIMenu and Show ARCameraView
        {
            mActiveViewType = ViewType.ARCAMERAVIEW;
        }
        else if (mActiveViewType == ViewType.ARCAMERAVIEW) //if it's in ARCameraView
        {
            mActiveViewType = ViewType.ABOUTVIEW;
        }

    }

    private void OnTappedOnCloseButton()
    {
        mActiveViewType = ViewType.ARCAMERAVIEW;
    }

    private void OnAboutStartButtonTapped()
    {
        mActiveViewType = ViewType.ARCAMERAVIEW;
    }

    private IEnumerator LoadAboutPageForFirstTime()
    {
        yield return new WaitForSeconds(mSecondsVisible);
        mSplashView.UnLoadView();
        mAboutView.LoadView();
        mActiveViewType = ViewType.ABOUTVIEW;
        m_UIEventHandler.Bind();
        yield return null;
    }
    #endregion PRIVATE_METHODS

}
