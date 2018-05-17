package com.amap.api.location;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.loc.bH;
import com.loc.bx;
import com.loc.cv;

public class APSService extends Service {
    C0097e bcW;

    public void bvg(Context context) {
        try {
            Context context2 = context;
            this.bcW = (C0097e) bH.bCj(context2, bx.m434a("2.5.1"), "com.amap.api.location.APSServiceWrapper", cv.class, new Class[]{Context.class}, new Object[]{context});
        } catch (Throwable th) {
        }
        try {
            if (this.bcW == null) {
                this.bcW = new cv(this);
            }
            this.bcW.onCreate();
        } catch (Throwable th2) {
            bx.bBw(th2, "APSService", "onCreate");
        }
        super.onCreate();
    }

    public IBinder onBind(Intent intent) {
        try {
            return this.bcW.onBind(intent);
        } catch (Throwable th) {
            bx.bBw(th, "APSService", "onBind");
            return null;
        }
    }

    public void onCreate() {
        bvg(this);
    }

    public void onDestroy() {
        try {
            this.bcW.onDestroy();
        } catch (Throwable th) {
            bx.bBw(th, "APSService", "onDestroy");
        }
        super.onDestroy();
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        try {
            return this.bcW.onStartCommand(intent, i, i2);
        } catch (Throwable th) {
            bx.bBw(th, "APSService", "onStartCommand");
            return super.onStartCommand(intent, i, i2);
        }
    }
}
