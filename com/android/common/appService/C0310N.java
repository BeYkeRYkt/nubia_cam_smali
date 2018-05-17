package com.android.common.appService;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.p010a.C0090a;
import java.util.ArrayList;

public class C0310N {
    private Sensor TI = null;
    SensorEventListener TJ = new aA(this);
    private ArrayList TK = new ArrayList();
    private float TL = 0.0f;
    private float TM = 0.0f;
    private float TN = 0.0f;
    private boolean TO = false;
    private boolean TP = false;
    private Sensor TQ;
    SensorEventListener TR = new aB(this);
    private ArrayList TS = new ArrayList();
    private SensorManager TT;

    public void abO(Context context) {
        if (this.TT == null) {
            C0090a.bvo("GradienterCompassSensorManager", "init");
            this.TT = (SensorManager) context.getSystemService("sensor");
            this.TI = this.TT.getDefaultSensor(1);
            this.TQ = this.TT.getDefaultSensor(3);
            if (!this.TS.isEmpty()) {
                abZ();
            }
            if (!this.TK.isEmpty()) {
                aca();
            }
        }
    }

    public void release() {
        C0090a.bvo("GradienterCompassSensorManager", "release");
        acb();
        acc();
        this.TS.clear();
        this.TK.clear();
        this.TQ = null;
        this.TI = null;
        this.TT = null;
    }

    private void abZ() {
        if (this.TT == null) {
            C0090a.m1e("GradienterCompassSensorManager", "not init or release!");
            return;
        }
        if (!this.TO) {
            C0090a.m0d("GradienterCompassSensorManager", "startAccelerometerSensor");
            this.TT.registerListener(this.TJ, this.TI, 2);
            this.TO = true;
        }
    }

    private void acb() {
        if (this.TT == null) {
            C0090a.m1e("GradienterCompassSensorManager", "not init or release!");
            return;
        }
        if (this.TO) {
            C0090a.m0d("GradienterCompassSensorManager", "stopAccelerometerSensor");
            this.TT.unregisterListener(this.TJ, this.TI);
            this.TO = false;
        }
    }

    private void aca() {
        if (this.TT == null) {
            C0090a.m1e("GradienterCompassSensorManager", "not init or release!");
            return;
        }
        if (!this.TP) {
            C0090a.m0d("GradienterCompassSensorManager", "startOrienationSensor");
            this.TT.registerListener(this.TR, this.TQ, 2);
            this.TP = true;
        }
    }

    private void acc() {
        if (this.TT == null) {
            C0090a.m1e("GradienterCompassSensorManager", "not init or release!");
            return;
        }
        if (this.TP) {
            C0090a.m0d("GradienterCompassSensorManager", "stopOrienationSensor");
            this.TT.unregisterListener(this.TR, this.TQ);
            this.TP = false;
        }
    }

    public void abV(C0311O c0311o) {
        if (c0311o != null && !this.TS.contains(c0311o)) {
            C0090a.m0d("GradienterCompassSensorManager", "addOrientationListener");
            this.TS.add(c0311o);
            abZ();
        }
    }

    public void abP(C0311O c0311o) {
        if (this.TS.remove(c0311o)) {
            C0090a.m0d("GradienterCompassSensorManager", "removeOrientationListener");
            if (this.TS.isEmpty()) {
                acb();
            }
        }
    }

    public void abS(C0312P c0312p) {
        if (c0312p != null && !this.TK.contains(c0312p)) {
            C0090a.m0d("GradienterCompassSensorManager", "addCompassListener");
            this.TK.add(c0312p);
            aca();
        }
    }

    public void abQ(C0312P c0312p) {
        if (this.TK.remove(c0312p)) {
            C0090a.m0d("GradienterCompassSensorManager", "removeCompassListener");
            if (this.TK.isEmpty()) {
                acc();
            }
        }
    }

    public void abY(float f) {
        for (C0311O c0311o : this.TS) {
            if (c0311o != null) {
                c0311o.lS(f);
            }
        }
    }

    public void abX(float f) {
        for (C0311O c0311o : this.TS) {
            if (c0311o != null) {
                c0311o.lR(f);
            }
        }
    }

    public void abW(float f) {
        for (C0312P c0312p : this.TK) {
            if (c0312p != null) {
                c0312p.lQ(f);
            }
        }
    }

    public float abU() {
        return this.TN;
    }

    public float abT() {
        return this.TM;
    }

    public float abR() {
        return this.TL;
    }
}
