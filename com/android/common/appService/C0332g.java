package com.android.common.appService;

import android.app.Activity;
import com.android.camera.R;
import com.android.common.C0543g;
import com.android.common.C0616j;
import com.android.common.cameradevice.C0086j;
import com.android.common.cameradevice.C0321g;
import com.android.common.cameradevice.C0382m;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.DeviceState;
import com.android.common.custom.C0417I;
import com.android.common.setting.C0159c;
import com.android.common.setting.C0710j;
import com.p010a.C0090a;
import java.util.ArrayList;
import java.util.BitSet;

public class C0332g {
    private static final /* synthetic */ int[] QC = null;
    private Object QA;
    private BitSet QB;
    private C0329e Qw = null;
    private final C0543g Qx = new C0543g();
    private C0321g Qy = new ah(this);
    private Runnable Qz = new ai(this);

    private static /* synthetic */ int[] Yd() {
        if (QC != null) {
            return QC;
        }
        int[] iArr = new int[IDualCameraControl$DualCameraMode.values().length];
        try {
            iArr[IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            iArr[IDualCameraControl$DualCameraMode.DUAL_CAMERA_FUSION_MODE.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            iArr[IDualCameraControl$DualCameraMode.SINGLE_CAMERA_AUTO_MODE.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        QC = iArr;
        return iArr;
    }

    private void XG(ArrayList arrayList) {
        if (((Integer) arrayList.get(0)).intValue() == 10) {
            this.Qw.Wn(((Integer) arrayList.get(2)).intValue());
        }
    }

    private void XJ(ArrayList arrayList) {
        if ("auto".equals(this.Qw.SY().tI()) && 9 == ((Integer) arrayList.get(0)).intValue()) {
            if (1 == ((Integer) arrayList.get(2)).intValue()) {
                this.Qw.Wo(true);
            } else {
                this.Qw.Wo(false);
            }
            this.Qw.SU().RA(true);
        }
    }

    public C0332g(C0329e c0329e) {
        this.Qw = c0329e;
        this.QB = new BitSet(C0384o.Jr().Jv());
        this.QB.clear();
        this.QA = new Object();
    }

    public void XD(CameraMember cameraMember, CameraMember cameraMember2) {
        IDualCameraControl$DualCameraMode Xw = Xw();
        if (XA()) {
            this.Qw.SM().arD().SH(true);
        } else if (Xz()) {
            this.Qw.SM().arD().SE(true);
        } else {
            switch (C0332g.Yd()[Xw.ordinal()]) {
                case 1:
                    this.Qw.SM().arD().SE(false);
                    return;
                case 2:
                    this.Qw.SM().arD().SH(false);
                    return;
                case 3:
                    if (XC(this.Qw) || Xy(cameraMember, cameraMember2)) {
                        Xs();
                        this.Qw.SM().arC();
                        return;
                    }
                    this.Qw.Tz().sendEmptyMessage(60);
                    return;
                default:
                    return;
            }
        }
    }

    private boolean XA() {
        if (this.Qw.Tv() || this.Qw.SP() == CameraMember.DUALCAMERACALIBRATION) {
            return true;
        }
        return false;
    }

    private boolean Xy(CameraMember cameraMember, CameraMember cameraMember2) {
        if (!C0616j.ahq || cameraMember == cameraMember2) {
            return false;
        }
        return cameraMember == CameraMember.MICROSPUR || cameraMember2 == CameraMember.MICROSPUR;
    }

    private boolean Xz() {
        if (this.Qw.SP() == CameraMember.BIG_APERTURE || "on".equals(this.Qw.SS().getString("pref_big_aperature_key", "off"))) {
            return true;
        }
        return C0616j.aoM(this.Qw.SP(), this.Qw.ST());
    }

    private boolean XC(C0329e c0329e) {
        String tG = c0329e.SY().tG();
        String HK = c0329e.Tn().HK();
        if (tG == null || !(tG == null || tG.equals(HK))) {
            C0090a.m1e("PreviewManager", "zsl old: " + HK + "; new: " + tG + ", need restart Preview");
            return true;
        }
        boolean tJ = c0329e.SY().tJ();
        boolean Gw = c0329e.Tn().Gw();
        if (tJ != Gw) {
            C0090a.bvo("PreviewManager", "recordingHint old: " + Gw + "; new: " + tJ + ", Need restart preview");
            return true;
        } else if (!c0329e.SY().tK()) {
            return false;
        } else {
            C0090a.bvo("PreviewManager", "Preview size changed, Need restart preview");
            return true;
        }
    }

    public void XL() {
        if (Xz()) {
            this.Qw.SM().arD().SE(true);
        } else if (XA()) {
            this.Qw.SM().arD().SH(true);
        } else {
            Xs();
        }
        this.Qw.SM().arC();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void Xs() {
        /*
        r4 = this;
        r1 = r4.QA;
        monitor-enter(r1);
        r0 = r4.Qw;	 Catch:{ all -> 0x0043 }
        r0 = r0.SO();	 Catch:{ all -> 0x0043 }
        if (r0 == 0) goto L_0x000d;
    L_0x000b:
        monitor-exit(r1);
        return;
    L_0x000d:
        r0 = r4.Xw();	 Catch:{ all -> 0x0043 }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0043 }
        r2.<init>();	 Catch:{ all -> 0x0043 }
        r3 = "mode: ";
        r2 = r2.append(r3);	 Catch:{ all -> 0x0043 }
        r2 = r2.append(r0);	 Catch:{ all -> 0x0043 }
        r2 = r2.toString();	 Catch:{ all -> 0x0043 }
        r4.Xt(r2);	 Catch:{ all -> 0x0043 }
        r2 = com.android.common.appService.IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE;	 Catch:{ all -> 0x0043 }
        if (r0 == r2) goto L_0x0030;
    L_0x002c:
        r2 = com.android.common.appService.IDualCameraControl$DualCameraMode.DUAL_CAMERA_FUSION_MODE;	 Catch:{ all -> 0x0043 }
        if (r0 != r2) goto L_0x0035;
    L_0x0030:
        r4.XK();	 Catch:{ all -> 0x0043 }
    L_0x0033:
        monitor-exit(r1);
        return;
    L_0x0035:
        r0 = r4.Qw;	 Catch:{ all -> 0x0043 }
        r0 = r0.SP();	 Catch:{ all -> 0x0043 }
        r2 = com.android.common.appService.CameraMember.PHOTO3D;	 Catch:{ all -> 0x0043 }
        if (r0 == r2) goto L_0x0030;
    L_0x003f:
        r4.XN();	 Catch:{ all -> 0x0043 }
        goto L_0x0033;
    L_0x0043:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.appService.g.Xs():void");
    }

    public void Xr() {
        synchronized (this.QA) {
            XQ();
            XP();
            XH(DeviceState.PREVIEW_STOPPED);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void XI() {
        /*
        r6 = this;
        r1 = -1;
        r0 = r6.Qw;
        r0 = r0.ST();
        r0 = r0.FC();
        if (r0 != r1) goto L_0x000e;
    L_0x000d:
        return;
    L_0x000e:
        r1 = r6.QA;
        monitor-enter(r1);
        r2 = r6.Xu(r0);	 Catch:{ all -> 0x0064 }
        if (r2 == 0) goto L_0x001f;
    L_0x0017:
        r2 = r6.Qw;	 Catch:{ all -> 0x0064 }
        r2 = r2.SO();	 Catch:{ all -> 0x0064 }
        if (r2 == 0) goto L_0x0021;
    L_0x001f:
        monitor-exit(r1);
        return;
    L_0x0021:
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0064 }
        r2.<init>();	 Catch:{ all -> 0x0064 }
        r3 = "setSubCameraPara4OpticalZoom: ";
        r2 = r2.append(r3);	 Catch:{ all -> 0x0064 }
        r2 = r2.append(r0);	 Catch:{ all -> 0x0064 }
        r2 = r2.toString();	 Catch:{ all -> 0x0064 }
        r6.Xt(r2);	 Catch:{ all -> 0x0064 }
        r2 = r6.Xu(r0);	 Catch:{ all -> 0x0064 }
        r3 = r6.Qw;	 Catch:{ all -> 0x0064 }
        r3 = r3.UM(r0);	 Catch:{ all -> 0x0064 }
        r4 = -1;
        r3.tE(r4);	 Catch:{ all -> 0x0064 }
        r3 = r6.Qw;	 Catch:{ all -> 0x0064 }
        r3 = r3.UM(r0);	 Catch:{ all -> 0x0064 }
        r3 = r3.tD();	 Catch:{ all -> 0x0064 }
        r4 = "no-display-mode";
        r5 = 1;
        r3.GS(r4, r5);	 Catch:{ all -> 0x0064 }
        r2.IQ(r3);	 Catch:{ all -> 0x0064 }
        r3 = 0;
        r0 = com.android.common.C0616j.aoS(r3, r0);	 Catch:{ all -> 0x0064 }
        r2.Jb(r0);	 Catch:{ all -> 0x0064 }
        monitor-exit(r1);
        return;
    L_0x0064:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.appService.g.XI():void");
    }

    private void XN() {
        Xr();
        if (XM()) {
            if (this.Qw.VI()) {
                int Fz = this.Qw.ST().Fz();
                this.Qw.Ts().abI(new aj(this, Fz), Fz);
            } else {
                XH(DeviceState.IDLE);
            }
        }
        if (!this.Qw.VI()) {
            XR();
        }
    }

    private void XK() {
        int Fz = this.Qw.ST().Fz();
        int FC = this.Qw.ST().FC();
        if (Fz == -1 || FC == -1) {
            throw new IllegalStateException("Dual preview not supported in this state");
        }
        Xr();
        int i = 0;
        if (Xw() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE) {
            i = 30;
        } else if (Xw() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_FUSION_MODE) {
            i = 28;
        }
        if (this.Qw.Ud(Fz).HL() == i) {
            XF(Fz);
            XF(FC);
        }
        if (XM()) {
            this.Qw.Ts().abI(new ak(this, Fz), Fz);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean XM() {
        /*
        r7 = this;
        r6 = 1;
        r3 = -1;
        r5 = 0;
        r0 = r7.Qw;
        r0 = r0.ST();
        r0 = r0.Fz();
        r1 = "PreviewManager";
        r2 = "startPreview";
        com.p010a.C0090a.bvo(r1, r2);
        r1 = r7.QA;
        monitor-enter(r1);
        r2 = r7.QB;	 Catch:{ all -> 0x010f }
        r2 = r2.get(r0);	 Catch:{ all -> 0x010f }
        if (r2 != 0) goto L_0x0023;
    L_0x0021:
        if (r0 != r3) goto L_0x0025;
    L_0x0023:
        monitor-exit(r1);
        return r5;
    L_0x0025:
        r2 = r7.Xu(r0);	 Catch:{ all -> 0x010f }
        if (r2 == 0) goto L_0x0023;
    L_0x002b:
        r2 = r7.Qw;	 Catch:{ all -> 0x010f }
        r2 = r2.SO();	 Catch:{ all -> 0x010f }
        if (r2 != 0) goto L_0x0023;
    L_0x0033:
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x010f }
        r2.<init>();	 Catch:{ all -> 0x010f }
        r3 = "startPreview: ";
        r2 = r2.append(r3);	 Catch:{ all -> 0x010f }
        r2 = r2.append(r0);	 Catch:{ all -> 0x010f }
        r2 = r2.toString();	 Catch:{ all -> 0x010f }
        r7.Xt(r2);	 Catch:{ all -> 0x010f }
        r2 = r7.Xu(r0);	 Catch:{ all -> 0x010f }
        r3 = r7.Qx;	 Catch:{ all -> 0x010f }
        r2.IY(r3);	 Catch:{ all -> 0x010f }
        r3 = 0;
        r3 = com.android.common.C0616j.aoS(r3, r0);	 Catch:{ all -> 0x010f }
        r2.Jb(r3);	 Catch:{ all -> 0x010f }
        r3 = r7.Xx(r0);	 Catch:{ all -> 0x010f }
        if (r3 == 0) goto L_0x0075;
    L_0x0061:
        r3 = "continuous-picture";
        r4 = r7.Xx(r0);	 Catch:{ all -> 0x010f }
        r4 = r4.tL();	 Catch:{ all -> 0x010f }
        r3 = r3.equals(r4);	 Catch:{ all -> 0x010f }
        if (r3 == 0) goto L_0x0075;
    L_0x0072:
        r2.IT();	 Catch:{ all -> 0x010f }
    L_0x0075:
        r3 = r7.Xx(r0);	 Catch:{ all -> 0x010f }
        r7.XE(r3);	 Catch:{ all -> 0x010f }
        r3 = r7.Xx(r0);	 Catch:{ all -> 0x010f }
        r4 = -1;
        r3.tE(r4);	 Catch:{ all -> 0x010f }
        r3 = r7.Qw;	 Catch:{ all -> 0x010f }
        r3 = r3.UR();	 Catch:{ all -> 0x010f }
        r4 = 1;
        r3 = r3.m37o(r2, r4);	 Catch:{ all -> 0x010f }
        if (r3 != 0) goto L_0x009c;
    L_0x0091:
        r0 = "PreviewManager";
        r2 = "setCameraPrevieweTarget fail";
        com.p010a.C0090a.m1e(r0, r2);	 Catch:{ all -> 0x010f }
        monitor-exit(r1);
        return r5;
    L_0x009c:
        r3 = r7.QB;	 Catch:{ all -> 0x010f }
        r3.set(r0);	 Catch:{ all -> 0x010f }
        r2.Jc();	 Catch:{ all -> 0x010f }
        r2 = r7.Qw;	 Catch:{ all -> 0x010f }
        r2 = r2.SP();	 Catch:{ all -> 0x010f }
        r3 = com.android.common.appService.CameraMember.STARTRACK;	 Catch:{ all -> 0x010f }
        if (r2 != r3) goto L_0x00b4;
    L_0x00ae:
        r2 = r7.Qw;	 Catch:{ all -> 0x010f }
        r2 = r2.OQ;	 Catch:{ all -> 0x010f }
        if (r2 == 0) goto L_0x00be;
    L_0x00b4:
        r2 = r7.Qw;	 Catch:{ all -> 0x010f }
        r2 = r2.SP();	 Catch:{ all -> 0x010f }
        r3 = com.android.common.appService.CameraMember.LIGHTDRAW;	 Catch:{ all -> 0x010f }
        if (r2 != r3) goto L_0x00c9;
    L_0x00be:
        r2 = r7.Qw;	 Catch:{ all -> 0x010f }
        r2 = r2.SM();	 Catch:{ all -> 0x010f }
        r3 = 8;
        r2.arX(r3);	 Catch:{ all -> 0x010f }
    L_0x00c9:
        r2 = r7.Qw;	 Catch:{ all -> 0x010f }
        r2 = r2.SP();	 Catch:{ all -> 0x010f }
        r3 = com.android.common.appService.CameraMember.DUALCAMERACALIBRATION;	 Catch:{ all -> 0x010f }
        if (r2 != r3) goto L_0x00dc;
    L_0x00d3:
        r2 = r7.Xx(r0);	 Catch:{ all -> 0x010f }
        r3 = 8;
        r2.tE(r3);	 Catch:{ all -> 0x010f }
    L_0x00dc:
        r2 = r7.Qw;	 Catch:{ all -> 0x010f }
        r2 = r2.Vb();	 Catch:{ all -> 0x010f }
        r2 = r2.booleanValue();	 Catch:{ all -> 0x010f }
        if (r2 == 0) goto L_0x00fb;
    L_0x00e8:
        r2 = r7.Qw;	 Catch:{ all -> 0x010f }
        r2 = r2.VT();	 Catch:{ all -> 0x010f }
        if (r2 == 0) goto L_0x00fb;
    L_0x00f0:
        r2 = r7.Qw;	 Catch:{ all -> 0x010f }
        r2 = r2.Tz();	 Catch:{ all -> 0x010f }
        r3 = 19;
        r2.sendEmptyMessage(r3);	 Catch:{ all -> 0x010f }
    L_0x00fb:
        r2 = r7.Qw;	 Catch:{ all -> 0x010f }
        r2 = r2.SM();	 Catch:{ all -> 0x010f }
        r2.arY();	 Catch:{ all -> 0x010f }
        r0 = r7.Xu(r0);	 Catch:{ all -> 0x010f }
        r2 = r7.Qy;	 Catch:{ all -> 0x010f }
        r0.IW(r2);	 Catch:{ all -> 0x010f }
        monitor-exit(r1);
        return r6;
    L_0x010f:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.appService.g.XM():boolean");
    }

    private void XE(C0159c c0159c) {
        C0417I tM = c0159c.tM();
        if (tM != null) {
            double d = ((double) tM.width) / ((double) tM.height);
            double aba = this.Qw.SM().arW().aba();
            if (!(d == aba || d == 1.0d / aba)) {
                C0090a.bvo("PreviewManager", "reset zoom value");
                if (this.Qw.SM().ary() != null) {
                    this.Qw.SM().ary().acL();
                }
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void XO() {
        /*
        r6 = this;
        r3 = -1;
        r0 = r6.Qw;
        r0 = r0.ST();
        r0 = r0.FC();
        if (r0 != r3) goto L_0x000e;
    L_0x000d:
        return;
    L_0x000e:
        r1 = r6.QA;
        monitor-enter(r1);
        r2 = r6.QB;	 Catch:{ all -> 0x0089 }
        r2 = r2.get(r0);	 Catch:{ all -> 0x0089 }
        if (r2 != 0) goto L_0x001b;
    L_0x0019:
        if (r0 != r3) goto L_0x001d;
    L_0x001b:
        monitor-exit(r1);
        return;
    L_0x001d:
        r2 = r6.Xu(r0);	 Catch:{ all -> 0x0089 }
        if (r2 == 0) goto L_0x001b;
    L_0x0023:
        r2 = r6.Qw;	 Catch:{ all -> 0x0089 }
        r2 = r2.SO();	 Catch:{ all -> 0x0089 }
        if (r2 != 0) goto L_0x001b;
    L_0x002b:
        r2 = r6.QB;	 Catch:{ all -> 0x0089 }
        r2.set(r0);	 Catch:{ all -> 0x0089 }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0089 }
        r2.<init>();	 Catch:{ all -> 0x0089 }
        r3 = "startPreview: ";
        r2 = r2.append(r3);	 Catch:{ all -> 0x0089 }
        r2 = r2.append(r0);	 Catch:{ all -> 0x0089 }
        r2 = r2.toString();	 Catch:{ all -> 0x0089 }
        r6.Xt(r2);	 Catch:{ all -> 0x0089 }
        r2 = r6.Xu(r0);	 Catch:{ all -> 0x0089 }
        r3 = r6.Qw;	 Catch:{ all -> 0x0089 }
        r3 = r3.UM(r0);	 Catch:{ all -> 0x0089 }
        r4 = -1;
        r3.tE(r4);	 Catch:{ all -> 0x0089 }
        r3 = r6.Qw;	 Catch:{ all -> 0x0089 }
        r3 = r3.UM(r0);	 Catch:{ all -> 0x0089 }
        r3 = r3.tD();	 Catch:{ all -> 0x0089 }
        r4 = "no-display-mode";
        r5 = 1;
        r3.GS(r4, r5);	 Catch:{ all -> 0x0089 }
        r2.IQ(r3);	 Catch:{ all -> 0x0089 }
        r3 = 0;
        r3 = com.android.common.C0616j.aoS(r3, r0);	 Catch:{ all -> 0x0089 }
        r2.Jb(r3);	 Catch:{ all -> 0x0089 }
        r2.Jc();	 Catch:{ all -> 0x0089 }
        r2 = r6.Qw;	 Catch:{ all -> 0x0089 }
        r2 = r2.SP();	 Catch:{ all -> 0x0089 }
        r3 = com.android.common.appService.CameraMember.DUALCAMERACALIBRATION;	 Catch:{ all -> 0x0089 }
        if (r2 != r3) goto L_0x0087;
    L_0x007e:
        r0 = r6.Xx(r0);	 Catch:{ all -> 0x0089 }
        r2 = 8;
        r0.tE(r2);	 Catch:{ all -> 0x0089 }
    L_0x0087:
        monitor-exit(r1);
        return;
    L_0x0089:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.appService.g.XO():void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void XP() {
        /*
        r5 = this;
        r3 = -1;
        r0 = r5.Qw;
        r0 = r0.ST();
        r0 = r0.Fz();
        if (r0 != r3) goto L_0x000e;
    L_0x000d:
        return;
    L_0x000e:
        r1 = r5.QA;
        monitor-enter(r1);
        r2 = r5.QB;	 Catch:{ all -> 0x009d }
        r2 = r2.get(r0);	 Catch:{ all -> 0x009d }
        if (r2 == 0) goto L_0x001b;
    L_0x0019:
        if (r0 != r3) goto L_0x001d;
    L_0x001b:
        monitor-exit(r1);
        return;
    L_0x001d:
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x009d }
        r2.<init>();	 Catch:{ all -> 0x009d }
        r3 = "stopPreview: ";
        r2 = r2.append(r3);	 Catch:{ all -> 0x009d }
        r2 = r2.append(r0);	 Catch:{ all -> 0x009d }
        r2 = r2.toString();	 Catch:{ all -> 0x009d }
        r5.Xt(r2);	 Catch:{ all -> 0x009d }
        r2 = r5.Xu(r0);	 Catch:{ all -> 0x009d }
        if (r2 == 0) goto L_0x006d;
    L_0x003a:
        r3 = "PreviewManager";
        r4 = "stopPreview";
        com.p010a.C0090a.bvo(r3, r4);	 Catch:{ all -> 0x009d }
        r3 = r5.Xv();	 Catch:{ all -> 0x009d }
        r4 = com.android.common.camerastate.DeviceState.SNAPSHOT_IN_PROGRESS;	 Catch:{ all -> 0x009d }
        if (r3 != r4) goto L_0x0055;
    L_0x004b:
        r3 = r5.Qw;	 Catch:{ all -> 0x009d }
        r3 = r3.SP();	 Catch:{ all -> 0x009d }
        r4 = com.android.common.appService.CameraMember.ELETRONIC;	 Catch:{ all -> 0x009d }
        if (r3 == r4) goto L_0x0058;
    L_0x0055:
        r2.IT();	 Catch:{ all -> 0x009d }
    L_0x0058:
        r3 = r5.Qw;	 Catch:{ all -> 0x009d }
        r3.Xd();	 Catch:{ all -> 0x009d }
        r2.Jd();	 Catch:{ all -> 0x009d }
        r3 = 0;
        r2.IW(r3);	 Catch:{ all -> 0x009d }
        r2 = r5.Qw;	 Catch:{ all -> 0x009d }
        r2 = r2.Ts();	 Catch:{ all -> 0x009d }
        r2.abJ(r0);	 Catch:{ all -> 0x009d }
    L_0x006d:
        r2 = r5.QB;	 Catch:{ all -> 0x009d }
        r2.clear(r0);	 Catch:{ all -> 0x009d }
        r0 = r5.Xv();	 Catch:{ all -> 0x009d }
        r2 = com.android.common.camerastate.DeviceState.SNAPSHOT_IN_PROGRESS;	 Catch:{ all -> 0x009d }
        if (r0 != r2) goto L_0x0080;
    L_0x007a:
        r0 = r5.XB();	 Catch:{ all -> 0x009d }
        if (r0 == 0) goto L_0x0095;
    L_0x0080:
        r0 = android.os.Looper.myLooper();	 Catch:{ all -> 0x009d }
        r2 = android.os.Looper.getMainLooper();	 Catch:{ all -> 0x009d }
        if (r0 == r2) goto L_0x0097;
    L_0x008a:
        r0 = r5.Qw;	 Catch:{ all -> 0x009d }
        r0 = r0.Tz();	 Catch:{ all -> 0x009d }
        r2 = r5.Qz;	 Catch:{ all -> 0x009d }
        r0.post(r2);	 Catch:{ all -> 0x009d }
    L_0x0095:
        monitor-exit(r1);
        return;
    L_0x0097:
        r0 = r5.Qz;	 Catch:{ all -> 0x009d }
        r0.run();	 Catch:{ all -> 0x009d }
        goto L_0x0095;
    L_0x009d:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.appService.g.XP():void");
    }

    private void XQ() {
        int FC = this.Qw.ST().FC();
        if (FC != -1 && Xu(FC) != null) {
            synchronized (this.QA) {
                if (this.QB.get(FC)) {
                    Xt("stopPreview: " + FC);
                    C0382m Xu = Xu(FC);
                    if (Xu != null) {
                        Xu.Jd();
                    }
                    this.Qw.Ts().abJ(FC);
                    this.QB.clear(FC);
                    return;
                }
            }
        }
    }

    private void XR() {
        String tF = this.Qw.SY().tF();
        if (tF != null) {
            if ("off".equals(tF)) {
                this.Qw.Xd();
            } else {
                this.Qw.WZ();
            }
        }
    }

    private boolean XB() {
        C0710j SS = this.Qw.SS();
        CameraMember SP = this.Qw.SP();
        Activity SN = this.Qw.SN();
        String string = SS.getString("pref_camera_ae_bracket_hdr_key", SN.getString(R.string.pref_camera_ae_bracket_hdr_default));
        String string2 = SS.getString("pref_camera_interval_switch", SN.getString(R.string.switch_value_off));
        if ((SP == CameraMember.NORMAL || SP == CameraMember.PRO) && string.equals(SN.getString(R.string.pref_camera_ae_bracket_hdr_value_hdr))) {
            return true;
        }
        if ((SP == CameraMember.PRO && string2.equals(SN.getString(R.string.switch_value_on))) || SP == CameraMember.ELETRONIC || SP == CameraMember.SLOWSHUTTER) {
            return true;
        }
        return false;
    }

    private void XF(int i) {
        synchronized (Xu(i)) {
            C0086j tD = this.Qw.UM(i).tD();
            tD.HM(0);
            Xu(i).IQ(tD);
        }
    }

    private DeviceState Xv() {
        return this.Qw.SX().JV();
    }

    private void XH(DeviceState deviceState) {
        this.Qw.SX().Kd(deviceState);
    }

    private C0159c Xx(int i) {
        return this.Qw.UM(i);
    }

    private C0382m Xu(int i) {
        return C0384o.Jr().Jw(i);
    }

    private IDualCameraControl$DualCameraMode Xw() {
        return this.Qw.SM().arD().Sz();
    }

    private void Xt(String str) {
        C0090a.bvo("PreviewManager", "debuglog: " + str);
    }
}
