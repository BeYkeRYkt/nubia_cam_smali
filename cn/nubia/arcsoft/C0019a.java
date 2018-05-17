package cn.nubia.arcsoft;

import android.os.SystemProperties;

public class C0019a {
    public static boolean bMs() {
        String str = SystemProperties.get("persist.sys.devicename", null);
        if (str == null || str.indexOf("biaoding") < 0) {
            return false;
        }
        return true;
    }

    public static void bMr(float[] fArr, int i, float[] fArr2) {
        if (i == 90) {
            fArr2[0] = fArr[1];
            fArr2[1] = 1.0f - fArr[0];
        } else if (i == 180) {
            fArr2[0] = 1.0f - fArr[0];
            fArr2[1] = 1.0f - fArr[1];
        } else if (i == 270) {
            fArr2[0] = 1.0f - fArr[1];
            fArr2[1] = fArr[0];
        } else {
            fArr2[0] = fArr[0];
            fArr2[1] = fArr[1];
        }
    }
}
