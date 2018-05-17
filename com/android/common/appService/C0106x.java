package com.android.common.appService;

import com.android.common.cameradevice.C0378d;
import com.android.common.cameradevice.C0384o;
import java.util.ArrayList;
import java.util.List;

public abstract class C0106x implements C0105L {
    protected static final C0378d RA;
    protected static final int RB = C0384o.Jr().Js();
    protected static final int RC = C0384o.Jr().Jt();
    protected static final int RD = C0384o.Jr().Jx();
    protected static final C0378d Rx;
    protected static final C0378d Ry;
    protected static final C0378d Rz;
    protected List RE = ZK();

    static {
        C0378d c0378d;
        C0378d c0378d2 = null;
        if (RB != -1) {
            c0378d = new C0378d(RB, -1);
        } else {
            c0378d = null;
        }
        Ry = c0378d;
        if (RC != -1) {
            c0378d = new C0378d(RC, -1);
        } else {
            c0378d = null;
        }
        Rz = c0378d;
        if (RD != -1) {
            c0378d = new C0378d(RD, -1);
        } else {
            c0378d = null;
        }
        RA = c0378d;
        if (!(RB == -1 || RD == -1)) {
            c0378d2 = new C0378d(RB, RD);
        }
        Rx = c0378d2;
    }

    public ArrayList ZL() {
        return null;
    }

    public final List ZM(CameraMember cameraMember) {
        return this.RE;
    }

    protected List ZK() {
        Object obj;
        if (Ry != null) {
            obj = Ry;
        } else if (Rz != null) {
            obj = Rz;
        } else if (RA != null) {
            obj = RA;
        } else {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        List arrayList = new ArrayList();
        arrayList.add(obj);
        return arrayList;
    }
}
