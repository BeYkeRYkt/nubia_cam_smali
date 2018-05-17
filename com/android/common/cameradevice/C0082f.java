package com.android.common.cameradevice;

import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.hardware.Camera.AutoFocusMoveCallback;
import android.hardware.Camera.ErrorCallback;
import android.hardware.Camera.FaceDetectionListener;
import android.hardware.Camera.OnZoomChangeListener;
import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.PreviewCallback;
import android.hardware.Camera.ShutterCallback;
import android.view.SurfaceHolder;

public interface C0082f {
    void EX(byte[] bArr);

    void EY(AutoFocusCallback autoFocusCallback);

    void EZ();

    void FL(byte[] bArr);

    void FM();

    C0086j FN();

    void FO(C0387s c0387s);

    void FP(boolean z);

    void FQ(C0321g c0321g);

    void FR(C0376b c0376b, PictureCallback pictureCallback);

    void FS(C0326h c0326h);

    void FT();

    void FU();

    void Fa(boolean z);

    Camera Fb();

    void Fc();

    void Fd();

    void Fe(AutoFocusMoveCallback autoFocusMoveCallback);

    void Ff(C0382m c0382m);

    void Fg(int i);

    void Fh(ErrorCallback errorCallback);

    void Fi(FaceDetectionListener faceDetectionListener);

    void Fj(PreviewCallback previewCallback);

    void Fk(C0086j c0086j);

    void Fl(PreviewCallback previewCallback);

    void Fm(PreviewCallback previewCallback);

    void Fn(SurfaceHolder surfaceHolder);

    void Fo(SurfaceTexture surfaceTexture);

    void Fp(OnZoomChangeListener onZoomChangeListener);

    void Fq();

    void Fr();

    void Fs();

    void Ft();

    void Fu(ShutterCallback shutterCallback, PictureCallback pictureCallback, PictureCallback pictureCallback2, PictureCallback pictureCallback3);

    void Fv();

    void release();
}
