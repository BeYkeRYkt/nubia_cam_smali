package com.android.common.image3d;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.Log;

public class C0580j implements SensorEventListener {
    private boolean Fp = false;
    private C0571k Fq = null;
    private Sensor Fr = null;
    private int Fs = 1;
    private SensorManager Ft = null;
    private float Fu = 0.02f;
    private long Fv = 0;
    private float Fw = 0.0f;
    private float Fx = 0.0f;
    private float Fy = 0.0f;

    public C0580j(Context context) {
        this.Ft = (SensorManager) context.getSystemService("sensor");
        this.Fr = this.Ft.getDefaultSensor(4);
    }

    public void Dr(C0571k c0571k) {
        this.Fq = c0571k;
    }

    public void Dq(int i) {
        this.Fs = i;
    }

    public void Du(float f) {
        Log.i("GyroscopeSensor", "setSensorEventOmegaMagnitude:" + f);
        this.Fu = f;
    }

    public void Ds() {
        if (!this.Fp) {
            Log.i("GyroscopeSensor", "openGyroscopeSensor");
            this.Ft.registerListener(this, this.Fr, this.Fs);
            this.Fp = true;
        }
    }

    public void Dt() {
        if (this.Fp) {
            Log.i("GyroscopeSensor", "closeGyroscopeSensor");
            this.Ft.unregisterListener(this);
            this.Fp = false;
            Dv();
        }
    }

    private void Dv() {
        this.Fw = 0.0f;
        this.Fx = 0.0f;
        this.Fy = 0.0f;
        this.Fv = 0;
    }

    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public void onSensorChanged(SensorEvent sensorEvent) {
        if (this.Fv != 0) {
            float f = sensorEvent.values[0];
            float f2 = sensorEvent.values[1];
            float f3 = sensorEvent.values[2];
            if (((float) Math.sqrt((double) (((f * f) + (f2 * f2)) + (f3 * f3)))) > this.Fu) {
                long j = sensorEvent.timestamp - this.Fv;
                float f4 = 0.0f + ((f * ((float) j)) * 5.729578E-8f);
                float f5 = 0.0f + ((((float) j) * f2) * 5.729578E-8f);
                float f6 = 0.0f + ((((float) j) * f3) * 5.729578E-8f);
                this.Fw += f4;
                this.Fx += f5;
                this.Fy += f6;
                if (this.Fq != null) {
                    this.Fq.CT(f4, this.Fw, f5, this.Fx, f6, this.Fy);
                }
            }
        }
        this.Fv = sensorEvent.timestamp;
    }
}
