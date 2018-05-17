package com.android.camera;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.ConditionVariable;
import android.os.IBinder;
import cn.nubia.gallery3d.data.C0050a;
import com.android.common.p028h.C0562f;
import com.p010a.C0090a;

final class C0152F implements ServiceConnection {
    final /* synthetic */ Camera aJt;
    final /* synthetic */ ConditionVariable aJu;

    C0152F(Camera camera, ConditionVariable conditionVariable) {
        this.aJt = camera;
        this.aJu = conditionVariable;
    }

    public void onServiceDisconnected(ComponentName componentName) {
        C0090a.bvo("nubiaCamera", "onServiceDisconnected");
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        C0090a.bvo("nubiaCamera", "onServiceConnected");
        try {
            C0562f.Yv = C0050a.bMc(iBinder).getCameraForSelection();
        } catch (Exception e) {
            C0090a.m1e("nubiaCamera", "getCameraForSelection fail " + e.getMessage());
        }
        C0090a.bvo("nubiaCamera", "unbindService cn.nubia.gallery3d.commonservice");
        this.aJt.unbindService(this);
        this.aJu.open();
    }
}
