package cn.qcom.camera;

import android.hardware.Camera;
import android.hardware.Camera.CameraMetaDataCallback;
import android.hardware.Camera.FaceDetectionListener;
import android.hardware.Camera.PictureCallback;
import com.android.common.cameradevice.AbstractCameraDeviceEx;
import com.android.common.cameradevice.C0086j;
import com.android.common.cameradevice.C0321g;
import com.android.common.cameradevice.C0326h;
import com.android.common.cameradevice.C0376b;
import com.android.common.cameradevice.C0387s;

public class QCOMCameraDeviceEx extends AbstractCameraDeviceEx {
    private C0085b btb = new C0085b();
    private C0084a btc = new C0084a();
    private C0326h btd = null;
    private boolean bte = false;

    public QCOMCameraDeviceEx(Camera camera) {
        super(camera);
    }

    public C0086j FN() {
        if (this.GV == null) {
            this.GV = new C0088c();
        }
        this.GV.Hr(this.GT.getParameters());
        return this.GV;
    }

    public void FP(boolean z) {
        this.GT.setLongshot(z);
    }

    public void FL(byte[] bArr) {
        this.GT.addRawImageCallbackBuffer(bArr);
    }

    public void FR(C0376b c0376b, PictureCallback pictureCallback) {
    }

    public void Fi(FaceDetectionListener faceDetectionListener) {
        FaceDetectionListener faceDetectionListener2 = null;
        this.btc.bQc(faceDetectionListener);
        Camera camera = this.GT;
        if (faceDetectionListener != null) {
            faceDetectionListener2 = this.btc;
        }
        camera.setFaceDetectionListener(faceDetectionListener2);
    }

    public void FS(C0326h c0326h) {
        this.btd = c0326h;
    }

    public void FT() {
        this.bte = true;
    }

    public void FU() {
        this.bte = false;
    }

    public void FO(C0387s c0387s) {
    }

    public void FM() {
    }

    public void FQ(C0321g c0321g) {
        CameraMetaDataCallback cameraMetaDataCallback = null;
        this.btb.bQd(c0321g);
        Camera camera = this.GT;
        if (c0321g != null) {
            cameraMetaDataCallback = this.btb;
        }
        camera.setMetadataCb(cameraMetaDataCallback);
    }
}
