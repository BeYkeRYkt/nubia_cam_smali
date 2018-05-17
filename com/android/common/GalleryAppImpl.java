package com.android.common;

import android.app.Application;
import android.app.KeyguardManager.KeyguardLock;
import com.android.common.cameradevice.C0379e;
import com.android.common.independentutil.IndependenceUtil;

public class GalleryAppImpl extends Application {
    private KeyguardLock akc = null;

    public void onCreate() {
        super.onCreate();
        IndependenceUtil.anw(this);
        C0379e.FI().FK(this);
    }
}
