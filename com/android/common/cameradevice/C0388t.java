package com.android.common.cameradevice;

import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.ShutterCallback;
import com.p010a.C0090a;

final class C0388t implements Runnable {
    final /* synthetic */ C0382m Il;
    final /* synthetic */ ShutterCallback Im;
    final /* synthetic */ PictureCallback In;
    final /* synthetic */ PictureCallback Io;
    final /* synthetic */ PictureCallback Ip;
    final /* synthetic */ String Iq;

    C0388t(C0382m c0382m, ShutterCallback shutterCallback, PictureCallback pictureCallback, PictureCallback pictureCallback2, PictureCallback pictureCallback3, String str) {
        this.Il = c0382m;
        this.Im = shutterCallback;
        this.In = pictureCallback;
        this.Io = pictureCallback2;
        this.Ip = pictureCallback3;
        this.Iq = str;
    }

    public void run() {
        try {
            this.Il.Hw.Hn.Fu(this.Im, this.In, this.Io, this.Ip);
            this.Il.Hw.Ht.Fx();
        } catch (Exception e) {
            if (this.Il.Hw.Hq) {
                C0090a.m0d("CameraManager", this.Iq);
            }
            throw e;
        }
    }
}
