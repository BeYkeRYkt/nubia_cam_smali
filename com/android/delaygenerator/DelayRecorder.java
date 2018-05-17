package com.android.delaygenerator;

import android.graphics.Bitmap;
import android.os.Message;
import com.p010a.C0090a;
import java.lang.ref.WeakReference;

public class DelayRecorder {
    public static final int DRSTATE_COMPLETE = 1;
    public static final int DRSTATE_DELETEHALF = 2;
    public static final int DRSTATE_IDLE = 4;
    public static final int DRSTATE_START = 3;
    private String mFileName;
    private C0776b mHandler = new C0776b();
    private C0775a mListener;
    private long mNativeContext;

    private native void _init(Object obj);

    private native void _input(Bitmap bitmap);

    private native void _input(byte[] bArr, int i, int i2);

    private native void _release();

    private native void _setDegrees(int i);

    private native void _start(String str);

    private native void _stop();

    static {
        System.loadLibrary("nubia_delay_recorder");
    }

    public DelayRecorder(C0775a c0775a) {
        this.mListener = c0775a;
        _init(new WeakReference(this));
    }

    public void setDegrees(int i) {
        _setDegrees(i);
    }

    public void start(String str) {
        this.mFileName = str;
        _start(str);
    }

    public void input(Bitmap bitmap) {
        _input(bitmap);
    }

    public void input(byte[] bArr, int i, int i2) {
        _input(bArr, i, i2);
    }

    public void stop() {
        _stop();
    }

    public void release() {
        _release();
    }

    public static void postEventFromNative(Object obj, int i, int i2, int i3) {
        C0090a.m0d("DelayRecorder", "postEventFromNative what=" + i);
        DelayRecorder delayRecorder = (DelayRecorder) ((WeakReference) obj).get();
        if (delayRecorder != null) {
            Message message = new Message();
            message.what = i;
            message.arg1 = i2;
            message.arg2 = i3;
            delayRecorder.mHandler.sendMessage(message);
        }
    }
}
