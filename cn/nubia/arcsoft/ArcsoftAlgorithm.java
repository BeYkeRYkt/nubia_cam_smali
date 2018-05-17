package cn.nubia.arcsoft;

import com.nubia.camera.common.Native.BufferCell;
import com.p010a.C0090a;
import java.nio.ByteBuffer;

public class ArcsoftAlgorithm {
    private long bqa;

    private static native boolean CalcDisparityData(long j, ByteBuffer byteBuffer, int i, int i2, ByteBuffer byteBuffer2, int i3, int i4, int[] iArr, int i5, int i6);

    private static native boolean GetDisparityData(long j, ByteBuffer byteBuffer);

    private static native int GetDisparityDataSize(long j);

    private static native long Init(int i);

    private static native boolean Refocus(long j, ByteBuffer byteBuffer, int i, int i2, ByteBuffer byteBuffer2, int i3, int i4, int i5, ByteBuffer byteBuffer3);

    private static native boolean SetCaliData(long j, int i, int i2, boolean z);

    private static native boolean SetCameraImageInfo(long j, int i, int i2, int i3, int i4);

    private static native boolean Uninit(long j);

    static {
        System.loadLibrary("ArcsoftAlgorithm");
    }

    private ArcsoftAlgorithm(long j) {
        this.bqa = j;
    }

    public static ArcsoftAlgorithm bMz(int i) {
        long Init = Init(i);
        C0090a.m0d("ArcsoftAlgorithm", "newInstance " + Long.toHexString(Init));
        return new ArcsoftAlgorithm(Init);
    }

    public boolean release() {
        if (this.bqa == 0) {
            return false;
        }
        C0090a.m0d("ArcsoftAlgorithm", "release " + Long.toHexString(this.bqa));
        boolean Uninit = Uninit(this.bqa);
        this.bqa = 0;
        return Uninit;
    }

    public boolean bMx(int i, int i2, boolean z) {
        return SetCaliData(this.bqa, i, i2, z);
    }

    public boolean bMy(int i, int i2, int i3, int i4) {
        C0090a.m0d("ArcsoftAlgorithm", "SetCameraImageInfo " + i + " " + i2 + " " + i3 + " " + i4);
        return SetCameraImageInfo(this.bqa, i, i2, i3, i4);
    }

    public boolean bMt(BufferCell bufferCell, int i, int i2, BufferCell bufferCell2, int i3, int i4, int[] iArr, int i5, int i6) {
        C0090a.m0d("ArcsoftAlgorithm", "CalcDisparityData " + i + " " + i2 + " " + i3 + " " + i4 + " " + i5 + " " + i6);
        return CalcDisparityData(this.bqa, bufferCell.btE(), i, i2, bufferCell2.btE(), i3, i4, iArr, i5, i6);
    }

    public int bMv() {
        return GetDisparityDataSize(this.bqa);
    }

    public boolean bMu(BufferCell bufferCell) {
        return GetDisparityData(this.bqa, bufferCell.btE());
    }

    public boolean bMw(BufferCell bufferCell, int i, int i2, BufferCell bufferCell2, int i3, int i4, int i5, BufferCell bufferCell3) {
        return Refocus(this.bqa, bufferCell.btE(), i, i2, bufferCell2.btE(), i3, i4, i5, bufferCell3.btE());
    }
}
