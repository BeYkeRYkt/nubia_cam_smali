package com.android.common.setting;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.android.camera.C0172c;

public abstract class C0702t {
    private final Context Ax;
    private SharedPreferences Ay;
    private final String Az;

    public abstract void ts();

    public C0702t(Context context, AttributeSet attributeSet, SharedPreferences sharedPreferences) {
        this.Ax = context;
        this.Ay = sharedPreferences;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0172c.aHQ, 0, 0);
        this.Az = obtainStyledAttributes.getString(0);
        obtainStyledAttributes.recycle();
    }

    public String zq() {
        return this.Az;
    }

    public SharedPreferences zr() {
        return this.Ay;
    }
}
