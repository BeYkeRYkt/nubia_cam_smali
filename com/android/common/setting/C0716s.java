package com.android.common.setting;

import com.android.common.appService.C0301C;
import com.android.common.appService.C0302D;
import com.android.common.custom.C0421M;

public class C0716s {
    public static final int Aq;
    public static final float[] Ar = new float[]{1.0f, 1.2f, 1.4f, 2.0f, 2.4f, 2.8f, 3.2f, 3.5f, 4.0f, 4.5f, 5.6f, 6.3f, 7.1f, 8.0f, 11.0f, 13.0f, 16.0f};
    public static final float[] As = new float[]{1.0f, 1.2f, 1.4f, 2.0f, 2.4f, 2.8f, 3.2f, 3.5f, 4.0f, 4.3f, 4.8f, 5.2f, 5.6f, 6.0f, 7.5f, 8.5f, 10.0f};
    public static final float[] At;
    private static float Au = -1.0f;
    private static float Av = -1.0f;
    public static final int Aw;

    static {
        int parseInt;
        float[] fArr;
        if (C0301C.aad() != null) {
            parseInt = Integer.parseInt(((C0302D) C0301C.aad().get(0)).aal());
        } else {
            parseInt = 0;
        }
        Aw = parseInt;
        if (C0301C.aad() != null) {
            parseInt = Integer.parseInt(((C0302D) C0301C.aad().get(0)).aam());
        } else {
            parseInt = 100;
        }
        Aq = parseInt;
        if (C0421M.dC().dD().cX()) {
            fArr = new float[]{100.0f, 94.0f, 88.0f, 82.0f, 76.0f, 70.0f, 64.0f, 58.0f, 52.0f, 46.0f, 40.0f, 34.0f, 28.0f, 22.0f, 16.0f, 7.0f, 1.0f};
        } else {
            fArr = new float[]{1.0f, 1.2f, 1.4f, 2.0f, 2.4f, 2.8f, 3.2f, 3.5f, 4.0f, 4.3f, 4.8f, 5.2f, 5.6f, 6.0f, 7.5f, 8.5f, 10.0f};
        }
        At = fArr;
    }

    public static float zn() {
        if (Au == -1.0f) {
            Au = At[C0716s.zp(Ar, 2.0f)];
        }
        return Au;
    }

    public static float zo() {
        if (Av == -1.0f) {
            Av = As[C0716s.zp(Ar, 2.0f)];
        }
        return Av;
    }

    private static int zp(float[] fArr, float f) {
        if (fArr == null) {
            return -1;
        }
        for (int i = 0; i < fArr.length; i++) {
            if (Math.abs(fArr[i] - f) < 0.01f) {
                return i;
            }
        }
        return 0;
    }
}
