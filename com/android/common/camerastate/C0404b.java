package com.android.common.camerastate;

import android.util.Log;
import com.android.common.C0616j;
import com.p010a.C0090a;
import java.util.ArrayList;

public class C0404b {
    private static boolean IA = Log.isLoggable("CameraStateManager", 3);
    private ArrayList IB = new ArrayList();
    private UIState IC = UIState.NORMAL;
    private DeviceState Iy = DeviceState.NOT_INITIALIZED;
    private FunctionState Iz = FunctionState.NORMAL;

    public boolean JX(C0389a c0389a) {
        boolean JS = c0389a.JS(this.IC, this.Iy, this.Iz, this.IB);
        if (!JS) {
            C0090a.bvo("CameraStateManager", toString() + " set state to (" + c0389a + ") = " + JS);
        }
        return JS;
    }

    public void Kb(C0389a... c0389aArr) {
        int length = c0389aArr.length;
        this.IB.clear();
        for (int i = 0; i < length; i++) {
            this.IB.add(Integer.valueOf(c0389aArr[i].JT()));
            Kg("put <" + c0389aArr[i].JT() + ">");
        }
    }

    public void Ka() {
        this.IB.clear();
    }

    public void Ke(UIState uIState) {
        Kg("setUi " + uIState);
        C0616j.apn(uIState != UIState.NORMAL);
        this.IC = uIState;
    }

    public void Kd(DeviceState deviceState) {
        Kg("setDevice " + deviceState);
        this.Iy = deviceState;
    }

    public void JY(FunctionState functionState) {
        Kg("setFunction " + functionState);
        C0616j.apn(functionState != FunctionState.NORMAL);
        this.Iz = functionState;
    }

    public void Kf(UIState uIState) {
        if (this.IC == uIState || uIState == null) {
            Kg("setUI: " + UIState.NORMAL);
            this.IC = UIState.NORMAL;
        }
    }

    public void JW(FunctionState functionState) {
        if (this.Iz == functionState || functionState == null) {
            this.Iz = FunctionState.NORMAL;
        }
    }

    public DeviceState JV() {
        return this.Iy;
    }

    public UIState Kc() {
        return this.IC;
    }

    public FunctionState JZ() {
        return this.Iz;
    }

    private void Kg(String str) {
        if (IA) {
            C0090a.bvo("CameraStateManager", str);
        }
    }

    public String toString() {
        return "CurrentState(UI, Device, Function) = (" + this.IC + ", " + this.Iy + ", " + this.Iz + "); enbleState = " + this.IB.toString();
    }

    public C0404b() {
        Ka();
    }
}
