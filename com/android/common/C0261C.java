package com.android.common;

import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Rect;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.TypedValue;
import com.android.camera.R;
import com.p010a.C0090a;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

public class C0261C {
    private static String akf = "custom_text_pic_water_mask";
    private static final String akg;
    private static File akh = new File(akg + "/" + "water_mark_drawable_black.argb");
    private static boolean aki = false;
    private static File[] akj = new File[]{akp, akh, akn};
    private static int[] akk = new int[]{R.drawable.water1, R.drawable.water2, R.drawable.logo_z11};
    private static int[] akl;
    private static boolean akm = false;
    private static File akn = new File(akg + "/" + "water_mark_drawable.argb");
    private static boolean ako = false;
    private static File akp = new File(akg + "/" + "water_mark_drawable_white.argb");

    static {
        String str;
        if (VERSION.SDK_INT > 23) {
            str = "/data/nubiaeffect";
        } else {
            str = "/data/data/com.android.camera/effect";
        }
        akg = str;
    }

    public static void avL(int i, Resources resources, Bitmap bitmap, int i2, WaterMarkUtil$LOCATION waterMarkUtil$LOCATION) {
        float avT = C0261C.avT(bitmap.getWidth(), bitmap.getHeight());
        Bitmap avP = C0261C.avP(resources, i2);
        int width = (int) (((float) avP.getWidth()) * avT);
        int height = (int) (avT * ((float) avP.getHeight()));
        avP = C0261C.avR(avP, i);
        int[] avS = C0261C.avS(i, bitmap.getWidth(), bitmap.getHeight(), width, height);
        new Canvas(bitmap).drawBitmap(avP, null, new Rect(avS[0], avS[1], avS[2], avS[3]), null);
        if (avP != null || !avP.isRecycled()) {
            avP.recycle();
        }
    }

    public static void avH(int i, int i2, Resources resources, Bitmap bitmap) {
        C0261C.avQ(bitmap, resources, i);
        switch (i2) {
            case 1:
                C0090a.bvo("WaterMarkUtil", "case1 mNeedToUseDarkLogo:" + akm);
                C0261C.avL(i, resources, bitmap, akm ? akk[1] : akk[0], WaterMarkUtil$LOCATION.LEFT_BOTTOM);
                return;
            case 2:
                C0261C.avK(i, bitmap, C0261C.getCurrentTime(), WaterMarkUtil$LOCATION.RIGHT_BOTTOM);
                return;
            case 3:
                int i3;
                String currentTime = C0261C.getCurrentTime();
                if (akm) {
                    i3 = akk[1];
                } else {
                    i3 = akk[0];
                }
                C0261C.avJ(i, resources, bitmap, i3, currentTime);
                return;
            default:
                return;
        }
    }

    private static void avQ(Bitmap bitmap, Resources resources, int i) {
        Bitmap createBitmap;
        float avT = C0261C.avT(bitmap.getWidth(), bitmap.getHeight());
        Bitmap avP = C0261C.avP(resources, akk[0]);
        int width = (int) (((float) avP.getWidth()) * avT);
        int height = (int) (avT * ((float) avP.getHeight()));
        if (Build.PRODUCT.equals("NX563J")) {
            int[] avS = C0261C.avS(i, bitmap.getWidth(), bitmap.getHeight(), width, height);
            C0090a.bvo("WaterMarkUtil", "ori:" + i + ",logoNewWidth:" + width + ",logoNewHeight" + height);
            if (i == 90 || i == 270) {
                int i2 = width;
                width = height;
                height = i2;
            }
            C0090a.bvo("WaterMarkUtil", "logoNewWidth:" + width + ",logoNewHeight" + height);
            createBitmap = Bitmap.createBitmap(bitmap, avS[0], avS[1], width, height);
        } else {
            createBitmap = Bitmap.createBitmap(bitmap, 0, bitmap.getHeight() - height, width, height);
        }
        akl = new int[(createBitmap.getWidth() * createBitmap.getHeight())];
        createBitmap.getPixels(akl, 0, createBitmap.getWidth(), 0, 0, createBitmap.getWidth(), createBitmap.getHeight());
        C0090a.bvo("WaterMarkUtil", "mMeteringArea length:" + akl.length);
        double d = 0.0d;
        for (int i3 : akl) {
            d += (((double) (i3 & 255)) * 0.114d) + ((((double) ((65280 & i3) >> 8)) * 0.587d) + (((double) ((16711680 & i3) >> 16)) * 0.299d));
        }
        if (createBitmap != null) {
            createBitmap.recycle();
        }
        C0090a.bvo("WaterMarkUtil", "average is :" + ((int) (d / ((double) akl.length))));
        akm = ((int) (d / ((double) akl.length))) > 180;
        aki = true;
    }

    public static void avJ(int i, Resources resources, Bitmap bitmap, int i2, String str) {
        float avT = C0261C.avT(bitmap.getWidth(), bitmap.getHeight());
        Bitmap avP = C0261C.avP(resources, i2);
        int width = (int) (((float) avP.getWidth()) * avT);
        int height = (int) (((float) avP.getHeight()) * avT);
        Bitmap avR = C0261C.avR(avP, i);
        int[] avS = C0261C.avS(i, bitmap.getWidth(), bitmap.getHeight(), width, height);
        Canvas canvas = new Canvas(bitmap);
        canvas.drawBitmap(avR, null, new Rect(avS[0], avS[1], avS[2], avS[3]), null);
        if (!(avR == null && avR.isRecycled())) {
            avR.recycle();
        }
        Paint paint = new Paint();
        paint.setStyle(Style.FILL_AND_STROKE);
        paint.setARGB(173, 255, 255, 255);
        paint.setTextSize((50.0f * avT) * 1.5f);
        paint.setAntiAlias(true);
        paint.setTextAlign(Align.LEFT);
        paint.setShadowLayer(5.0f, 2.0f, 2.0f, -16777216);
        paint.measureText(str);
        Rect rect = new Rect();
        paint.getTextBounds(str, 0, str.length(), rect);
        height = rect.width();
        int height2 = rect.height();
        int width2 = bitmap.getWidth();
        int height3 = bitmap.getHeight();
        Path path;
        switch (i) {
            case 0:
                canvas.drawText(str, (float) ((width2 - height) - C0616j.aoT(15)), (float) ((height3 - height2) - ((int) (avT * ((float) C0616j.aoT(15))))), paint);
                return;
            case 90:
                path = new Path();
                path.moveTo((float) width2, (float) (height + C0616j.aoT(15)));
                path.lineTo((float) width2, 0.0f);
                canvas.drawTextOnPath(str, path, 0.0f, (float) (-height2), paint);
                return;
            case 180:
                path = new Path();
                path.moveTo((float) (C0616j.aoT(15) + height), 0.0f);
                path.lineTo(0.0f, 0.0f);
                canvas.drawTextOnPath(str, path, 0.0f, (float) (-height2), paint);
                return;
            case 270:
                path = new Path();
                path.moveTo(0.0f, (float) ((height3 - height) - C0616j.aoT(15)));
                path.lineTo(0.0f, (float) height3);
                canvas.drawTextOnPath(str, path, 0.0f, (float) (-height2), paint);
                return;
            default:
                return;
        }
    }

    private static Bitmap avP(Resources resources, int i) {
        TypedValue typedValue = new TypedValue();
        resources.openRawResource(i, typedValue);
        Options options = new Options();
        options.inTargetDensity = typedValue.density;
        return BitmapFactory.decodeResource(resources, i, options);
    }

    private static int[] avS(int i, int i2, int i3, int i4, int i5) {
        int[] iArr = new int[4];
        switch (i) {
            case 0:
                iArr[0] = 0;
                iArr[1] = i3 - i5;
                iArr[2] = i4;
                iArr[3] = i3;
                break;
            case 90:
                iArr[0] = i2 - i5;
                iArr[1] = i3 - i4;
                iArr[2] = i2;
                iArr[3] = i3;
                break;
            case 180:
                iArr[0] = i2 - i4;
                iArr[1] = 0;
                iArr[2] = i2;
                iArr[3] = i5;
                break;
            case 270:
                iArr[0] = 0;
                iArr[1] = 0;
                iArr[2] = i5;
                iArr[3] = i4;
                break;
        }
        return iArr;
    }

    private static Bitmap avR(Bitmap bitmap, int i) {
        Matrix matrix = new Matrix();
        switch (i) {
            case 90:
                matrix.setRotate(-90.0f, (float) (bitmap.getWidth() / 2), (float) (bitmap.getHeight() / 2));
                break;
            case 180:
                matrix.setRotate(-180.0f, (float) (bitmap.getWidth() / 2), (float) (bitmap.getHeight() / 2));
                break;
            case 270:
                matrix.setRotate(90.0f, (float) (bitmap.getWidth() / 2), (float) (bitmap.getHeight() / 2));
                break;
        }
        if (i == 0) {
            return bitmap;
        }
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, false);
    }

    private static float avT(int i, int i2) {
        if (i2 > i) {
            return (((float) i) / 1080.0f) * 0.35f;
        }
        return (((float) i2) / 1080.0f) * 0.35f;
    }

    public static void avK(int i, Bitmap bitmap, String str, WaterMarkUtil$LOCATION waterMarkUtil$LOCATION) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float avT = C0261C.avT(width, height);
        if (!str.isEmpty() && !str.equals("")) {
            Paint paint = new Paint();
            paint.setStyle(Style.FILL_AND_STROKE);
            paint.setARGB(173, 255, 255, 255);
            paint.setTextSize((avT * 50.0f) * 1.5f);
            paint.setAntiAlias(true);
            paint.setTextAlign(Align.LEFT);
            paint.setShadowLayer(5.0f, 2.0f, 2.0f, -16777216);
            paint.measureText(str);
            Rect rect = new Rect();
            paint.getTextBounds(str, 0, str.length(), rect);
            int width2 = rect.width();
            int height2 = rect.height();
            Canvas canvas = new Canvas(bitmap);
            Path path;
            switch (i) {
                case 0:
                    canvas.drawText(str, (float) ((width - width2) - C0616j.aoT(15)), (float) ((height - height2) - C0616j.aoT(2)), paint);
                    break;
                case 90:
                    path = new Path();
                    path.moveTo((float) width, (float) (width2 + C0616j.aoT(15)));
                    path.lineTo((float) width, 0.0f);
                    canvas.drawTextOnPath(str, path, 0.0f, (float) (-height2), paint);
                    break;
                case 180:
                    path = new Path();
                    path.moveTo((float) (C0616j.aoT(15) + width2), 0.0f);
                    path.lineTo(0.0f, 0.0f);
                    canvas.drawTextOnPath(str, path, 0.0f, (float) (-height2), paint);
                    break;
                case 270:
                    path = new Path();
                    path.moveTo(0.0f, (float) ((height - width2) - C0616j.aoT(15)));
                    path.lineTo(0.0f, (float) height);
                    canvas.drawTextOnPath(str, path, 0.0f, (float) (-height2), paint);
                    break;
            }
        }
    }

    private static boolean avU(ActivityBase activityBase) {
        int i;
        Editor edit = activityBase.asN().edit();
        try {
            i = activityBase.asN().getInt("pref_water_mark_logo_version_key", 0);
        } catch (Exception e) {
            i = 0;
        }
        if (i >= 2) {
            return false;
        }
        edit.putInt("pref_water_mark_logo_version_key", 2);
        edit.apply();
        return true;
    }

    private static String getCurrentTime() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date());
    }

    private static void avW(File file) {
        file.setReadable(true, false);
        file.setWritable(true, false);
        file.setExecutable(true, false);
    }

    private static void avV(File file) {
        file.mkdir();
        C0261C.avW(file);
    }

    private static InputStream avM(Bitmap bitmap) {
        int i = 0;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[((width * height) + 2)];
        iArr[0] = width;
        iArr[1] = height;
        bitmap.getPixels(iArr, 2, width, 0, 0, width, height);
        byte[] bArr = new byte[(iArr.length * 4)];
        while (i < iArr.length) {
            bArr[i * 4] = (byte) ((iArr[i] & 255) >> 0);
            bArr[(i * 4) + 1] = (byte) ((iArr[i] & 65280) >> 8);
            bArr[(i * 4) + 2] = (byte) ((iArr[i] & 16711680) >> 16);
            bArr[(i * 4) + 3] = (byte) ((iArr[i] & -16777216) >> 24);
            i++;
        }
        return new ByteArrayInputStream(bArr);
    }

    public static void avI(Resources resources, ActivityBase activityBase) {
        C0261C.avN();
        if (!ako || C0261C.avU(activityBase)) {
            C0090a.bvo("WaterMarkUtil", "create effect use thread");
            new C0262D(resources).start();
        }
    }

    private static void avN() {
        boolean exists;
        if (akp.exists()) {
            exists = akh.exists();
        } else {
            exists = false;
        }
        ako = exists;
        if (!ako) {
            File file = new File(akg);
            if (!file.exists()) {
                C0261C.avV(file);
            }
        }
    }

    private static void avO(Resources resources) {
        int i = 0;
        while (i < akk.length) {
            try {
                InputStream avM = C0261C.avM(C0261C.avP(resources, akk[i]));
                FileOutputStream fileOutputStream = new FileOutputStream(akj[i]);
                byte[] bArr = new byte[1024000];
                while (true) {
                    int read = avM.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
                avM.close();
                fileOutputStream.close();
                C0261C.avW(akj[i]);
                i++;
            } catch (Exception e) {
                C0090a.m1e("WaterMarkUtil", "create water effect file fail!" + e.getMessage());
                return;
            }
        }
    }
}
