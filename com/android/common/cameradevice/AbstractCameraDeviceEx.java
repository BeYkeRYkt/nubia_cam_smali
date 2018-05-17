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

public abstract class AbstractCameraDeviceEx implements C0082f {
    protected Camera GT = null;
    protected C0382m GU = null;
    protected C0086j GV;

    public AbstractCameraDeviceEx(Camera camera) {
        this.GT = camera;
    }

    public void Ff(C0382m c0382m) {
        this.GU = c0382m;
    }

    public Camera Fb() {
        return this.GT;
    }

    public void release() {
        this.GV = null;
        this.GT.release();
        this.GT = null;
        this.GU = null;
    }

    public void Fd() {
        this.GT.reconnect();
    }

    public void Fv() {
        this.GT.unlock();
    }

    public void Fc() {
        this.GT.lock();
    }

    public void Fg(int i) {
        this.GT.setDisplayOrientation(i);
    }

    public void Fn(SurfaceHolder surfaceHolder) {
        this.GT.setPreviewDisplay(surfaceHolder);
    }

    public void Fo(SurfaceTexture surfaceTexture) {
        this.GT.setPreviewTexture(surfaceTexture);
    }

    public void Fr() {
        this.GT.startPreview();
    }

    public void Ft() {
        this.GT.stopPreview();
    }

    public void Fj(PreviewCallback previewCallback) {
        this.GT.setOneShotPreviewCallback(previewCallback);
    }

    public void Fl(PreviewCallback previewCallback) {
        this.GT.setPreviewCallback(previewCallback);
    }

    public void Fm(PreviewCallback previewCallback) {
        this.GT.setPreviewCallbackWithBuffer(previewCallback);
    }

    public void EX(byte[] bArr) {
        this.GT.addCallbackBuffer(bArr);
    }

    public void EY(AutoFocusCallback autoFocusCallback) {
        this.GT.autoFocus(autoFocusCallback);
    }

    public void EZ() {
        this.GT.cancelAutoFocus();
    }

    public void Fe(AutoFocusMoveCallback autoFocusMoveCallback) {
        this.GT.setAutoFocusMoveCallback(autoFocusMoveCallback);
    }

    public void Fu(ShutterCallback shutterCallback, PictureCallback pictureCallback, PictureCallback pictureCallback2, PictureCallback pictureCallback3) {
        this.GT.takePicture(shutterCallback, pictureCallback, pictureCallback2, pictureCallback3);
    }

    public void Fp(OnZoomChangeListener onZoomChangeListener) {
        this.GT.setZoomChangeListener(onZoomChangeListener);
    }

    public void Fi(FaceDetectionListener faceDetectionListener) {
        this.GT.setFaceDetectionListener(faceDetectionListener);
    }

    public void Fq() {
        this.GT.startFaceDetection();
    }

    public void Fs() {
        this.GT.stopFaceDetection();
    }

    public void Fh(ErrorCallback errorCallback) {
        this.GT.setErrorCallback(errorCallback);
    }

    public void Fk(C0086j c0086j) {
        this.GT.setParameters(c0086j.Gp());
    }

    public void Fa(boolean z) {
        this.GT.enableShutterSound(z);
    }
}
