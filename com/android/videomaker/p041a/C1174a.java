package com.android.videomaker.p041a;

import android.content.Context;
import android.graphics.Paint;
import android.util.DisplayMetrics;
import android.view.WindowManager;

public class C1174a {
    public static int awE = 2;
    public static int awF = 1;
    private static float awG = -1.0f;
    private static final Paint awH = new Paint(2);

    private C1174a() {
    }

    public static void aKx(Context context) {
        if (awG < 0.0f) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            awG = displayMetrics.density;
        }
    }

    public static float aKv(float f) {
        return awG * f;
    }

    public static int aKw(int i) {
        return Math.round(C1174a.aKv((float) i));
    }
}
