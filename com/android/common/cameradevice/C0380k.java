package com.android.common.cameradevice;

import android.hardware.Camera;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemProperties;
import android.util.Log;
import com.android.common.C0616j;
import com.android.common.independentutil.IndependenceUtil;
import com.p010a.C0090a;
import java.io.IOException;

public class C0380k {
    protected C0082f Hn;
    private Handler Ho;
    private C0382m Hp;
    private boolean Hq = Log.isLoggable("CameraManager", 3);
    protected C0086j Hr;
    private IOException Hs;
    private C0377c Ht = new C0377c();

    public C0380k(int i) {
        HandlerThread handlerThread = new HandlerThread(i + " 's Camera Handler Thread");
        handlerThread.start();
        this.Ho = new C0381l(this, handlerThread.getLooper());
    }

    protected C0382m Ix(int i) {
        Camera openLegacy;
        try {
            if ((IndependenceUtil.afZ || IndependenceUtil.agz) && !C0616j.ahq) {
                C0090a.bvo("CameraManager", "open camera: legacy");
                openLegacy = Camera.openLegacy(i, 256);
                this.Hn = C0379e.FI().FG(openLegacy);
                if (openLegacy == null) {
                    this.Hp = new C0382m(this, i);
                } else {
                    this.Hp = null;
                }
                this.Hn.Ff(this.Hp);
                return this.Hp;
            }
            C0090a.bvo("CameraManager", "open camera: normal");
            openLegacy = Camera.open(i);
            this.Hn = C0379e.FI().FG(openLegacy);
            if (openLegacy == null) {
                this.Hp = null;
            } else {
                this.Hp = new C0382m(this, i);
            }
            this.Hn.Ff(this.Hp);
            return this.Hp;
        } catch (Throwable e) {
            String str = SystemProperties.get("ro.product.board");
            if (str == null || !(str.contains("msm8994") || str.contains("msm8952") || str.contains("msm8996"))) {
                C0090a.bvi("CameraManager", "openLegacy failed. Using open instead", e);
                openLegacy = Camera.open(i);
            } else {
                C0090a.bvo("CameraManager", "OpenLegacy failed and product board is " + str + ", just throw.");
                throw e;
            }
        }
    }

    private void Iy(Message message) {
        if (this.Hq) {
            Bundle data = message.getData();
            if (data == null) {
                data = new Bundle();
                message.setData(data);
            }
            data.putString("CameraManager", Log.getStackTraceString(new Throwable()));
        }
    }
}
