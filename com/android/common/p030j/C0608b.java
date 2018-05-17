package com.android.common.p030j;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Message;
import com.android.common.ActivityBase;
import com.android.common.C0636m;
import com.android.common.p016a.C0291h;
import com.p010a.C0090a;

public class C0608b {
    private ActivityBase YR;
    private boolean YS = false;
    private C0612f YT = null;
    private Bitmap YU = null;
    private String YV = null;
    private Handler YW;
    private C0610d YX;
    private int YY;
    private C0291h YZ = new C0609c();
    private Integer Za = Integer.valueOf(0);
    private C0611e Zb = null;
    private float[] Zc = new float[16];
    private boolean Zd = false;
    private int Ze;

    public C0608b(ActivityBase activityBase) {
        this.Zb = new C0611e(activityBase);
        this.YR = activityBase;
        this.YX = new C0610d(this);
        this.YX.start();
        this.YW = new Handler(this.YX.getLooper(), new C0614h(this));
    }

    public void release() {
        C0090a.bvo("VideoMakerRender", "release");
        this.YW.removeCallbacksAndMessages(null);
        this.YX.quit();
        this.YX = null;
        this.YW = null;
        synchronized (this.Za) {
            this.Za = Integer.valueOf(0);
        }
    }

    public void agw() {
        C0090a.m1e("llw", "tackPicture");
        this.YV = C0636m.aqq();
        this.YR.arz(this.YZ);
        agr();
    }

    public void agx(byte[] bArr, int i) {
        C0090a.bvo("VideoMakerRender", "takePicture with jpeg");
        this.YV = C0636m.aqq();
        synchronized (this.Za) {
            if (this.Za.intValue() >= 10) {
                C0090a.bvo("VideoMakerRender", "drop jpeg");
                return;
            }
            this.Za = Integer.valueOf(this.Za.intValue() + 1);
            Message obtainMessage = this.YW.obtainMessage(3);
            obtainMessage.obj = bArr;
            obtainMessage.arg1 = i;
            obtainMessage.sendToTarget();
        }
    }

    public void agq(Bitmap bitmap, String str) {
        C0090a.m1e("llw", "tackPicture with bitmap");
        this.YU = bitmap;
        this.YV = str;
        this.YW.sendEmptyMessage(0);
        agr();
    }

    private void agr() {
        if (((double) this.Zb.agR()) > 3.9728447488E9d) {
            C0090a.m1e("VideoMakerRender", "video file size arrive limit. create a new file!");
            this.YW.sendEmptyMessage(2);
        }
    }

    public void stop() {
        C0090a.m1e("llw", "stop");
        this.YR.arA(this.YZ);
        this.YW.sendEmptyMessage(2);
    }

    public void cancel() {
        C0090a.bvm("woo", "cancel");
        stop();
        this.Zb.agS();
    }

    public void agp(int i) {
        if (this.Zb != null) {
            this.Zb.agT(i);
        }
    }

    private void agu() {
        if (this.Zd || this.YS) {
            if (this.Zb != null) {
                this.Zb.stop();
            }
            this.Zd = false;
            this.YT = null;
            this.YS = false;
        }
    }

    private void agt() {
        C0090a.m1e("llw", "drawBitmap");
        if (agv() != null) {
            agv().ahe(this.YU);
        }
        this.YU = null;
    }

    private C0612f agv() {
        if (this.YT == null && this.YU != null) {
            int i = 0;
            if (this.Zd) {
                i = this.YR.arB().To();
            }
            this.YT = new C0612f(this.YU.getWidth(), this.YU.getHeight(), this.Zb, this.YV, i);
        }
        return this.YT;
    }

    private Bitmap ags(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if ((width & 15) != 0) {
            width = ((width >> 4) + 1) << 4;
        }
        if ((height & 15) != 0) {
            height = ((height >> 4) + 1) << 4;
        }
        if (width == bitmap.getWidth() && height == bitmap.getHeight()) {
            return bitmap;
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Config.ARGB_8888);
        new Canvas(createBitmap).drawBitmap(bitmap, 0.0f, 0.0f, null);
        return createBitmap;
    }
}
