package cn.qcom.camera;

import android.media.MediaRecorder;
import com.android.common.cameradevice.C0083a;
import com.p010a.C0090a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class QCOMMediaRecorderEx implements C0083a {
    public void EU(MediaRecorder mediaRecorder) {
        try {
            Method declaredMethod = mediaRecorder.getClass().getDeclaredMethod("pause", new Class[0]);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(mediaRecorder, new Object[0]);
        } catch (NoSuchMethodException e) {
            C0090a.bvm("QCOMMediaRecorderEx", "no pause method error" + e);
        } catch (IllegalAccessException e2) {
            C0090a.bvm("QCOMMediaRecorderEx", "pause method Access error" + e2);
        } catch (InvocationTargetException e3) {
            C0090a.bvm("QCOMMediaRecorderEx", "pause method invoke error" + e3);
        }
    }

    public void EV(MediaRecorder mediaRecorder, int i) {
    }

    public void EW(MediaRecorder mediaRecorder, int i, boolean z) {
    }
}
