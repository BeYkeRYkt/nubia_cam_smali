package com.android.common.appService;

import android.view.View;

public class C0313R {
    private static final float[] TU = new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f};
    private static final float[] TV = new float[]{1.0f, 0.0f, 0.0f, 0.0f, -100.0f, 0.0f, 1.0f, 0.0f, 0.0f, -100.0f, 0.0f, 0.0f, 1.0f, 0.0f, -100.0f, 0.0f, 0.0f, 0.0f, 0.8f, 0.0f};

    public static void ach(View view) {
        view.setOnFocusChangeListener(new C0314S());
        view.setOnTouchListener(new C0315T());
    }
}
