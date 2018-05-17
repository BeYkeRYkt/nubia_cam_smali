package com.android.common.p032o;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Rect;
import android.graphics.YuvImage;
import com.p010a.C0090a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class C0689e {
    public static C0687c amE(byte[] bArr, int i, int i2, int i3) {
        C0687c c0687c = new C0687c();
        YuvImage yuvImage = new YuvImage(bArr, 17, i, i2, null);
        try {
            long currentTimeMillis = System.currentTimeMillis();
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            c0687c.afq = yuvImage.compressToJpeg(new Rect(0, 0, i, i2), i3, byteArrayOutputStream);
            c0687c.afp = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            C0090a.bvo("CompressImage", "yuv2jpeg compress time:" + (System.currentTimeMillis() - currentTimeMillis));
        } catch (IOException e) {
            e.printStackTrace();
            c0687c.afq = false;
        }
        return c0687c;
    }

    public static C0687c amF(Bitmap bitmap, int i) {
        C0687c c0687c = new C0687c();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            c0687c.afq = bitmap.compress(CompressFormat.JPEG, i, byteArrayOutputStream);
            c0687c.afp = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            C0090a.bvo("CompressImage", "bitmap2jpeg compress time:" + (System.currentTimeMillis() - currentTimeMillis));
        } catch (IOException e) {
            e.printStackTrace();
            c0687c.afq = false;
        }
        return c0687c;
    }
}
