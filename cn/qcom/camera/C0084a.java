package cn.qcom.camera;

import android.hardware.Camera;
import android.hardware.Camera.Face;
import android.hardware.Camera.FaceDetectionListener;
import com.android.common.independentutil.IndependenceUtil;
import com.p010a.C0090a;
import java.lang.reflect.InvocationTargetException;

class C0084a implements FaceDetectionListener {
    private FaceDetectionListener btf;
    private long btg;
    final /* synthetic */ QCOMCameraDeviceEx bth;

    private C0084a(QCOMCameraDeviceEx qCOMCameraDeviceEx) {
        this.bth = qCOMCameraDeviceEx;
        this.btf = null;
        this.btg = 0;
    }

    public void bQc(FaceDetectionListener faceDetectionListener) {
        this.btf = faceDetectionListener;
    }

    public void onFaceDetection(Face[] faceArr, Camera camera) {
        if (this.btf != null) {
            this.btf.onFaceDetection(faceArr, camera);
        }
        if (!this.bth.bte || this.bth.btd == null) {
            this.btg = 0;
        } else if (faceArr.length == 0 || bQb(faceArr)) {
            this.btg = 0;
        } else {
            long currentTimeMillis = System.currentTimeMillis();
            if (this.btg == 0) {
                this.btg = currentTimeMillis;
            } else if (currentTimeMillis - this.btg > 900) {
                C0090a.bvo("QCOMCameraDeviceEx", "call onSmile because has smile " + (currentTimeMillis - this.btg) + "ms");
                this.bth.btd.FW();
                this.btg = 0;
            }
        }
    }

    private boolean bQb(Face[] faceArr) {
        int i = 0;
        int i2 = 0;
        while (i < faceArr.length) {
            if (!IndependenceUtil.afZ) {
                i2 = IndependenceUtil.anp(faceArr[i]);
                if (i2 > 40) {
                    return false;
                }
            } else if ("org.codeaurora.camera.QCFace".equals(faceArr[i].getClass().getName()) || "org.codeaurora.camera.ExtendedFace".equals(faceArr[i].getClass().getName())) {
                try {
                    i2 = ((Integer) faceArr[i].getClass().getMethod("getSmileDegree", new Class[0]).invoke(faceArr[i], new Object[0])).intValue();
                } catch (NoSuchMethodException e) {
                    C0090a.m1e("QCOMCameraDeviceEx", "cant find method getSmileDegree");
                } catch (IllegalAccessException e2) {
                    C0090a.m1e("QCOMCameraDeviceEx", "cant access method getSmileDegree");
                } catch (InvocationTargetException e3) {
                    C0090a.m1e("QCOMCameraDeviceEx", "InvocationTargetException when invoke method getSmileDegree");
                }
                if (i2 > 40) {
                    return false;
                }
            }
            i++;
        }
        return true;
    }
}
