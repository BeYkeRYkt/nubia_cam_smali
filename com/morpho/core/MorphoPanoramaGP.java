package com.morpho.core;

import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import java.nio.ByteBuffer;

public class MorphoPanoramaGP {
    private long bcF = 0;

    public class InitParam {
        public double angle_of_view_degree;
        public int direction;
        public int draw_cur_image;
        public int dst_img_height;
        public int dst_img_width;
        public String format;
        public int mode;
        public int output_rotation;
        public int preview_height;
        public int preview_img_height;
        public int preview_img_width;
        public int preview_shrink_ratio;
        public int preview_width;
        public int still_height;
        public int still_width;
        public int use_threshold;
    }

    private final native long createNativeObject();

    private final native void deleteNativeObject(long j);

    private final native int nativeAttachPreview(long j, byte[] bArr, int i, int[] iArr, byte[] bArr2, int[] iArr2, Bitmap bitmap);

    private final native int nativeAttachStillImageExt(long j, ByteBuffer byteBuffer, int i, ByteBuffer byteBuffer2);

    private final native int nativeAttachStillImageRaw(long j, ByteBuffer byteBuffer, int i, ByteBuffer byteBuffer2);

    private static final native int nativeCalcImageSize(InitParam initParam, double d);

    private final native int nativeEnd(long j);

    private final native int nativeFinish(long j);

    private final native int nativeGetClippingRect(long j, int[] iArr);

    private final native int nativeGetCurrentDirection(long j, int[] iArr);

    private final native int nativeGetGuidancePos(long j, int[] iArr);

    private static final native String nativeGetVersion();

    private final native int nativeInitialize(long j, InitParam initParam, int[] iArr);

    private final native int nativeSaveOutputJpeg(long j, String str, int i, int i2, int i3, int i4, int i5, int[] iArr);

    private final native int nativeSetMotionlessThreshold(long j, int i);

    private final native int nativeSetUseSensorAssist(long j, int i, int i2);

    private final native int nativeSetUseSensorThreshold(long j, int i);

    private final native int nativeStart(long j);

    static {
        try {
            System.loadLibrary("morpho_panorama_gp");
        } catch (UnsatisfiedLinkError e) {
        }
    }

    public static String bul() {
        return nativeGetVersion();
    }

    public static int bud(InitParam initParam, double d) {
        return nativeCalcImageSize(initParam, d);
    }

    public MorphoPanoramaGP() {
        long createNativeObject = createNativeObject();
        if (createNativeObject != 0) {
            this.bcF = createNativeObject;
        } else {
            this.bcF = 0;
        }
    }

    public int bue(InitParam initParam, int[] iArr) {
        if (this.bcF != 0) {
            return nativeInitialize(this.bcF, initParam, iArr);
        }
        return -2147483646;
    }

    public int btZ() {
        if (this.bcF == 0) {
            return -2147483646;
        }
        int nativeFinish = nativeFinish(this.bcF);
        deleteNativeObject(this.bcF);
        this.bcF = 0;
        return nativeFinish;
    }

    public int start() {
        if (this.bcF != 0) {
            return nativeStart(this.bcF);
        }
        return -2147483646;
    }

    public int bui(byte[] bArr, int i, int[] iArr, byte[] bArr2, int[] iArr2, Bitmap bitmap) {
        if (this.bcF != 0) {
            return nativeAttachPreview(this.bcF, bArr, i, iArr, bArr2, iArr2, bitmap);
        }
        return -2147483646;
    }

    public int buc(ByteBuffer byteBuffer, int i, ByteBuffer byteBuffer2) {
        if (this.bcF != 0) {
            return nativeAttachStillImageExt(this.bcF, byteBuffer, i, byteBuffer2);
        }
        return -2147483646;
    }

    public int bub(ByteBuffer byteBuffer, int i, ByteBuffer byteBuffer2) {
        if (this.bcF != 0) {
            return nativeAttachStillImageRaw(this.bcF, byteBuffer, i, byteBuffer2);
        }
        return -2147483646;
    }

    public int btX() {
        if (this.bcF != 0) {
            return nativeEnd(this.bcF);
        }
        return -2147483646;
    }

    public int btY(Rect rect) {
        int nativeGetClippingRect;
        int[] iArr = new int[4];
        if (this.bcF != 0) {
            nativeGetClippingRect = nativeGetClippingRect(this.bcF, iArr);
            if (nativeGetClippingRect == 0) {
                rect.set(iArr[0], iArr[1], iArr[2], iArr[3]);
            }
        } else {
            nativeGetClippingRect = -2147483646;
        }
        if (nativeGetClippingRect != 0) {
            rect.set(0, 0, 0, 0);
        }
        return nativeGetClippingRect;
    }

    public int buf(int i) {
        if (this.bcF != 0) {
            return nativeSetMotionlessThreshold(this.bcF, i);
        }
        return -2147483646;
    }

    public int buj(int[] iArr) {
        if (this.bcF != 0) {
            return nativeGetCurrentDirection(this.bcF, iArr);
        }
        return -2147483646;
    }

    public int buh(int i, int i2) {
        if (this.bcF != 0) {
            return nativeSetUseSensorAssist(this.bcF, i, i2);
        }
        return -2147483646;
    }

    public int bug(int i) {
        if (this.bcF != 0) {
            return nativeSetUseSensorThreshold(this.bcF, i);
        }
        return -2147483646;
    }

    public int buk(Point point, Point point2) {
        int[] iArr = new int[4];
        if (this.bcF == 0) {
            return -2147483646;
        }
        int nativeGetGuidancePos = nativeGetGuidancePos(this.bcF, iArr);
        point.set(iArr[0], iArr[1]);
        point2.set(iArr[2], iArr[3]);
        return nativeGetGuidancePos;
    }

    public int bua(String str, Rect rect, int i, int[] iArr) {
        if (this.bcF == 0) {
            return -2147483646;
        }
        return nativeSaveOutputJpeg(this.bcF, str, rect.left, rect.top, rect.right, rect.bottom, i, iArr);
    }
}
