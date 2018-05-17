package com.android.common.cameradevice;

import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.hardware.Camera.AutoFocusMoveCallback;
import android.hardware.Camera.ErrorCallback;
import android.hardware.Camera.FaceDetectionListener;
import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.PreviewCallback;
import android.hardware.Camera.ShutterCallback;
import android.os.Message;
import android.util.Log;
import android.view.SurfaceHolder;
import com.android.common.C0616j;
import com.android.common.independentutil.IndependenceUtil;

public class C0382m {
    private int Hv;
    final /* synthetic */ C0380k Hw;

    public C0382m(C0380k c0380k, int i) {
        this.Hw = c0380k;
        C0616j.apn(c0380k.Hn != null);
        this.Hv = i;
    }

    public int Jp() {
        return this.Hv;
    }

    public Camera IL() {
        return this.Hw.Hn.Fb();
    }

    public void release() {
        this.Hw.Ht.close();
        this.Hw.Ho.sendEmptyMessage(1);
        this.Hw.Ht.Fw();
    }

    public void Jq() {
        this.Hw.Ht.close();
        this.Hw.Ho.sendEmptyMessage(2);
        this.Hw.Ht.Fw();
        if (this.Hw.Hs != null) {
            throw this.Hw.Hs;
        }
    }

    public void Jf() {
        this.Hw.Ht.close();
        this.Hw.Ho.sendEmptyMessage(4);
        this.Hw.Ht.Fw();
    }

    public void II(SurfaceTexture surfaceTexture) {
        this.Hw.Ho.obtainMessage(202, surfaceTexture).sendToTarget();
    }

    public void Jc() {
        Message obtainMessage = this.Hw.Ho.obtainMessage(203);
        this.Hw.Iy(obtainMessage);
        obtainMessage.sendToTarget();
    }

    public void Jg() {
        this.Hw.Ht.close();
        this.Hw.Ho.sendEmptyMessage(23);
        this.Hw.Ht.Fw();
    }

    public void Jd() {
        this.Hw.Ht.close();
        this.Hw.Ho.sendEmptyMessage(5);
        this.Hw.Ht.Fw();
    }

    public void Jl(PreviewCallback previewCallback) {
        this.Hw.Ht.close();
        this.Hw.Ho.obtainMessage(24, previewCallback).sendToTarget();
        this.Hw.Ht.Fw();
    }

    public void Jm(PreviewCallback previewCallback) {
        this.Hw.Ho.obtainMessage(205, previewCallback).sendToTarget();
    }

    public void IW(C0321g c0321g) {
        this.Hw.Ho.obtainMessage(206, c0321g).sendToTarget();
    }

    public void Jn(PreviewCallback previewCallback) {
        this.Hw.Ht.close();
        this.Hw.Ho.obtainMessage(6, previewCallback).sendToTarget();
        this.Hw.Ht.Fw();
    }

    public void IK(byte[] bArr) {
        this.Hw.Ht.close();
        this.Hw.Ho.obtainMessage(7, bArr).sendToTarget();
        this.Hw.Ht.Fw();
    }

    public void IS(AutoFocusCallback autoFocusCallback) {
        this.Hw.Ht.close();
        this.Hw.Ho.obtainMessage(8, autoFocusCallback).sendToTarget();
        this.Hw.Ht.Fw();
    }

    public void IT() {
        this.Hw.Ht.close();
        this.Hw.Ho.sendEmptyMessage(9);
        this.Hw.Ht.Fw();
    }

    public void IU(AutoFocusMoveCallback autoFocusMoveCallback) {
        if (IndependenceUtil.anr()) {
            this.Hw.Ht.close();
            this.Hw.Ho.obtainMessage(10, autoFocusMoveCallback).sendToTarget();
            this.Hw.Ht.Fw();
        }
    }

    public void IO(ShutterCallback shutterCallback, PictureCallback pictureCallback, PictureCallback pictureCallback2, PictureCallback pictureCallback3) {
        this.Hw.Ht.close();
        String str = null;
        if (this.Hw.Hq) {
            str = Log.getStackTraceString(new Throwable());
        }
        this.Hw.Ho.post(new C0388t(this, shutterCallback, pictureCallback, pictureCallback2, pictureCallback3, str));
        this.Hw.Ht.Fw();
    }

    public void Jb(int i) {
        this.Hw.Ht.close();
        this.Hw.Ho.obtainMessage(11, i, 0).sendToTarget();
        this.Hw.Ht.Fw();
    }

    public void IV(FaceDetectionListener faceDetectionListener) {
        this.Hw.Ht.close();
        this.Hw.Ho.obtainMessage(13, faceDetectionListener).sendToTarget();
        this.Hw.Ht.Fw();
    }

    public void IZ() {
        this.Hw.Ht.close();
        this.Hw.Ho.sendEmptyMessage(14);
        this.Hw.Ht.Fw();
    }

    public void Ja() {
        this.Hw.Ht.close();
        this.Hw.Ho.sendEmptyMessage(15);
        this.Hw.Ht.Fw();
    }

    public void IY(ErrorCallback errorCallback) {
        this.Hw.Ht.close();
        this.Hw.Ho.obtainMessage(16, errorCallback).sendToTarget();
        this.Hw.Ht.Fw();
    }

    public void IQ(C0086j c0086j) {
        this.Hw.Ho.removeMessages(207);
        this.Hw.Ht.close();
        Message obtainMessage = this.Hw.Ho.obtainMessage(17, c0086j);
        this.Hw.Iy(obtainMessage);
        obtainMessage.sendToTarget();
        this.Hw.Ht.Fw();
    }

    public void Jo(C0086j c0086j) {
        this.Hw.Ho.removeMessages(207);
        this.Hw.Ho.obtainMessage(207, c0086j).sendToTarget();
    }

    public C0086j IP() {
        this.Hw.Ht.close();
        Message obtainMessage = this.Hw.Ho.obtainMessage(18);
        this.Hw.Iy(obtainMessage);
        obtainMessage.sendToTarget();
        this.Hw.Ht.Fw();
        return this.Hw.Hr;
    }

    public void IJ(SurfaceHolder surfaceHolder) {
        this.Hw.Ho.obtainMessage(204, surfaceHolder).sendToTarget();
    }

    public void IN(boolean z) {
        if (IndependenceUtil.afZ || IndependenceUtil.agp) {
            this.Hw.Ht.close();
            this.Hw.Ho.obtainMessage(20, Boolean.valueOf(z)).sendToTarget();
            this.Hw.Ht.Fw();
        }
    }

    public void Jh(boolean z) {
        if (IndependenceUtil.afZ || IndependenceUtil.agq) {
            this.Hw.Ht.close();
            this.Hw.Ho.obtainMessage(21, Boolean.valueOf(z)).sendToTarget();
            this.Hw.Ht.Fw();
        }
    }

    public void IR(byte[] bArr) {
        this.Hw.Ht.close();
        this.Hw.Ho.obtainMessage(22, bArr).sendToTarget();
        this.Hw.Ht.Fw();
    }

    public void IM(C0376b c0376b, PictureCallback pictureCallback) {
        this.Hw.Ho.obtainMessage(201, new C0383n(this.Hw, c0376b, pictureCallback)).sendToTarget();
    }

    public void Ji(C0326h c0326h) {
        this.Hw.Ht.close();
        this.Hw.Ho.obtainMessage(25, c0326h).sendToTarget();
        this.Hw.Ht.Fw();
    }

    public void Jj() {
        this.Hw.Ht.close();
        this.Hw.Ho.sendEmptyMessage(26);
        this.Hw.Ht.Fw();
    }

    public void Jk() {
        this.Hw.Ht.close();
        this.Hw.Ho.sendEmptyMessage(27);
        this.Hw.Ht.Fw();
    }

    public void IX(C0387s c0387s) {
        this.Hw.Ht.close();
        this.Hw.Ho.obtainMessage(28, c0387s).sendToTarget();
        this.Hw.Ht.Fw();
    }

    public void Je() {
        this.Hw.Ht.close();
        this.Hw.Ho.sendEmptyMessage(29);
        this.Hw.Ht.Fw();
    }
}
