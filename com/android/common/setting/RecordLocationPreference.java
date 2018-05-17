package com.android.common.setting;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.util.AttributeSet;

public class RecordLocationPreference extends IconListPreference {
    private final ContentResolver yU;

    public RecordLocationPreference(Context context, AttributeSet attributeSet, SharedPreferences sharedPreferences) {
        super(context, attributeSet, sharedPreferences);
        this.yU = context.getContentResolver();
    }

    public String tw() {
        return tv(zr(), this.yU) ? "on" : "off";
    }

    public static boolean tv(SharedPreferences sharedPreferences, ContentResolver contentResolver) {
        return "on".equals(sharedPreferences.getString("pref_camera_recordlocation_key", "off"));
    }
}
