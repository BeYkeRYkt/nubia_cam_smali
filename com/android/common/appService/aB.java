package com.android.common.appService;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.p010a.C0090a;

final class aB implements SensorEventListener {
    final /* synthetic */ C0310N Vy;

    aB(C0310N c0310n) {
        this.Vy = c0310n;
    }

    public void onAccuracyChanged(Sensor sensor, int i) {
        C0090a.m0d("GradienterCompassSensorManager", "OrienationSensor onAccuracyChanged " + i);
    }

    public void onSensorChanged(SensorEvent sensorEvent) {
        this.Vy.TL = 360.0f - sensorEvent.values[0];
        this.Vy.abW(this.Vy.TL);
    }
}
