package com.android.videomaker;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import com.p010a.C0090a;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.FileInputStream;

public class C1205s {
    public static Bitmap aQq(C1204r c1204r) {
        Closeable fileInputStream;
        Throwable e;
        try {
            fileInputStream = new FileInputStream(c1204r.aQn());
            try {
                Bitmap aQt = C1205s.aQt(fileInputStream.getFD(), null, c1204r);
                C1205s.aQr(fileInputStream);
                return aQt;
            } catch (Exception e2) {
                e = e2;
                try {
                    C0090a.bvl("Util", e);
                    C1205s.aQr(fileInputStream);
                    return null;
                } catch (Throwable th) {
                    e = th;
                    C1205s.aQr(fileInputStream);
                    throw e;
                }
            }
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
            C0090a.bvl("Util", e);
            C1205s.aQr(fileInputStream);
            return null;
        } catch (Throwable th2) {
            e = th2;
            fileInputStream = null;
            C1205s.aQr(fileInputStream);
            throw e;
        }
    }

    private static Bitmap aQt(FileDescriptor fileDescriptor, Options options, C1204r c1204r) {
        if (options == null) {
            options = new Options();
        }
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        int aQj = c1204r.aQo().aQj();
        int aQi = c1204r.aQo().aQi();
        options.inSampleSize = C1205s.aQs(Math.min(((float) options.outWidth) / ((float) aQj), ((float) options.outHeight) / ((float) aQi)));
        options.inJustDecodeBounds = false;
        Bitmap decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        if (decodeFileDescriptor == null) {
            return null;
        }
        return C1205s.aQy(decodeFileDescriptor, c1204r);
    }

    private static int aQs(float f) {
        int i = (int) f;
        if (i <= 1) {
            return 1;
        }
        if (i <= 8) {
            i = Integer.highestOneBit(i);
        } else {
            i = (i / 8) * 8;
        }
        return i;
    }

    private static Bitmap aQz(Bitmap bitmap, float f, int i) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (((double) f) == 1.0d) {
            f = 0.9f;
        }
        Matrix matrix = new Matrix();
        matrix.setScale(f, f);
        matrix.postRotate((float) i, (float) (width / 2), (float) (height / 2));
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
        if (!bitmap.isRecycled()) {
            bitmap.recycle();
        }
        return createBitmap;
    }

    private static Bitmap aQy(Bitmap bitmap, C1204r c1204r) {
        int aQj = c1204r.aQo().aQj();
        int aQi = c1204r.aQo().aQi();
        return C1205s.aQz(bitmap, Math.min(4.0f, Math.min(((float) aQj) / ((float) bitmap.getWidth()), ((float) aQi) / ((float) bitmap.getHeight()))), 0);
    }

    public static Bitmap aQx(Bitmap bitmap, int i, boolean z) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width == i && height == i) {
            return bitmap;
        }
        float min = ((float) i) / ((float) Math.min(width, height));
        Bitmap createBitmap = Bitmap.createBitmap(i, i, C1205s.aQv(bitmap));
        int round = Math.round(((float) bitmap.getWidth()) * min);
        int round2 = Math.round(((float) bitmap.getHeight()) * min);
        Canvas canvas = new Canvas(createBitmap);
        canvas.translate(((float) (i - round)) / 2.0f, ((float) (i - round2)) / 2.0f);
        canvas.scale(min, min);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, new Paint(6));
        if (z) {
            bitmap.recycle();
        }
        return createBitmap;
    }

    public static Bitmap aQw(Bitmap bitmap, int i) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), C1205s.aQv(bitmap));
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectF = new RectF(rect);
        paint.setAntiAlias(true);
        canvas.drawRoundRect(rectF, (float) i, (float) i, paint);
        paint.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return createBitmap;
    }

    private static Config aQv(Bitmap bitmap) {
        Config config = bitmap.getConfig();
        if (config == null) {
            return Config.ARGB_8888;
        }
        return config;
    }

    public static Bitmap aQp(String str, int i, int i2) {
        Closeable fileInputStream;
        Throwable e;
        try {
            fileInputStream = new FileInputStream(str);
            try {
                Bitmap aQu = C1205s.aQu(fileInputStream.getFD(), null, i, i2);
                C1205s.aQr(fileInputStream);
                return aQu;
            } catch (Exception e2) {
                e = e2;
                try {
                    C0090a.bvl("Util", e);
                    C1205s.aQr(fileInputStream);
                    return null;
                } catch (Throwable th) {
                    e = th;
                    C1205s.aQr(fileInputStream);
                    throw e;
                }
            }
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
            C0090a.bvl("Util", e);
            C1205s.aQr(fileInputStream);
            return null;
        } catch (Throwable th2) {
            e = th2;
            fileInputStream = null;
            C1205s.aQr(fileInputStream);
            throw e;
        }
    }

    private static Bitmap aQu(FileDescriptor fileDescriptor, Options options, int i, int i2) {
        if (options == null) {
            options = new Options();
        }
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        float min = Math.min(((float) i2) / ((float) options.outWidth), ((float) i2) / ((float) options.outHeight));
        options.inSampleSize = C1205s.aQs(min);
        options.inJustDecodeBounds = false;
        Bitmap decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        if (decodeFileDescriptor == null) {
            return null;
        }
        Bitmap aQA;
        if (i != 0) {
            aQA = C1205s.aQA(decodeFileDescriptor, i);
            decodeFileDescriptor.recycle();
        } else {
            aQA = decodeFileDescriptor;
        }
        if (i2 > 400) {
            return C1205s.aQz(aQA, min, 0);
        }
        aQA = C1205s.aQx(aQA, i2, false);
        decodeFileDescriptor = C1205s.aQw(aQA, 10);
        aQA.recycle();
        return decodeFileDescriptor;
    }

    private static Bitmap aQA(Bitmap bitmap, int i) {
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
                C0090a.bvk("Util", "Failed to rotate thumbnail", th);
            }
        }
        return bitmap;
    }

    public static void aQr(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                C0090a.bvk("Util", "fail to close", th);
            }
        }
    }
}
