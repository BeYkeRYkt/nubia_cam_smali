package com.android.common;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Matrix;
import android.os.Debug;
import com.nubia.camera.common.Native.BufferCell;
import com.nubia.camera.common.Native.YUVAlgorithm;
import com.p010a.C0090a;
import java.io.IOException;

public class C0299a {
    public static Bitmap anY(Bitmap bitmap, int i) {
        if (bitmap == null) {
            return null;
        }
        if (i != 0) {
            Matrix matrix = new Matrix();
            matrix.setRotate((float) i, ((float) bitmap.getWidth()) * 0.5f, ((float) bitmap.getHeight()) * 0.5f);
            try {
                Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                if (createBitmap != bitmap) {
                    bitmap.recycle();
                }
                return createBitmap;
            } catch (Throwable th) {
                C0090a.bvk("BitmapUtil", "Failed to rotate thumbnail", th);
            }
        }
        return bitmap;
    }

    public static Bitmap anX(byte[] bArr, int i, int i2, int i3) {
        try {
            BufferCell bufferCell;
            BufferCell bufferCell2 = new BufferCell(bArr);
            if (i3 % 360 == 0 || i3 % 90 != 0) {
                bufferCell = bufferCell2;
            } else {
                bufferCell = new BufferCell(((i * i2) * 3) / 2);
                if (i3 % 180 == 90) {
                    int i4 = i;
                    i = i2;
                    i2 = i4;
                }
                YUVAlgorithm.btM(bufferCell2, bufferCell, i, i2, (360 - (i3 % 360)) % 360);
                bufferCell2.release();
            }
            bufferCell2 = YUVAlgorithm.btN(bufferCell, i, i2);
            bufferCell.release();
            int[] btC = bufferCell2.btC();
            bufferCell2.release();
            return Bitmap.createBitmap(btC, i, i2, Config.ARGB_8888);
        } catch (OutOfMemoryError e) {
            try {
                Debug.dumpHprofData("/sdcard/camera_" + System.currentTimeMillis() + ".hprof");
            } catch (IOException e2) {
                C0090a.m1e("BitmapUtil", "dump hprof fail " + e2.getMessage());
            }
            throw e;
        }
    }
}
