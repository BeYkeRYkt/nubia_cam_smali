package com.android.common.appService;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.YuvImage;
import com.p010a.C0090a;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;

public class C0304F {
    public static byte[] aaW(byte[] bArr, int i, int i2) {
        YuvImage yuvImage = new YuvImage(bArr, 17, i, i2, null);
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        yuvImage.compressToJpeg(new Rect(0, 0, i, i2), 80, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static Bitmap aaV(byte[] bArr, int i) {
        Options options = new Options();
        options.inSampleSize = i;
        return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
    }

    public static Bitmap aaQ(Bitmap bitmap, int i) {
        return C0304F.aaS(bitmap, i, false);
    }

    public static Bitmap aaS(Bitmap bitmap, int i, boolean z) {
        if ((i == 0 && !z) || bitmap == null) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        if (z) {
            i = (i + 360) % 360;
            if (i == 0 || i == 180) {
                matrix.postScale(-1.0f, 1.0f);
                matrix.postTranslate((float) bitmap.getWidth(), 0.0f);
            } else if (i == 90 || i == 270) {
                matrix.postScale(1.0f, -1.0f);
                matrix.postTranslate((float) bitmap.getHeight(), 0.0f);
            } else {
                throw new IllegalArgumentException("Invalid degrees=" + i);
            }
        }
        if (i != 0) {
            matrix.postRotate((float) i, ((float) bitmap.getWidth()) / 2.0f, ((float) bitmap.getHeight()) / 2.0f);
        }
        try {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            if (bitmap == createBitmap) {
                return bitmap;
            }
            bitmap.recycle();
            return createBitmap;
        } catch (Throwable e) {
            C0090a.bvi("BitmapProcess", "Have no memory to rotate. Return the original bitmap.", e);
            return bitmap;
        }
    }

    public static Bitmap aaR(byte[] bArr, int i, int i2) {
        try {
            Options options = new Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (options.mCancel || options.outWidth == -1 || options.outHeight == -1) {
                return null;
            }
            options.inSampleSize = 1;
            while (options.inSampleSize * i < options.outWidth) {
                options.inSampleSize <<= 1;
            }
            options.inSampleSize >>= 1;
            options.inJustDecodeBounds = false;
            options.inDither = false;
            options.inPreferredConfig = Config.ARGB_8888;
            return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } catch (Throwable e) {
            C0090a.bvi("BitmapProcess", "Got oom exception ", e);
            return null;
        }
    }

    public static Bitmap aaP(byte[] bArr, int i) {
        try {
            Options options = new Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (options.mCancel || options.outWidth == -1 || options.outHeight == -1) {
                return null;
            }
            options.inSampleSize = C0304F.aaU(options, -1, i);
            options.inJustDecodeBounds = false;
            options.inDither = false;
            options.inPreferredConfig = Config.ARGB_8888;
            return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } catch (Throwable e) {
            C0090a.bvi("BitmapProcess", "Got oom exception ", e);
            return null;
        }
    }

    private static int aaU(Options options, int i, int i2) {
        int aaT = C0304F.aaT(options, i, i2);
        if (aaT > 8) {
            return ((aaT + 7) / 8) * 8;
        }
        int i3 = 1;
        while (i3 < aaT) {
            i3 <<= 1;
        }
        return i3;
    }

    private static int aaT(Options options, int i, int i2) {
        int i3;
        int i4;
        double d = (double) options.outWidth;
        double d2 = (double) options.outHeight;
        if (i2 < 0) {
            i3 = 1;
        } else {
            i3 = (int) Math.ceil(Math.sqrt((d * d2) / ((double) i2)));
        }
        if (i < 0) {
            i4 = 128;
        } else {
            i4 = (int) Math.min(Math.floor(d / ((double) i)), Math.floor(d2 / ((double) i)));
        }
        if (i4 < i3) {
            return i3;
        }
        if (i2 < 0 && i < 0) {
            return 1;
        }
        if (i < 0) {
            return i3;
        }
        return i4;
    }
}
