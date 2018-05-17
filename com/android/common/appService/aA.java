package com.android.common.appService;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.p010a.C0090a;

final class aA implements SensorEventListener {
    final /* synthetic */ C0310N Vx;

    aA(C0310N c0310n) {
        this.Vx = c0310n;
    }

    public void onAccuracyChanged(Sensor sensor, int i) {
        C0090a.m0d("GradienterCompassSensorManager", "AccelerometerSensor onAccuracyChanged " + i);
    }

    public void onSensorChanged(SensorEvent sensorEvent) {
        float f = 0.0f;
        if (sensorEvent.values[0] > 0.0f && sensorEvent.values[1] > 0.0f) {
            f = (float) (((Math.atan((double) (sensorEvent.values[0] / sensorEvent.values[1])) * 360.0d) / 2.0d) / 3.141592653589793d);
        } else if (sensorEvent.values[0] > 0.0f && sensorEvent.values[1] < 0.0f) {
            f = (float) ((((Math.atan((double) (Math.abs(sensorEvent.values[1]) / Math.abs(sensorEvent.values[0]))) * 360.0d) / 2.0d) / 3.141592653589793d) + 90.0d);
        } else if (sensorEvent.values[0] < 0.0f && sensorEvent.values[1] < 0.0f) {
            f = (float) ((((Math.atan((double) (Math.abs(sensorEvent.values[0]) / Math.abs(sensorEvent.values[1]))) * 360.0d) / 2.0d) / 3.141592653589793d) + 180.0d);
        } else if (sensorEvent.values[0] < 0.0f && sensorEvent.values[1] > 0.0f) {
            f = (float) ((((Math.atan((double) (Math.abs(sensorEvent.values[1]) / Math.abs(sensorEvent.values[0]))) * 360.0d) / 2.0d) / 3.141592653589793d) + 270.0d);
        }
        this.Vx.TN = f;
        this.Vx.abY(f);
        f = (float) (((Math.asin(((double) sensorEvent.values[2]) / Math.sqrt((double) (((sensorEvent.values[0] * sensorEvent.values[0]) + (sensorEvent.values[1] * sensorEvent.values[1])) + (sensorEvent.values[2] * sensorEvent.values[2])))) * 360.0d) / 2.0d) / 3.141592653589793d);
        this.Vx.TM = f;
        this.Vx.abX(f);
    }
}
