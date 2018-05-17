package com.android.common.independentutil;

import android.content.Context;
import android.hardware.Camera;
import android.hardware.Camera.Face;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.storage.StorageManager;
import com.android.common.custom.C0421M;
import com.p010a.C0090a;
import java.lang.reflect.InvocationTargetException;

public class IndependenceUtil {
    public static final boolean afZ = anx();
    private static Context agA;
    public static final boolean aga = anW();
    public static final boolean agb = anQ();
    public static final boolean agc = anV();
    public static final boolean agd = any();
    public static final boolean age = anP();
    public static final boolean agf = anD();
    public static final boolean agg = anN();
    public static final boolean agh = anH();
    public static final boolean agi = anO();
    public static final boolean agj = anC();
    public static final boolean agk = anR();
    public static final boolean agl = anA();
    public static final boolean agm = anF();
    public static final boolean agn = anz();
    public static final boolean ago = anJ();
    public static final boolean agp = anS();
    public static final boolean agq = anI();
    public static final boolean agr = (VERSION.SDK_INT >= 16);
    public static final boolean ags = anB();
    public static final boolean agt = anM();
    public static final boolean agu = anT();
    public static final boolean agv = anE();
    public static final boolean agw = anG();
    public static final boolean agx = anU();
    public static final boolean agy = anK();
    public static final boolean agz = anL();

    static {
        System.loadLibrary("nubiajpeg");
        System.loadLibrary("IndependenceUtil");
    }

    public static void anw(Context context) {
        agA = context;
    }

    private static boolean anx() {
        return !"Independence".equals(C0421M.dC().dD().getProductName());
    }

    private static boolean anE() {
        try {
            Class.forName("android.opengl.EGL14");
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean anK() {
        try {
            Class.forName("cn.nubia.Motor.VibrationMotorFactory").getMethod("createVibrationMotor", new Class[]{Context.class});
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean anI() {
        try {
            Camera.class.getMethod("setLongshot", new Class[]{Boolean.TYPE});
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean anL() {
        try {
            Class.forName("android.hardware.Camera").getMethod("openLegacy", new Class[]{Integer.TYPE, Integer.TYPE});
            return true;
        } catch (Throwable e) {
            C0090a.bvi("IndependenceUtil", "isSupportedOpenLegacy failed!", e);
            return false;
        }
    }

    private static boolean anJ() {
        try {
            Class.forName("android.hardware.Camera$Parameters").getDeclaredField("SCENE_MODE_HDR");
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean anU() {
        try {
            Class cls = Class.forName("android.hardware.Camera$Parameters");
            cls.getMethod("getTouchAfAec", new Class[0]);
            cls.getMethod("getSupportedTouchAfAec", new Class[0]);
            cls.getDeclaredField("TOUCH_AF_AEC_OFF");
            cls.getDeclaredField("TOUCH_AF_AEC_ON");
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean anD() {
        try {
            Class cls = Class.forName("android.hardware.Camera$Parameters");
            cls.getMethod("getSupportedDenoiseModes", new Class[0]);
            cls.getMethod("setDenoise", new Class[]{String.class});
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean anN() {
        try {
            Class cls = Class.forName("android.hardware.Camera$Parameters");
            cls.getMethod("getSupportedRedeyeReductionModes", new Class[0]);
            cls.getMethod("setRedeyeReductionMode", new Class[]{String.class});
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean anH() {
        try {
            Class cls = Class.forName("android.hardware.Camera$Parameters");
            cls.getMethod("getSupportedIsoValues", new Class[0]);
            cls.getMethod("setISOValue", new Class[]{String.class});
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean anO() {
        try {
            Class cls = Class.forName("android.hardware.Camera$Parameters");
            cls.getMethod("getMaxSaturation", new Class[0]);
            cls.getMethod("setSaturation", new Class[]{Integer.TYPE});
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean anC() {
        try {
            Class cls = Class.forName("android.hardware.Camera$Parameters");
            cls.getMethod("getMaxContrast", new Class[0]);
            cls.getMethod("setContrast", new Class[]{Integer.TYPE});
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean anR() {
        try {
            Class cls = Class.forName("android.hardware.Camera$Parameters");
            cls.getMethod("getMaxSharpness", new Class[0]);
            cls.getMethod("setSharpness", new Class[]{Integer.TYPE});
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean any() {
        try {
            Class.forName("android.hardware.Camera$Parameters").getDeclaredField("KEY_QC_AE_BRACKET_HDR");
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean anA() {
        try {
            Class.forName("android.hardware.Camera$Parameters").getMethod("setAutoExposure", new Class[]{String.class});
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean anQ() {
        try {
            Class cls = Class.forName("android.hardware.Camera$Parameters");
            cls.getMethod("setZSLMode", new Class[]{String.class});
            cls.getMethod("setCameraMode", new Class[]{String.class});
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean anz() {
        boolean z = true;
        if (afZ && C0421M.dC().dD().dw()) {
            return true;
        }
        try {
            Class.forName("android.hardware.Camera$Parameters").getMethod("setFocusPosition", new Class[]{Integer.TYPE, Integer.TYPE});
        } catch (Exception e) {
            z = false;
        }
        return z;
    }

    private static boolean anF() {
        try {
            Class cls = Class.forName("android.hardware.Camera$Parameters");
            cls.getMethod("getSupportedFaceDetectionModes", new Class[0]);
            cls.getMethod("setFaceDetectionMode", new Class[]{String.class});
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean anG() {
        try {
            Class.forName("android.hardware.Camera$Parameters").getMethod("getSupportedHistogramModes", new Class[0]);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean anq() {
        return afZ;
    }

    private static boolean anS() {
        return VERSION.SDK_INT >= 17;
    }

    public static boolean anu() {
        return afZ ? C0421M.dC().dD().cJ() : false;
    }

    public static boolean anr() {
        return agr;
    }

    private static boolean anM() {
        try {
            Class.forName("android.hardware.Camera$Parameters").getMethod("isPowerModeSupported", new Class[0]);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean anV() {
        try {
            Class cls = Class.forName("android.hardware.Camera$Parameters");
            cls.getMethod("getSupportedVideoHighFrameRateModes", new Class[0]);
            cls.getMethod("setVideoHighFrameRate", new Class[]{String.class});
            cls.getMethod("getVideoHighFrameRate", new Class[0]);
            cls.getMethod("getSupportedHfrSizes", new Class[0]);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean anT() {
        boolean z;
        try {
            Class.forName("com.qualcomm.camera.QCFace").getMethod("getSmileDegree", new Class[0]);
            z = true;
        } catch (Exception e) {
            z = false;
        }
        if (z) {
            return z;
        }
        try {
            Class.forName("org.codeaurora.camera.QCFace").getMethod("getSmileDegree", new Class[0]);
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    public static int anp(Face face) {
        try {
            return ((Integer) face.getClass().getMethod("getSmileDegree", new Class[0]).invoke(face, new Object[0])).intValue();
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return 0;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return 0;
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
            return 0;
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    private static boolean anB() {
        boolean z;
        try {
            Class cls = Class.forName("com.qualcomm.camera.QCFace");
            cls.getMethod("getBlinkDetected", new Class[0]);
            cls.getMethod("getLeftRightDirection", new Class[0]);
            cls.getMethod("getUpDownDirection", new Class[0]);
            z = true;
        } catch (Exception e) {
            z = false;
        }
        if (z) {
            return z;
        }
        try {
            cls = Class.forName("org.codeaurora.camera.QCFace");
            cls.getMethod("getBlinkDetected", new Class[0]);
            cls.getMethod("getLeftRightDirection", new Class[0]);
            cls.getMethod("getUpDownDirection", new Class[0]);
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    private static boolean anW() {
        try {
            Class.forName("android.media.MediaCodec");
            Class.forName("android.media.MediaCodecInfo");
            Class.forName("android.media.MediaFormat");
            Class.forName("android.media.MediaMuxer");
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean anP() {
        try {
            Class cls = Class.forName("android.hardware.Camera$Parameters");
            cls.getMethod("getSupportedSelectableZoneAf", new Class[0]);
            cls.getMethod("setSelectableZoneAf", new Class[]{String.class});
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static String ant() {
        String file = Environment.getExternalStorageDirectory().toString();
        if (agA == null) {
            return null;
        }
        StorageManager storageManager = (StorageManager) agA.getSystemService("storage");
        try {
            String str;
            for (String str2 : (String[]) storageManager.getClass().getMethod("getVolumePaths", new Class[0]).invoke(storageManager, new Object[0])) {
                if (!str2.toLowerCase().contains("usb") && !file.equals(str2)) {
                    str = str2;
                    break;
                }
            }
            str = null;
            return str;
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return null;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return null;
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
            return null;
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static boolean ans() {
        IllegalArgumentException e;
        IllegalAccessException e2;
        InvocationTargetException e3;
        NoSuchMethodException e4;
        if (agA == null) {
            return false;
        }
        int i;
        StorageManager storageManager = (StorageManager) agA.getSystemService("storage");
        try {
            String[] strArr = (String[]) storageManager.getClass().getMethod("getVolumePaths", new Class[0]).invoke(storageManager, new Object[0]);
            int length = strArr.length;
            int i2 = 0;
            i = 0;
            while (i2 < length) {
                try {
                    if (!strArr[i2].toLowerCase().contains("usb")) {
                        i++;
                    }
                    i2++;
                } catch (IllegalArgumentException e5) {
                    e = e5;
                } catch (IllegalAccessException e6) {
                    e2 = e6;
                } catch (InvocationTargetException e7) {
                    e3 = e7;
                } catch (NoSuchMethodException e8) {
                    e4 = e8;
                }
            }
        } catch (IllegalArgumentException e9) {
            e = e9;
            i = 0;
            e.printStackTrace();
            return i <= 1;
        } catch (IllegalAccessException e10) {
            e2 = e10;
            i = 0;
            e2.printStackTrace();
            if (i <= 1) {
            }
        } catch (InvocationTargetException e11) {
            e3 = e11;
            i = 0;
            e3.printStackTrace();
            if (i <= 1) {
            }
        } catch (NoSuchMethodException e12) {
            e4 = e12;
            i = 0;
            e4.printStackTrace();
            if (i <= 1) {
            }
        }
        if (i <= 1) {
        }
    }

    public static boolean anv() {
        return afZ ? C0421M.dC().dD().bI() : false;
    }
}
