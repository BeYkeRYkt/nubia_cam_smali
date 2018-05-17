package com.fotonation.vfb;

import com.android.common.p027g.C0535a;
import com.fotonation.utils.Size;
import com.p010a.C0090a;

public class VfbHandler {
    private static final String TAG = "VfbHandler";
    private static int frameID = 0;
    private int mEyeCircleLevel = 0;
    private int mEyeEnlargementLevel = 0;
    private C0535a mFaceBeautyRenderer;
    private int mPreviewHeight = -1;
    private int mPreviewWidth = -1;
    private int mSlimmingLevel = 0;
    private int mSmartColorLevel = 0;
    private int mSmartLightLevel = 0;
    private int mSmoothingLevel = 0;
    private int mToningLevel = 0;
    private VfbEngineCtx mVfbEngine = null;
    private int mViewHeight = -1;
    private int mViewWidth = -1;
    private VfbConfig vfbConfig;

    public boolean initializeVfbEngine(boolean z, C0535a c0535a) {
        if (c0535a == null) {
            C0090a.bvo(TAG, "rootView == null");
            return false;
        }
        this.mFaceBeautyRenderer = c0535a;
        C0090a.bvo(TAG, "initializeVfbEngine() - queueEvent() - before");
        boolean _initializeVfbEngine = _initializeVfbEngine(z);
        C0090a.bvo(TAG, "initializeVfbEngine() - queueEvent() - after");
        return _initializeVfbEngine;
    }

    public void destroyVfbEngine() {
        if (this.mFaceBeautyRenderer == null) {
            C0090a.bvo(TAG, "destroyVfbEngine: mRootView is null. vfb engone already destroyed.");
            return;
        }
        C0090a.bvo(TAG, "destroyVfbEngine() - executeAndWait() - before");
        _destroyVfbEngine();
        this.mFaceBeautyRenderer = null;
        C0090a.bvo(TAG, "destroyVfbEngine() - executeAndWait() - after");
    }

    public void destroyVfbEngineForPause() {
        if (this.mFaceBeautyRenderer != null) {
            _destroyVfbEngineForPause();
            this.mFaceBeautyRenderer = null;
        }
    }

    private synchronized void _destroyVfbEngineForPause() {
        this.mPreviewWidth = -1;
        this.mPreviewHeight = -1;
        this.mViewWidth = -1;
        this.mViewHeight = -1;
        if (this.mVfbEngine != null) {
            this.mVfbEngine.destroy();
            this.mVfbEngine = null;
        }
    }

    public synchronized void setViewSize(int i, int i2) {
        if (i == this.mViewWidth && i2 == this.mViewHeight) {
            C0090a.bvo(TAG, "setViewSize() - called with the same parameters");
            return;
        }
        this.mViewWidth = i;
        this.mViewHeight = i2;
        C0090a.bvo(TAG, "setViewSize() - before");
        this.mVfbEngine.setViewSize(i, i2);
        C0090a.bvo(TAG, "setViewSize() - after");
    }

    public synchronized boolean setPreviewSize(int i, int i2) {
        if (i == this.mPreviewWidth && i2 == this.mPreviewHeight) {
            C0090a.bvo(TAG, "setPreviewSize() - called with the same parameters");
            return true;
        }
        this.mPreviewWidth = i;
        this.mPreviewHeight = i2;
        C0090a.bvo(TAG, "setPreviewSize() - before");
        boolean previewSize = this.mVfbEngine.setPreviewSize(i, i2);
        C0090a.bvo(TAG, "setPreviewSize() - after");
        return previewSize;
    }

    public synchronized boolean process(float[] fArr, int i, int i2, int i3) {
        VfbEngineCtx vfbEngineCtx;
        int i4;
        vfbEngineCtx = this.mVfbEngine;
        i4 = frameID;
        frameID = i4 + 1;
        return vfbEngineCtx.processTexture(i4, i, i2, -180, null, fArr, i3);
    }

    public synchronized int getFaceCount() {
        if (this.mVfbEngine == null) {
            return 0;
        }
        return this.mVfbEngine.getFacesCnt();
    }

    public synchronized boolean getFaces(VfbFaceArray vfbFaceArray) {
        return this.mVfbEngine.getFaces(vfbFaceArray);
    }

    public synchronized boolean isRunning() {
        return this.mVfbEngine != null;
    }

    public int getPreviewWidth() {
        return this.mPreviewWidth;
    }

    public int getPreviewHeight() {
        return this.mPreviewHeight;
    }

    private synchronized boolean _initializeVfbEngine(boolean z) {
        C0090a.bvo(TAG, "_initializeVfbEngine() - Called from thread id " + Thread.currentThread().getId());
        if (this.mVfbEngine != null) {
            C0090a.bvo(TAG, "_initializeVfbEngine() - already initialized!");
            return true;
        }
        C0090a.bvo(TAG, "_initializeVfbEngine() - new VfbEngineCtx()");
        this.mVfbEngine = new VfbEngineCtx();
        this.mPreviewWidth = this.mFaceBeautyRenderer.aew();
        this.mPreviewHeight = this.mFaceBeautyRenderer.aev();
        Size size = new Size(this.mPreviewWidth, this.mPreviewHeight);
        this.mViewWidth = this.mFaceBeautyRenderer.aew();
        this.mViewHeight = this.mFaceBeautyRenderer.aev();
        Size size2 = new Size(this.mViewWidth, this.mViewHeight);
        this.mViewWidth = size2.Width;
        this.mViewHeight = size2.Height;
        C0090a.bvo(TAG, "_initializeVfbEngine() - previewSize = (" + size2.Width + ", " + size2.Height + ")");
        if (this.mVfbEngine.create(size, size2, 0)) {
            C0090a.m0d(TAG, "_initializeVfbEngine() - mVfbEngine.create");
            this.vfbConfig = new VfbConfig();
            this.vfbConfig.smartColor = 0;
            this.vfbConfig.smartLight = 0;
            this.vfbConfig.skinSmoothing = 0;
            this.vfbConfig.skinToning = 0;
            this.vfbConfig.faceCount = 1;
            this.vfbConfig.allocate(1);
            this.vfbConfig.faceStrengths[0].faceID = 0;
            this.vfbConfig.faceStrengths[0].smoothing = 0;
            this.vfbConfig.faceStrengths[0].toning = 0;
            this.vfbConfig.faceStrengths[0].slimming = 0;
            this.vfbConfig.faceStrengths[0].eyeEnlargement = 0;
            this.vfbConfig.faceStrengths[0].eyeCircles = 0;
            this.mVfbEngine.setConfiguration(this.vfbConfig);
            this.mVfbEngine.setShowFaceRectangles(false, false);
            C0090a.m0d(TAG, "_initializeVfbEngine() - END");
            return true;
        }
        C0090a.m1e(TAG, "_initializeVfbEngine() - error initializing VFB");
        return false;
    }

    private synchronized void _destroyVfbEngine() {
        C0090a.bvo(TAG, "destroyVfbEngine() - Called from thread id " + Thread.currentThread().getId());
        this.mPreviewWidth = -1;
        this.mPreviewHeight = -1;
        this.mViewWidth = -1;
        this.mViewHeight = -1;
        if (this.mVfbEngine != null) {
            C0090a.bvo(TAG, "destroyVfbEngine() - mVfbEngine.destroy()");
            this.mVfbEngine.destroy();
            C0090a.bvo(TAG, "destroyVfbEngine() - after mVfbEngine.destroy()");
            this.mVfbEngine = null;
        }
        C0090a.bvo(TAG, "_destroyVfbEngine() - end");
    }

    public static Size getAdjustedViewSize(int i, int i2, int i3, int i4) {
        Size size = new Size(i3, i4);
        if ((i << 16) / i2 > (i4 << 16) / i3) {
            size.Height = (((i << 16) / i2) * i3) >> 16;
        } else {
            size.Width = (((i2 << 16) / i) * i4) >> 16;
        }
        return size;
    }

    public void setVfbEffectLevel(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        if (i != this.mSmoothingLevel || i2 != this.mToningLevel || i3 != this.mSlimmingLevel || i4 != this.mEyeEnlargementLevel || i5 != this.mEyeCircleLevel || i6 != this.mSmartLightLevel || i7 != this.mSmartColorLevel) {
            if (i != -1) {
                this.mSmoothingLevel = i;
            }
            if (i2 != -1) {
                this.mToningLevel = i2;
            }
            if (i3 != -1) {
                this.mSlimmingLevel = i3;
            }
            if (i4 != -1) {
                this.mEyeEnlargementLevel = i4;
            }
            if (i5 != -1) {
                this.mEyeCircleLevel = i5;
            }
            if (i6 != -1) {
                this.mSmartLightLevel = i6;
            }
            if (i7 != -1) {
                this.mSmartColorLevel = i7;
            }
            C0090a.bvo(TAG, "setVfbEffectLevel(), mSmoothingLevel: " + this.mSmoothingLevel);
            C0090a.bvo(TAG, "setVfbEffectLevel(), mToningLevel: " + this.mToningLevel);
            C0090a.bvo(TAG, "setVfbEffectLevel(), mSlimmingLevel: " + this.mSlimmingLevel);
            C0090a.bvo(TAG, "setVfbEffectLevel(), mEyeEnlargementLevel: " + this.mEyeEnlargementLevel);
            C0090a.bvo(TAG, "setVfbEffectLevel(), mEyeCircleLevel: " + this.mEyeCircleLevel);
            C0090a.bvo(TAG, "setVfbEffectLevel(), mSmartLightLevel: " + this.mSmartLightLevel);
            C0090a.bvo(TAG, "setVfbEffectLevel(), mSmartColorLevel: " + this.mSmartColorLevel);
            if (z && this.mVfbEngine != null) {
                this.vfbConfig.smartColor = this.mSmartColorLevel;
                this.vfbConfig.smartLight = this.mSmartLightLevel;
                this.vfbConfig.skinSmoothing = this.mSmoothingLevel;
                this.vfbConfig.skinToning = this.mToningLevel;
                this.vfbConfig.faceStrengths[0].smoothing = this.mSmoothingLevel;
                this.vfbConfig.faceStrengths[0].toning = this.mToningLevel;
                this.vfbConfig.faceStrengths[0].slimming = this.mSlimmingLevel;
                this.vfbConfig.faceStrengths[0].eyeEnlargement = 0;
                this.vfbConfig.faceStrengths[0].eyeCircles = 0;
                this.vfbConfig.faceStrengths[0].eyeEnhancement = 0;
                this.vfbConfig.faceStrengths[0].threeDLook = 0;
                this.mVfbEngine.setConfiguration(this.vfbConfig);
            }
        }
    }

    public void enableFaceRectangles(boolean z, boolean z2) {
        if (this.mVfbEngine != null) {
            this.mVfbEngine.setShowFaceRectangles(z, z2);
        }
    }

    public int getViewWidth() {
        return this.mViewWidth;
    }

    public int getViewHeight() {
        return this.mViewHeight;
    }
}
