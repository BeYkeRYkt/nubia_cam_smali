package com.android.common.cameradevice;

import android.graphics.SurfaceTexture;
import android.hardware.Camera.AutoFocusCallback;
import android.hardware.Camera.AutoFocusMoveCallback;
import android.hardware.Camera.ErrorCallback;
import android.hardware.Camera.FaceDetectionListener;
import android.hardware.Camera.OnZoomChangeListener;
import android.hardware.Camera.PreviewCallback;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.SurfaceHolder;
import com.p010a.C0090a;
import com.umeng.analytics.ReportPolicy;
import java.io.IOException;

class C0381l extends Handler {
    final /* synthetic */ C0380k Hu;

    C0381l(C0380k c0380k, Looper looper) {
        this.Hu = c0380k;
        super(looper);
    }

    public void handleMessage(Message message) {
        if (this.Hu.Hn == null) {
            if (IG(message.what)) {
                C0090a.bvo("CameraManager", "Camera has released. Sync message just open signal");
                this.Hu.Ht.Fx();
            }
            return;
        }
        try {
            switch (message.what) {
                case 1:
                    this.Hu.Hn.release();
                    this.Hu.Hn = null;
                    this.Hu.Hp = null;
                    this.Hu.Hr = null;
                    break;
                case 2:
                    this.Hu.Hs = null;
                    try {
                        this.Hu.Hn.Fd();
                        break;
                    } catch (IOException e) {
                        this.Hu.Hs = e;
                        break;
                    }
                case 3:
                    this.Hu.Hn.Fv();
                    break;
                case 4:
                    this.Hu.Hn.Fc();
                    break;
                case 5:
                    this.Hu.Hn.Ft();
                    break;
                case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                    this.Hu.Hn.Fm((PreviewCallback) message.obj);
                    break;
                case 7:
                    this.Hu.Hn.EX((byte[]) message.obj);
                    break;
                case 8:
                    this.Hu.Hn.EY((AutoFocusCallback) message.obj);
                    break;
                case 9:
                    this.Hu.Hn.EZ();
                    break;
                case 10:
                    this.Hu.Hn.Fe((AutoFocusMoveCallback) message.obj);
                    break;
                case 11:
                    this.Hu.Hn.Fg(message.arg1);
                    break;
                case 12:
                    this.Hu.Hn.Fp((OnZoomChangeListener) message.obj);
                    break;
                case 13:
                    this.Hu.Hn.Fi((FaceDetectionListener) message.obj);
                    break;
                case 14:
                    this.Hu.Hn.Fq();
                    break;
                case 15:
                    this.Hu.Hn.Fs();
                    break;
                case 16:
                    this.Hu.Hn.Fh((ErrorCallback) message.obj);
                    break;
                case 17:
                    this.Hu.Hn.Fk((C0086j) message.obj);
                    break;
                case 18:
                    this.Hu.Hr = this.Hu.Hn.FN();
                    break;
                case 20:
                    this.Hu.Hn.Fa(((Boolean) message.obj).booleanValue());
                    break;
                case 21:
                    this.Hu.Hn.FP(((Boolean) message.obj).booleanValue());
                    break;
                case 22:
                    this.Hu.Hn.FL((byte[]) message.obj);
                    break;
                case 23:
                    this.Hu.Hn.Fr();
                    break;
                case 24:
                    this.Hu.Hn.Fj((PreviewCallback) message.obj);
                    break;
                case 25:
                    this.Hu.Hn.FS((C0326h) message.obj);
                    break;
                case 26:
                    this.Hu.Hn.FT();
                    break;
                case 27:
                    this.Hu.Hn.FU();
                    break;
                case 28:
                    this.Hu.Hn.FO((C0387s) message.obj);
                    break;
                case 29:
                    this.Hu.Hn.FM();
                    break;
                case 201:
                    C0383n c0383n = (C0383n) message.obj;
                    C0090a.bvm("CameraManager", "set raw callback, meta = " + c0383n.Hx + ", raw =" + c0383n.Hy);
                    this.Hu.Hn.FR(c0383n.Hx, c0383n.Hy);
                    break;
                case 202:
                    this.Hu.Hn.Fo((SurfaceTexture) message.obj);
                    break;
                case 203:
                    this.Hu.Hn.Fr();
                    break;
                case 204:
                    this.Hu.Hn.Fn((SurfaceHolder) message.obj);
                    break;
                case 205:
                    this.Hu.Hn.Fl((PreviewCallback) message.obj);
                    break;
                case 206:
                    this.Hu.Hn.FQ((C0321g) message.obj);
                    break;
                case 207:
                    this.Hu.Hn.Fk((C0086j) message.obj);
                    break;
            }
            if (IG(message.what)) {
                this.Hu.Ht.Fx();
            }
        } catch (Throwable e2) {
            throw new RuntimeException(e2);
        } catch (Throwable e22) {
            throw new RuntimeException(e22);
        } catch (RuntimeException e3) {
            if (!(message.what == 1 || this.Hu.Hn == null)) {
                try {
                    this.Hu.Hn.release();
                } catch (Exception e4) {
                    C0090a.m1e("CameraManager", "Fail to release the camera.");
                }
                this.Hu.Hn = null;
                this.Hu.Hp = null;
            }
            IH(message);
            throw e3;
        }
    }

    private void IH(Message message) {
        Bundle data = message.getData();
        if (data != null) {
            String string = data.getString("CameraManager");
            if (string != null && !"".equals(string)) {
                C0090a.m0d("CameraManager", string);
            }
        }
    }

    private boolean IG(int i) {
        return i >= 0 && i < 200;
    }
}
