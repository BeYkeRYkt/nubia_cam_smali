package cn.nubia.p000a;

import com.android.common.appService.C0329e;
import com.android.common.appService.IDualCameraControl$DualCameraMode;
import com.android.common.cameradevice.C0382m;
import com.android.common.cameradevice.C0384o;
import com.android.common.custom.C0421M;
import java.util.ArrayList;

public class C0015m {
    private C0329e bnL = null;
    private int bnM = C0384o.Jr().Js();
    private IDualCameraControl$DualCameraMode bnN = IDualCameraControl$DualCameraMode.SINGLE_CAMERA_AUTO_MODE;
    private boolean bnO = false;
    private int bnP = 0;
    private int bnQ = C0384o.Jr().Jx();
    private Object bnR = null;
    private int bnS = 0;

    public C0015m(C0329e c0329e) {
        this.bnL = c0329e;
        this.bnO = C0421M.dC().dD().cc();
        this.bnR = new Object();
    }

    public void bKf(ArrayList arrayList) {
    }

    public void bKe() {
        this.bnN = IDualCameraControl$DualCameraMode.SINGLE_CAMERA_AUTO_MODE;
    }

    public IDualCameraControl$DualCameraMode bKd() {
        return this.bnN;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void bJZ() {
        /*
        r4 = this;
        r1 = r4.bnR;
        monitor-enter(r1);
        r0 = r4.bnN;	 Catch:{ all -> 0x0067 }
        r2 = com.android.common.appService.IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE;	 Catch:{ all -> 0x0067 }
        if (r0 != r2) goto L_0x0019;
    L_0x0009:
        r0 = r4.bnL;	 Catch:{ all -> 0x0067 }
        r0 = r0.SX();	 Catch:{ all -> 0x0067 }
        r0 = r0.JV();	 Catch:{ all -> 0x0067 }
        r2 = com.android.common.camerastate.DeviceState.PREVIEW_STOPPED;	 Catch:{ all -> 0x0067 }
        if (r0 == r2) goto L_0x0019;
    L_0x0017:
        monitor-exit(r1);
        return;
    L_0x0019:
        r0 = r4.bnL;	 Catch:{ all -> 0x0067 }
        r0 = r0.SX();	 Catch:{ all -> 0x0067 }
        r0 = r0.JV();	 Catch:{ all -> 0x0067 }
        r2 = com.android.common.camerastate.DeviceState.NOT_INITIALIZED;	 Catch:{ all -> 0x0067 }
        if (r0 == r2) goto L_0x0017;
    L_0x0027:
        r0 = r4.bnM;	 Catch:{ all -> 0x0067 }
        r0 = r4.bKg(r0);	 Catch:{ all -> 0x0067 }
        if (r0 == 0) goto L_0x0017;
    L_0x002f:
        r0 = r4.bnQ;	 Catch:{ all -> 0x0067 }
        r0 = r4.bKg(r0);	 Catch:{ all -> 0x0067 }
        if (r0 == 0) goto L_0x0017;
    L_0x0037:
        r0 = "DualCameraConnector";
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0067 }
        r2.<init>();	 Catch:{ all -> 0x0067 }
        r3 = "startApertureMode MonoCameraMode before: ";
        r2 = r2.append(r3);	 Catch:{ all -> 0x0067 }
        r3 = r4.bnN;	 Catch:{ all -> 0x0067 }
        r2 = r2.append(r3);	 Catch:{ all -> 0x0067 }
        r2 = r2.toString();	 Catch:{ all -> 0x0067 }
        com.p010a.C0090a.bvo(r0, r2);	 Catch:{ all -> 0x0067 }
        r0 = com.android.common.appService.IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE;	 Catch:{ all -> 0x0067 }
        r4.bnN = r0;	 Catch:{ all -> 0x0067 }
        r0 = r4.bnL;	 Catch:{ all -> 0x0067 }
        r0.TB();	 Catch:{ all -> 0x0067 }
        r0 = r4.bnL;	 Catch:{ all -> 0x0067 }
        r0 = r0.SM();	 Catch:{ all -> 0x0067 }
        r0.arC();	 Catch:{ all -> 0x0067 }
        monitor-exit(r1);
        return;
    L_0x0067:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.nubia.a.m.bJZ():void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void bKa() {
        /*
        r3 = this;
        r1 = r3.bnR;
        monitor-enter(r1);
        r0 = r3.bnN;	 Catch:{ all -> 0x0046 }
        r2 = com.android.common.appService.IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE;	 Catch:{ all -> 0x0046 }
        if (r0 != r2) goto L_0x0017;
    L_0x0009:
        r0 = r3.bnL;	 Catch:{ all -> 0x0046 }
        r0 = r0.SX();	 Catch:{ all -> 0x0046 }
        r0 = r0.JV();	 Catch:{ all -> 0x0046 }
        r2 = com.android.common.camerastate.DeviceState.NOT_INITIALIZED;	 Catch:{ all -> 0x0046 }
        if (r0 != r2) goto L_0x0019;
    L_0x0017:
        monitor-exit(r1);
        return;
    L_0x0019:
        r0 = r3.bnM;	 Catch:{ all -> 0x0046 }
        r0 = r3.bKg(r0);	 Catch:{ all -> 0x0046 }
        if (r0 == 0) goto L_0x0017;
    L_0x0021:
        r0 = r3.bnQ;	 Catch:{ all -> 0x0046 }
        r0 = r3.bKg(r0);	 Catch:{ all -> 0x0046 }
        if (r0 == 0) goto L_0x0017;
    L_0x0029:
        r0 = "DualCameraConnector";
        r2 = "stopApertureMode";
        com.p010a.C0090a.bvo(r0, r2);	 Catch:{ all -> 0x0046 }
        r0 = com.android.common.appService.IDualCameraControl$DualCameraMode.SINGLE_CAMERA_AUTO_MODE;	 Catch:{ all -> 0x0046 }
        r3.bnN = r0;	 Catch:{ all -> 0x0046 }
        r0 = r3.bnL;	 Catch:{ all -> 0x0046 }
        r0.TB();	 Catch:{ all -> 0x0046 }
        r0 = r3.bnL;	 Catch:{ all -> 0x0046 }
        r0 = r0.SM();	 Catch:{ all -> 0x0046 }
        r0.arC();	 Catch:{ all -> 0x0046 }
        monitor-exit(r1);
        return;
    L_0x0046:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.nubia.a.m.bKa():void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void bKb() {
        /*
        r4 = this;
        r1 = r4.bnR;
        monitor-enter(r1);
        r0 = r4.bnN;	 Catch:{ all -> 0x0067 }
        r2 = com.android.common.appService.IDualCameraControl$DualCameraMode.DUAL_CAMERA_FUSION_MODE;	 Catch:{ all -> 0x0067 }
        if (r0 != r2) goto L_0x0019;
    L_0x0009:
        r0 = r4.bnL;	 Catch:{ all -> 0x0067 }
        r0 = r0.SX();	 Catch:{ all -> 0x0067 }
        r0 = r0.JV();	 Catch:{ all -> 0x0067 }
        r2 = com.android.common.camerastate.DeviceState.PREVIEW_STOPPED;	 Catch:{ all -> 0x0067 }
        if (r0 == r2) goto L_0x0019;
    L_0x0017:
        monitor-exit(r1);
        return;
    L_0x0019:
        r0 = r4.bnL;	 Catch:{ all -> 0x0067 }
        r0 = r0.SX();	 Catch:{ all -> 0x0067 }
        r0 = r0.JV();	 Catch:{ all -> 0x0067 }
        r2 = com.android.common.camerastate.DeviceState.NOT_INITIALIZED;	 Catch:{ all -> 0x0067 }
        if (r0 == r2) goto L_0x0017;
    L_0x0027:
        r0 = r4.bnM;	 Catch:{ all -> 0x0067 }
        r0 = r4.bKg(r0);	 Catch:{ all -> 0x0067 }
        if (r0 == 0) goto L_0x0017;
    L_0x002f:
        r0 = r4.bnQ;	 Catch:{ all -> 0x0067 }
        r0 = r4.bKg(r0);	 Catch:{ all -> 0x0067 }
        if (r0 == 0) goto L_0x0017;
    L_0x0037:
        r0 = "DualCameraConnector";
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0067 }
        r2.<init>();	 Catch:{ all -> 0x0067 }
        r3 = "startFushionMode MonoCameraMode before: ";
        r2 = r2.append(r3);	 Catch:{ all -> 0x0067 }
        r3 = r4.bnN;	 Catch:{ all -> 0x0067 }
        r2 = r2.append(r3);	 Catch:{ all -> 0x0067 }
        r2 = r2.toString();	 Catch:{ all -> 0x0067 }
        com.p010a.C0090a.bvo(r0, r2);	 Catch:{ all -> 0x0067 }
        r0 = com.android.common.appService.IDualCameraControl$DualCameraMode.DUAL_CAMERA_FUSION_MODE;	 Catch:{ all -> 0x0067 }
        r4.bnN = r0;	 Catch:{ all -> 0x0067 }
        r0 = r4.bnL;	 Catch:{ all -> 0x0067 }
        r0.TB();	 Catch:{ all -> 0x0067 }
        r0 = r4.bnL;	 Catch:{ all -> 0x0067 }
        r0 = r0.SM();	 Catch:{ all -> 0x0067 }
        r0.arC();	 Catch:{ all -> 0x0067 }
        monitor-exit(r1);
        return;
    L_0x0067:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.nubia.a.m.bKb():void");
    }

    private C0382m bKg(int i) {
        return C0384o.Jr().Jw(i);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void bKc() {
        /*
        r3 = this;
        r1 = r3.bnR;
        monitor-enter(r1);
        r0 = r3.bnL;	 Catch:{ all -> 0x0046 }
        r0 = r0.SX();	 Catch:{ all -> 0x0046 }
        r0 = r0.JV();	 Catch:{ all -> 0x0046 }
        r2 = com.android.common.camerastate.DeviceState.NOT_INITIALIZED;	 Catch:{ all -> 0x0046 }
        if (r0 == r2) goto L_0x0017;
    L_0x0011:
        r0 = r3.bnN;	 Catch:{ all -> 0x0046 }
        r2 = com.android.common.appService.IDualCameraControl$DualCameraMode.DUAL_CAMERA_FUSION_MODE;	 Catch:{ all -> 0x0046 }
        if (r0 == r2) goto L_0x0019;
    L_0x0017:
        monitor-exit(r1);
        return;
    L_0x0019:
        r0 = r3.bnM;	 Catch:{ all -> 0x0046 }
        r0 = r3.bKg(r0);	 Catch:{ all -> 0x0046 }
        if (r0 == 0) goto L_0x0017;
    L_0x0021:
        r0 = r3.bnQ;	 Catch:{ all -> 0x0046 }
        r0 = r3.bKg(r0);	 Catch:{ all -> 0x0046 }
        if (r0 == 0) goto L_0x0017;
    L_0x0029:
        r0 = "DualCameraConnector";
        r2 = "stopFusionMode";
        com.p010a.C0090a.bvo(r0, r2);	 Catch:{ all -> 0x0046 }
        r0 = com.android.common.appService.IDualCameraControl$DualCameraMode.SINGLE_CAMERA_AUTO_MODE;	 Catch:{ all -> 0x0046 }
        r3.bnN = r0;	 Catch:{ all -> 0x0046 }
        r0 = r3.bnL;	 Catch:{ all -> 0x0046 }
        r0.TB();	 Catch:{ all -> 0x0046 }
        r0 = r3.bnL;	 Catch:{ all -> 0x0046 }
        r0 = r0.SM();	 Catch:{ all -> 0x0046 }
        r0.arC();	 Catch:{ all -> 0x0046 }
        monitor-exit(r1);
        return;
    L_0x0046:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.nubia.a.m.bKc():void");
    }
}
