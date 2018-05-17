package com.android.common.p022r;

import android.app.Activity;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.provider.Settings.SettingNotFoundException;
import android.provider.Settings.System;
import com.android.common.custom.C0421M;
import com.p010a.C0090a;

public class C0699a implements SensorEventListener {
    private static String TAG = "LcdLightManager";
    private static C0699a afT;
    private static String afU = "/sys/class/leds/lcd-backlight/brightness";
    private float afV = -1.0f;
    private C0282b afW;
    private int afX = -1;
    private SensorManager afY;

    private C0699a() {
    }

    public static C0699a ang() {
        if (afT == null) {
            afT = new C0699a();
        }
        return afT;
    }

    public void ani(Activity activity, C0282b c0282b) {
        try {
            this.afX = System.getInt(activity.getContentResolver(), "screen_brightness");
        } catch (SettingNotFoundException e) {
        }
        this.afV = ((float) this.afX) / 255.0f;
        this.afY = (SensorManager) activity.getSystemService("sensor");
        this.afY.registerListener(this, this.afY.getDefaultSensor(5), 2);
        this.afW = c0282b;
    }

    public float anh() {
        return this.afV;
    }

    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public void onSensorChanged(SensorEvent sensorEvent) {
        if (this.afW != null) {
            int anm;
            if (C0421M.dC().dD().bt() == 1) {
                anm = anm(sensorEvent.values[0]);
            } else if (C0421M.dC().dD().bt() == 2) {
                anm = ann(sensorEvent.values[0]);
            } else {
                anm = anl(sensorEvent.values[0]);
            }
            this.afV = anj(this.afX, anm, ank(sensorEvent.values[0]));
            this.afW.ano(this.afV);
        }
        if (this.afY != null) {
            this.afY.unregisterListener(this);
            this.afY = null;
        }
    }

    private float anj(int i, int i2, int i3) {
        float f;
        int i4 = 255;
        int i5 = i < i2 ? i2 : i;
        switch (i3) {
            case 0:
                f = ((float) i5) / 255.0f;
                break;
            case 1:
                int i6 = (int) (((double) i5) * 1.2d);
                if (i6 <= 255) {
                    i4 = i6;
                }
                f = ((float) i4) / 255.0f;
                break;
            case 2:
                f = 1.0f;
                break;
            default:
                f = -1.0f;
                break;
        }
        C0090a.bvo(TAG, "A1 old_bright = " + i + " , new_bright " + i2 + " , affect " + i3 + " , window bright value " + f);
        return f;
    }

    private int ank(float f) {
        if (f < 100.0f) {
            return 0;
        }
        if (f < 400.0f) {
            return 1;
        }
        return 2;
    }

    private int anm(float f) {
        if (f < 400.0f) {
            return 120;
        }
        return 223;
    }

    private int ann(float f) {
        if (f < 400.0f) {
            return 200;
        }
        return 233;
    }

    private int anl(float f) {
        if (f < 100.0f) {
            return 61;
        }
        if (f < 400.0f) {
            return 100;
        }
        if (f < 900.0f) {
            return 110;
        }
        if (f < 2000.0f) {
            return 130;
        }
        if (f < 5000.0f) {
            return 170;
        }
        return 223;
    }
}
