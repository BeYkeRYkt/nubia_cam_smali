package com.android.common;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.KeyguardManager;
import android.app.admin.DevicePolicyManager;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.database.sqlite.SQLiteDiskIOException;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.Camera;
import android.hardware.Camera.Area;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Size;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Debug;
import android.os.ParcelFileDescriptor;
import android.os.PowerManager;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy;
import android.os.SystemProperties;
import android.os.Vibrator;
import android.os.storage.StorageManager;
import android.provider.Settings.System;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.Toast;
import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0086j;
import com.android.common.cameradevice.C0378d;
import com.android.common.cameradevice.C0382m;
import com.android.common.cameradevice.C0384o;
import com.android.common.cameradevice.CameraDisabledException;
import com.android.common.cameradevice.CameraHardwareException;
import com.android.common.custom.C0421M;
import com.android.common.exif.C0523o;
import com.android.common.p022r.C0699a;
import com.android.common.p023b.C0365n;
import com.android.common.setting.PreferenceGroup;
import com.android.common.ui.RotateImageView;
import com.p010a.C0090a;
import com.umeng.analytics.MobclickAgent;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;
import java.util.TimeZone;

public class C0616j {
    private static float ahA = 1.0f;
    private static boolean ahB = false;
    public static boolean ahp = false;
    public static final boolean ahq = C0616j.apM();
    public static final int ahr = C0616j.apI();
    private static boolean ahs = false;
    private static boolean aht = false;
    private static boolean ahu = false;
    public static Point ahv;
    private static C0620k ahw;
    private static int[] ahx = new int[2];
    private static int ahy;
    private static int ahz;

    private C0616j() {
    }

    public static void apJ(Context context) {
        Display defaultDisplay = ((WindowManager) context.getApplicationContext().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        ahA = displayMetrics.density * C0421M.dC().dD().bh();
        ahv = new Point();
        defaultDisplay.getSize(ahv);
        ahz = ahv.x < ahv.y ? ahv.x : ahv.y;
        ahy = ahv.x < ahv.y ? ahv.y : ahv.x;
        ahw = new C0620k(context.getString(R.string.image_file_name_format));
        C0616j.aqi(context);
    }

    private static void aqi(Context context) {
        try {
            int i = System.getInt(context.getContentResolver(), "user_experience_plan", 0);
            C0090a.bvo("Util", "setIsOpenUmeng: flag = " + i);
            if (i != 0) {
                ahB = true;
            } else {
                ahB = false;
            }
        } catch (Throwable e) {
            C0090a.bvi("Util", "setIsOpenUmeng failed", e);
            ahB = false;
        }
    }

    public static boolean apO() {
        return ahB ? ahu : false;
    }

    public static C0620k apB() {
        return ahw;
    }

    public static ByteArrayOutputStream app(String str, SparseArray sparseArray) {
        int i;
        InputStream fileInputStream;
        FileNotFoundException e;
        FileOutputStream fileOutputStream;
        Throwable e2;
        FileOutputStream fileOutputStream2 = null;
        C0090a.bvo("Util", "addExifToFilePath");
        C0523o c0523o = new C0523o();
        c0523o.Ch(C0523o.Cd, System.currentTimeMillis(), TimeZone.getDefault());
        Collection arrayList = new ArrayList();
        for (i = 0; i < sparseArray.size(); i++) {
            arrayList.add(c0523o.Ce(sparseArray.keyAt(i), sparseArray.valueAt(i)));
        }
        c0523o.Ci(arrayList);
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        File file = new File(str);
        if (file != null) {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    i = (int) file.length();
                    if (i > Integer.MAX_VALUE) {
                        C0090a.bvo("Util", "this file is max");
                        try {
                            fileInputStream.close();
                        } catch (Exception e3) {
                        }
                        return null;
                    }
                    byte[] bArr = new byte[i];
                    fileInputStream.read(bArr);
                    fileInputStream.close();
                    fileInputStream = null;
                    c0523o.Cc(bArr, byteArrayOutputStream);
                    try {
                        fileInputStream.close();
                    } catch (Exception e4) {
                    }
                } catch (FileNotFoundException e5) {
                    e = e5;
                    e.printStackTrace();
                    try {
                        fileInputStream.close();
                    } catch (Exception e6) {
                    }
                    fileOutputStream = new FileOutputStream(str);
                    try {
                        fileOutputStream.write(byteArrayOutputStream.toByteArray());
                        fileOutputStream.close();
                    } catch (Exception e7) {
                        e2 = e7;
                        fileOutputStream2 = fileOutputStream;
                        try {
                            C0090a.bvi("Util", "Failed to write image", e2);
                            try {
                                fileOutputStream2.close();
                            } catch (Exception e8) {
                            }
                            return byteArrayOutputStream;
                        } catch (Throwable th) {
                            e2 = th;
                            try {
                                fileOutputStream2.close();
                            } catch (Exception e9) {
                            }
                            throw e2;
                        }
                    } catch (Throwable th2) {
                        e2 = th2;
                        fileOutputStream2 = fileOutputStream;
                        fileOutputStream2.close();
                        throw e2;
                    }
                    return byteArrayOutputStream;
                } catch (IOException e10) {
                    e2 = e10;
                    try {
                        C0090a.bvi("Util", "Could not write EXIF", e2);
                        try {
                            fileInputStream.close();
                        } catch (Exception e11) {
                        }
                        fileOutputStream = new FileOutputStream(str);
                        fileOutputStream.write(byteArrayOutputStream.toByteArray());
                        fileOutputStream.close();
                        return byteArrayOutputStream;
                    } catch (Throwable th3) {
                        e2 = th3;
                        try {
                            fileInputStream.close();
                        } catch (Exception e12) {
                        }
                        throw e2;
                    }
                }
            } catch (FileNotFoundException e13) {
                e = e13;
                fileInputStream = null;
                e.printStackTrace();
                fileInputStream.close();
                fileOutputStream = new FileOutputStream(str);
                fileOutputStream.write(byteArrayOutputStream.toByteArray());
                fileOutputStream.close();
                return byteArrayOutputStream;
            } catch (IOException e14) {
                e2 = e14;
                fileInputStream = null;
                C0090a.bvi("Util", "Could not write EXIF", e2);
                fileInputStream.close();
                fileOutputStream = new FileOutputStream(str);
                fileOutputStream.write(byteArrayOutputStream.toByteArray());
                fileOutputStream.close();
                return byteArrayOutputStream;
            } catch (Throwable th4) {
                e2 = th4;
                fileInputStream = null;
                fileInputStream.close();
                throw e2;
            }
        }
        C0090a.m1e("Util", "file is null");
        try {
            fileOutputStream = new FileOutputStream(str);
            fileOutputStream.write(byteArrayOutputStream.toByteArray());
            try {
                fileOutputStream.close();
            } catch (Exception e15) {
            }
        } catch (Exception e16) {
            e2 = e16;
            C0090a.bvi("Util", "Failed to write image", e2);
            fileOutputStream2.close();
            return byteArrayOutputStream;
        }
        return byteArrayOutputStream;
    }

    public static void apW(SparseArray sparseArray, String str) {
        new Exception("modeExifTag").printStackTrace();
        C0523o c0523o = new C0523o();
        Collection arrayList = new ArrayList();
        for (int i = 0; i < sparseArray.size(); i++) {
            arrayList.add(c0523o.Ce(sparseArray.keyAt(i), sparseArray.valueAt(i)));
        }
        try {
            c0523o.Cj(str, arrayList);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public static void apc(double d, double d2, SparseArray sparseArray) {
        Object obj;
        sparseArray.put(C0523o.Ce, C0523o.Ck(d));
        sparseArray.put(C0523o.Cf, C0523o.Ck(d2));
        int i = C0523o.Cg;
        if (d >= 0.0d) {
            obj = "N";
        } else {
            obj = "S";
        }
        sparseArray.put(i, obj);
        i = C0523o.Ch;
        if (d2 >= 0.0d) {
            obj = "E";
        } else {
            obj = "W";
        }
        sparseArray.put(i, obj);
    }

    public static String apF(Uri uri, ContentResolver contentResolver) {
        Cursor query;
        String string;
        Throwable th;
        Cursor cursor = null;
        try {
            query = contentResolver.query(uri, new String[]{"_data"}, null, null, null);
            try {
                query.moveToFirst();
                string = query.getString(query.getColumnIndex("_data"));
                if (query != null) {
                    query.close();
                }
            } catch (SQLiteDiskIOException e) {
                if (query != null) {
                    query.close();
                }
                return string;
            } catch (Throwable th2) {
                cursor = query;
                th = th2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteDiskIOException e2) {
            query = cursor;
            if (query != null) {
                query.close();
            }
            return string;
        } catch (Throwable th3) {
            th = th3;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        return string;
    }

    public static void apl(Context context, long j) {
        if (context != null) {
            ((Vibrator) context.getSystemService("vibrator")).vibrate(j);
        }
    }

    public static void aqk(Context context, int i, int i2, int i3, int i4, int i5) {
        Toast makeText = Toast.makeText(context, i, i2);
        makeText.setGravity(i3, i4, i5);
        makeText.show();
    }

    public static int aoT(int i) {
        return Math.round(ahA * ((float) i));
    }

    public static void apt(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
            }
        }
    }

    public static void apn(boolean z) {
        if (!z) {
            throw new AssertionError();
        }
    }

    public static C0382m apZ(Activity activity, int i) {
        if (((DevicePolicyManager) activity.getSystemService("device_policy")).getCameraDisabled(null)) {
            throw new CameraDisabledException();
        }
        try {
            return C0384o.Jr().Jy(i);
        } catch (CameraHardwareException e) {
            throw e;
        }
    }

    public static AlertDialog aqj(Activity activity, int i) {
        return new Builder(activity).setCancelable(false).setTitle(R.string.ztemt_camera_error_title).setMessage(i).setNeutralButton(R.string.dialog_ok, new C0268J(activity)).show();
    }

    public static Object aps(Object obj) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException();
    }

    public static boolean apu(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj == null ? false : obj.equals(obj2);
        } else {
            return true;
        }
    }

    public static int aoN(int i, int i2, int i3) {
        if (i > i3) {
            return i3;
        }
        if (i < i2) {
            return i2;
        }
        return i;
    }

    public static int apj(Activity activity) {
        switch (activity.getWindowManager().getDefaultDisplay().getRotation()) {
            case 0:
                return 0;
            case 1:
                return 90;
            case 2:
                return 180;
            case 3:
                return 270;
            default:
                return 0;
        }
    }

    public static int aoS(int i, int i2) {
        CameraInfo cameraInfo = new CameraInfo();
        Camera.getCameraInfo(i2, cameraInfo);
        if (cameraInfo.facing == 1) {
            return (360 - ((cameraInfo.orientation + i) % 360)) % 360;
        }
        return ((cameraInfo.orientation - i) + 360) % 360;
    }

    public static int aoU(int i) {
        CameraInfo cameraInfo = new CameraInfo();
        Camera.getCameraInfo(i, cameraInfo);
        return cameraInfo.orientation;
    }

    public static int aqe(int i, int i2) {
        Object obj = 1;
        if (i2 != -1) {
            int abs = Math.abs(i - i2);
            if (Math.min(abs, 360 - abs) < 50) {
                obj = null;
            }
        }
        if (obj != null) {
            return (((i + 45) / 90) * 90) % 360;
        }
        return i2;
    }

    public static Size apD(Activity activity, List list, double d) {
        if (list == null) {
            return null;
        }
        int min = Math.min(ahv.x, ahv.y);
        Size size = null;
        double d2 = Double.MAX_VALUE;
        for (Size size2 : list) {
            double d3;
            Size size3;
            double d4;
            if (Math.abs((((double) size2.width) / ((double) size2.height)) - d) > 0.10000000149011612d) {
                d3 = d2;
                size3 = size;
                d4 = d3;
            } else if (((double) Math.abs(size2.height - min)) < d2) {
                size3 = size2;
                d4 = (double) Math.abs(size2.height - min);
            } else {
                d3 = d2;
                size3 = size;
                d4 = d3;
            }
            size = size3;
            d2 = d4;
        }
        if (size == null) {
            C0090a.bvo("Util", "No preview size match the aspect ratio");
            d2 = Double.MAX_VALUE;
            for (Size size22 : list) {
                if (((double) Math.abs(size22.height - min)) < d2) {
                    size3 = size22;
                    d4 = (double) Math.abs(size22.height - min);
                } else {
                    d3 = d2;
                    size3 = size;
                    d4 = d3;
                }
                size = size3;
                d2 = d4;
            }
        }
        return size;
    }

    public static int api(Activity activity) {
        int intExtra = activity.getIntent().getIntExtra("android.intent.extras.CAMERA_FACING", -1);
        if (intExtra < 0 || intExtra >= C0384o.Jr().Jv()) {
            return -1;
        }
        return intExtra;
    }

    public static boolean aqa(float f, float f2, View view) {
        boolean z = true;
        if (view == null) {
            return false;
        }
        view.getLocationInWindow(ahx);
        if (f < ((float) ahx[0]) || f >= ((float) (ahx[0] + view.getWidth())) || f2 < ((float) ahx[1])) {
            z = false;
        } else if (f2 >= ((float) (ahx[1] + view.getHeight()))) {
            z = false;
        }
        return z;
    }

    public static boolean aqb(MotionEvent motionEvent, View... viewArr) {
        int i = 0;
        boolean z = false;
        while (i < viewArr.length) {
            if (C0616j.aqa(motionEvent.getX(), motionEvent.getY(), viewArr[i])) {
                z = true;
            }
            i++;
        }
        return z;
    }

    public static int[] apH(View view, View view2) {
        view.getLocationInWindow(ahx);
        int i = ahx[0];
        int i2 = ahx[1];
        view2.getLocationInWindow(ahx);
        int[] iArr = ahx;
        iArr[0] = iArr[0] - i;
        int[] iArr2 = ahx;
        iArr2[1] = iArr2[1] - i2;
        return ahx;
    }

    public static boolean aoR(Uri uri, ContentResolver contentResolver) {
        if (uri == null) {
            return false;
        }
        ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.allowThreadDiskReads();
        try {
            ParcelFileDescriptor openFileDescriptor = contentResolver.openFileDescriptor(uri, "r");
            if (openFileDescriptor == null) {
                C0090a.m1e("Util", "Fail to open URI. URI=" + uri);
                return false;
            }
            openFileDescriptor.close();
            StrictMode.setThreadPolicy(threadPolicy);
            return true;
        } catch (Throwable e) {
            C0090a.bvi("Util", "Fail to open URI.", e);
            return false;
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static void aqm(Uri uri, Context context, boolean z) {
        C0090a.bvo("Util", "viewUri " + uri);
        Intent intent = new Intent("com.android.camera.action.REVIEW", uri);
        intent.addFlags(335544320);
        intent.putExtra("cameraview", true);
        intent.putExtra("camera_screen_light", C0699a.ang().anh());
        if (z) {
            intent.putExtra("wlancamera", true);
        }
        try {
            intent.setPackage("cn.nubia.gallery3d");
            if (z) {
                ((ActivityBase) context).startActivityForResult(intent, 10001);
            } else {
                context.startActivity(intent);
            }
        } catch (ActivityNotFoundException e) {
            try {
                intent.setPackage(null);
                ((ActivityBase) context).startActivityForResult(intent, 10001);
            } catch (Throwable e2) {
                C0090a.bvi("Util", "review image fail. uri=" + uri, e2);
            }
        }
    }

    public static void aoZ(RectF rectF, Rect rect) {
        rect.left = Math.round(rectF.left);
        rect.top = Math.round(rectF.top);
        rect.right = Math.round(rectF.right);
        rect.bottom = Math.round(rectF.bottom);
    }

    public static void aoY(Matrix matrix, boolean z, int i, int i2, int i3) {
        matrix.setScale((float) (z ? -1 : 1), 1.0f);
        matrix.postRotate((float) i);
        matrix.postScale(((float) i2) / 2000.0f, ((float) i3) / 2000.0f);
        matrix.postTranslate(((float) i2) / 2.0f, ((float) i3) / 2.0f);
    }

    public static String aoP(long j) {
        String aqo;
        synchronized (ahw) {
            aqo = ahw.aqo(j);
        }
        return aqo;
    }

    public static String aoO(long j) {
        String aqn;
        synchronized (ahw) {
            aqn = ahw.aqn(j);
        }
        return aqn;
    }

    public static void apr(Context context, Uri uri) {
        if (context != null) {
            context.sendBroadcast(new Intent("android.hardware.action.NEW_PICTURE", uri));
            context.sendBroadcast(new Intent("com.android.camera.NEW_PICTURE", uri));
        }
    }

    public static void apw(View view, float f, float f2, long j) {
        if (view.getVisibility() != 0) {
            view.setVisibility(0);
            Animation alphaAnimation = new AlphaAnimation(f, f2);
            alphaAnimation.setDuration(j);
            view.startAnimation(alphaAnimation);
        }
    }

    public static void apv(View view) {
        C0616j.apw(view, 0.0f, 1.0f, 400);
        view.setEnabled(true);
    }

    public static void apx(View view) {
        if (view.getVisibility() == 0) {
            view.setEnabled(false);
            Animation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(400);
            view.startAnimation(alphaAnimation);
            view.setVisibility(8);
        }
    }

    public static int aoQ(int i, int i2) {
        CameraInfo cameraInfo = C0384o.Jr().Ju()[i];
        if (i2 == -1) {
            return cameraInfo.orientation;
        }
        if (cameraInfo.facing == 1) {
            return ((cameraInfo.orientation - i2) + 360) % 360;
        }
        return (cameraInfo.orientation + i2) % 360;
    }

    public static void apf(Context context, C0086j c0086j, Location location) {
        Object obj = 1;
        c0086j.GQ();
        c0086j.Hj(System.currentTimeMillis() / 1000);
        if (location != null) {
            double latitude = location.getLatitude();
            double longitude = location.getLongitude();
            if (latitude == 0.0d && longitude == 0.0d) {
                obj = null;
            }
            if (obj != null) {
                C0090a.m0d("Util", "Set gps location");
                c0086j.Hg(latitude);
                c0086j.Hh(longitude);
                c0086j.Hi(location.getProvider().toUpperCase());
                C0616j.apa(context, "location", "location");
                if (location.hasAltitude()) {
                    c0086j.Hf(location.getAltitude());
                } else {
                    c0086j.Hf(0.0d);
                }
                if (location.getTime() != 0) {
                    c0086j.Hj(location.getTime() / 1000);
                }
            }
        }
    }

    public static String apq(List list) {
        if (list == null) {
            return "(0,0,0,0,0)";
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            Area area = (Area) list.get(i);
            Rect rect = area.rect;
            stringBuilder.append('(');
            stringBuilder.append(rect.left);
            stringBuilder.append(',');
            stringBuilder.append(rect.top);
            stringBuilder.append(',');
            stringBuilder.append(rect.right);
            stringBuilder.append(',');
            stringBuilder.append(rect.bottom);
            stringBuilder.append(',');
            stringBuilder.append(area.weight);
            stringBuilder.append(')');
            if (i != list.size() - 1) {
                stringBuilder.append(',');
            }
        }
        return stringBuilder.toString();
    }

    public static void aqh(boolean z) {
        aht = z;
    }

    public static boolean apK() {
        return aht;
    }

    public static boolean apV(String str, Context context) {
        List runningTasks = ((ActivityManager) context.getSystemService("activity")).getRunningTasks(1);
        return runningTasks.size() > 0 && str.equals(((RunningTaskInfo) runningTasks.get(0)).topActivity.getPackageName());
    }

    public static boolean apR(Context context) {
        return ((PowerManager) context.getSystemService("power")).isScreenOn();
    }

    public static boolean apQ(Context context) {
        KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
        boolean isKeyguardLocked = keyguardManager.isKeyguardLocked();
        try {
            return ((Boolean) keyguardManager.getClass().getMethod("isDeviceLocked", new Class[0]).invoke(keyguardManager, new Object[0])).booleanValue();
        } catch (Exception e) {
            C0090a.m1e("Util", "isDeviceLocked is not had");
            return isKeyguardLocked ? keyguardManager.isKeyguardSecure() : false;
        }
    }

    public static boolean apL(Context context) {
        Util$State.LIGHT_OFF.ordinal();
        int i = System.getInt(context.getContentResolver(), "lightstate", Util$State.LIGHT_OFF.ordinal());
        C0090a.m1e("util", "torch state = " + i);
        return i != Util$State.LIGHT_OFF.ordinal();
    }

    public static boolean apk(Context context) {
        if (context == null) {
            return false;
        }
        boolean booleanValue;
        StorageManager storageManager = (StorageManager) context.getSystemService("storage");
        try {
            booleanValue = ((Boolean) storageManager.getClass().getMethod("isUsbMassStorageConnected", new Class[0]).invoke(storageManager, new Object[0])).booleanValue();
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            booleanValue = false;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            booleanValue = false;
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
            booleanValue = false;
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
            booleanValue = false;
        }
        return booleanValue;
    }

    public static boolean apg(Context context) {
        if (context == null) {
            return false;
        }
        boolean booleanValue;
        StorageManager storageManager = (StorageManager) context.getSystemService("storage");
        try {
            booleanValue = ((Boolean) storageManager.getClass().getMethod("isUsbMassStorageEnabled", new Class[0]).invoke(storageManager, new Object[0])).booleanValue();
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            booleanValue = false;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            booleanValue = false;
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
            booleanValue = false;
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
            booleanValue = false;
        }
        return booleanValue;
    }

    public static String aoV(long j, boolean z) {
        long j2 = j / 1000;
        long j3 = j2 / 60;
        long j4 = j3 / 60;
        long j5 = j3 - (60 * j4);
        j3 = j2 - (j3 * 60);
        StringBuilder stringBuilder = new StringBuilder();
        if (j4 > 0) {
            if (j4 < 10) {
                stringBuilder.append('0');
            }
            stringBuilder.append(j4);
            stringBuilder.append(':');
        }
        if (j5 < 10) {
            stringBuilder.append('0');
        }
        stringBuilder.append(j5);
        stringBuilder.append(':');
        if (j3 < 10) {
            stringBuilder.append('0');
        }
        stringBuilder.append(j3);
        if (z) {
            stringBuilder.append('.');
            j2 = (j - (j2 * 1000)) / 10;
            if (j2 < 10) {
                stringBuilder.append('0');
            }
            stringBuilder.append(j2);
        }
        return stringBuilder.toString();
    }

    public static float apy(float f, float f2) {
        return (float) Math.toDegrees(Math.asin((double) (f / f2)));
    }

    public static String[] apz(C0329e c0329e) {
        return null;
    }

    public static void aqf(C0329e c0329e) {
        if (c0329e != null) {
            C0090a.bvo("Util", "htw setBacklightOff...");
            C0086j Tn = c0329e.Tn();
            Tn.GS("backlight_key_level", 0);
            c0329e.Tr().IQ(Tn);
        }
    }

    public static void aqg(C0329e c0329e) {
        if (c0329e != null) {
            C0090a.bvo("Util", "htw setBacklightOn...");
            C0086j Tn = c0329e.Tn();
            Tn.GS("backlight_key_level", 1);
            c0329e.Tr().IQ(Tn);
        }
    }

    public static PackageInfo apE(Context context) {
        if (context == null) {
            C0090a.m1e("Util", "getPackageInfo() but context is null");
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean apN(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null || connectivityManager.getActiveNetworkInfo() == null) {
            return false;
        }
        return connectivityManager.getActiveNetworkInfo().isConnectedOrConnecting();
    }

    public static boolean apP(Context context) {
        if (context.getSharedPreferences(context.getPackageName(), 0).getInt("firstapp", 1) == 0) {
            ahu = true;
        } else {
            ahu = false;
        }
        C0090a.bvo("chengjiaqi", "mIsPermissionsGranted:" + ahu);
        return ahu;
    }

    public static void apY(String str, Context context) {
        if (context == null) {
            C0090a.m1e("Util", "onFragemntResume but context is null.");
        } else if (C0616j.apO()) {
            MobclickAgent.onPageStart(str);
            MobclickAgent.onResume(context);
        }
    }

    public static void apX(String str, Context context) {
        if (context == null) {
            C0090a.m1e("Util", "onFragemntResume but context is null.");
        } else if (C0616j.apO()) {
            MobclickAgent.onPageEnd(str);
            MobclickAgent.onPause(context);
        }
    }

    public static void apa(Context context, String str, String str2) {
        if (context != null && C0616j.apO()) {
            MobclickAgent.onEvent(context, str, str2);
        }
    }

    public static boolean aph(Intent intent) {
        if (intent == null) {
            return false;
        }
        return intent.getBooleanExtra("is_camera_key", false);
    }

    public static int apG() {
        return ahz;
    }

    public static int aoL() {
        return ahy;
    }

    public static boolean apU(String str) {
        return (C0421M.dC().dD().getProductName() + "").equals(str);
    }

    public static String aoX(long j, String str) {
        return new SimpleDateFormat(str).format(new Date(j));
    }

    public static int[] aqd(int i, int i2, int i3, int i4, int i5) {
        int[] iArr = new int[2];
        switch (i5) {
            case 90:
                iArr[0] = i4;
                iArr[1] = (i - i3) - 1;
                break;
            case 180:
                iArr[0] = (i - i3) - 1;
                iArr[1] = (i2 - i4) - 1;
                break;
            case 270:
                iArr[0] = (i2 - i4) - 1;
                iArr[1] = i3;
                break;
            default:
                iArr[0] = i3;
                iArr[1] = i4;
                break;
        }
        return iArr;
    }

    public static boolean apm() {
        C0090a.bvo("Util", " isThirdpartyVdBeautySupported = " + SystemProperties.get("persist.camera.vdbea.switch", "0"));
        return SystemProperties.get("persist.camera.vdbea.switch", "0").equals("1");
    }

    public static String[] apC(PreferenceGroup preferenceGroup) {
        String[] bw = C0421M.dC().dD().bw();
        ArrayList arrayList = new ArrayList();
        for (String str : bw) {
            if (str.equals("pref_shutter_key_into_camera_key") && !C0421M.dC().dD().cI()) {
                C0090a.bvo("Util", "remove KEY_SHUTTER_KEY_ENTER_CAMERA");
            } else if (str.equals("pref_camera_best_photo_key") && !C0421M.dC().dD().bE()) {
                C0090a.bvo("Util", "remove KEY_BEST_PHOTO");
            } else if (str.equals("pref_camera_storage_path") && !C0700r.aqR()) {
                C0090a.bvo("Util", "remove KEY_CAMERA_STORAGE_PATH");
            } else if (str.equals("pref_live_photo_key") && (!C0421M.dC().dD().ck() || C0421M.dC().dD().cj())) {
                C0090a.bvo("Util", "remove KEY_LIVE_PHOTO_PREF");
            } else if (str.equals("pref_intelligent_noise_reduction_key") && !C0421M.dC().dD().ce()) {
                C0090a.bvo("Util", "remove KEY_INTELLIGENT_NOISE_REDUCTION");
            } else if (str.equals("pref_zoom_function_key") && !C0421M.dC().dD().dc()) {
                C0090a.bvo("Util", "remove KEY_ZOOM_FUCITON");
            } else if (str.equals("pref_eis_key") && !C0421M.dC().dD().bP()) {
                C0090a.bvo("Util", "remove KEY_EIS");
            } else if (str.equals("pref_water_mark_key") && !C0421M.dC().dD().cq()) {
                C0090a.bvo("Util", "remove KEY_WATER_MARK");
            } else if (str.equals("pref_water_mark_time_key") && !C0421M.dC().dD().cr()) {
                C0090a.bvo("Util", "remove KEY_WATER_MARK_TIME");
            } else if (str.equals("pref_fusion_key") && !C0421M.dC().dD().cc()) {
                C0090a.bvo("Util", "remove KEY_FUSION_KEY");
            } else if (str.equals("pref_thirdparty_vid_pretty_switch_key") && !C0616j.apm()) {
                C0090a.bvo("Util", "remove KEY_THIRDPARTY_VD_BEAUTY_SWITCH");
            } else if (C0421M.dC().dD().bF() || !(str.equals("pref_bokeh_level_adjustable") || str.equals("pref_refocus_after_capture"))) {
                if (str.equals("pref_picture_artist_info") && !C0421M.dC().dD().cz()) {
                    C0090a.bvo("Util", "remove KEY_PICTURE_ARTIST_INFO");
                } else if (preferenceGroup.tp(str) != null) {
                    arrayList.add(str);
                } else {
                    C0090a.bvo("Util", str + "'s pref is null, removed");
                }
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static void aqc(ContentResolver contentResolver, String str, int i) {
        if (VERSION.SDK == null) {
            C0090a.m1e("Util", "can't putSystemInt, because can't read sdk");
            return;
        }
        try {
            System.putInt(contentResolver, str, i);
        } catch (Throwable e) {
            C0090a.bvi("Util", "putSystemInt failed!", e);
        }
    }

    private static int apI() {
        try {
            Class cls = Class.forName("nubia.smartkey.SmartKeySettings");
            if (cls != null) {
                Field field = cls.getField("KEYCODE_SMART");
                if (field != null) {
                    C0090a.bvm("Util", " SmartKeyValue = " + field.getInt(null));
                    return field.getInt(null);
                }
            }
        } catch (ClassNotFoundException e) {
            C0090a.m1e("Util", "initSmartKeyValue, ClassNotFoundException");
        } catch (NoSuchFieldException e2) {
            C0090a.m1e("Util", "initSmartKeyValue, NoSuchFieldException");
        } catch (IllegalAccessException e3) {
            C0090a.m1e("Util", "initSmartKeyValue, IllegalAccessException");
        }
        return -1;
    }

    public static RotateImageView apb(Context context, int i) {
        if (!C0421M.dC().dD().ct()) {
            return null;
        }
        if (C0616j.apQ(context)) {
            C0090a.m1e("Util", "getSpecificationView failed, because isScreenLocked.");
            return null;
        }
        RotateImageView rotateImageView = new RotateImageView(context);
        rotateImageView.setImageResource(R.drawable.camera_cource);
        rotateImageView.setOnClickListener(new C0365n(context, i));
        return rotateImageView;
    }

    public static boolean apS(Size size, int i, int i2) {
        boolean z;
        boolean z2 = true;
        if (Math.abs(size.width - i) < 16) {
            z = true;
        } else if (Math.abs(size.height - i2) < 16) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        if (((double) Math.abs((((float) size.width) / ((float) size.height)) - (((float) i) / ((float) i2)))) >= 0.10000000149011612d) {
            z2 = false;
        }
        if (!z2) {
            z = false;
        }
        return z;
    }

    public static ArrayList aql(String str, String str2) {
        if (str == null) {
            return null;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, str2);
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreElements()) {
            arrayList.add(stringTokenizer.nextToken());
        }
        return arrayList;
    }

    public static boolean aoW(int i) {
        try {
            byte[] bArr = new byte[i];
            return true;
        } catch (OutOfMemoryError e) {
            C0090a.bvo("Util", "malloc " + i + " fail");
            return false;
        }
    }

    public static String apA() {
        if (C0421M.dC().dD().cT()) {
            return "pref_third_arith_hdr_key";
        }
        return "pref_camera_ae_bracket_hdr_key";
    }

    public static boolean apT(String str, List list) {
        return list != null && list.indexOf(str) >= 0;
    }

    private static boolean apM() {
        String str = SystemProperties.get("ro.board.platform");
        C0090a.bvo("Util", "product platform: " + str);
        if (str == null) {
            return false;
        }
        if (str.indexOf("MT") >= 0 || str.indexOf("mt") >= 0) {
            return true;
        }
        return false;
    }

    public static boolean aoM(CameraMember cameraMember, C0378d c0378d) {
        if (C0421M.dC().dD().cE() && cameraMember == CameraMember.PRETTYCAMERA) {
            return c0378d.Fy();
        }
        return false;
    }

    public static int apd(C0329e c0329e) {
        boolean equals = "on".equals(c0329e.SS().getString("pref_water_mark_key", "on"));
        boolean equals2 = "on".equals(c0329e.SS().getString("pref_water_mark_time_key", "off"));
        if (!equals && !equals2) {
            return 0;
        }
        if (equals && !equals2) {
            return 1;
        }
        if (!equals && equals2) {
            return 2;
        }
        if (equals && equals2) {
            return 3;
        }
        return 0;
    }

    public static Bitmap ape(byte[] bArr) {
        Options options = new Options();
        options.inPreferredConfig = Config.ARGB_8888;
        options.inMutable = true;
        options.inPurgeable = true;
        options.inInputShareable = true;
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        try {
            return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
            try {
                C0090a.bvo("Util", "dump hprof E");
                Debug.dumpHprofData("/sdcard/2camera_" + System.currentTimeMillis() + ".hprof");
                C0090a.bvo("Util", "dump hprof X");
                return null;
            } catch (IOException e2) {
                C0090a.m1e("Util", "dump hprof fail " + e2.getMessage());
                return null;
            }
        }
    }

    public static byte[] apo(int... iArr) {
        int i = 0;
        byte[] bArr = new byte[(iArr.length * 4)];
        int i2 = 0;
        while (i < iArr.length) {
            int i3 = i2 + 1;
            bArr[i2] = (byte) ((iArr[i] >> 24) & 255);
            i2 = i3 + 1;
            bArr[i3] = (byte) ((iArr[i] >> 16) & 255);
            i3 = i2 + 1;
            bArr[i2] = (byte) ((iArr[i] >> 8) & 255);
            i2 = i3 + 1;
            bArr[i3] = (byte) (iArr[i] & 255);
            i++;
        }
        return bArr;
    }
}
