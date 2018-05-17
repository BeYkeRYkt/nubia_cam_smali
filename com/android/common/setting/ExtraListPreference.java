package com.android.common.setting;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.android.camera.C0172c;

public class ExtraListPreference extends ListPreference {
    private final String zN;

    public ExtraListPreference(Context context, AttributeSet attributeSet, SharedPreferences sharedPreferences) {
        super(context, attributeSet, sharedPreferences);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0172c.aHR, 0, 0);
        this.zN = obtainStyledAttributes.getString(0);
        obtainStyledAttributes.recycle();
    }

    public String vL() {
        return this.zN;
    }
}
