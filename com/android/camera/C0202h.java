package com.android.camera;

import com.android.clone.C0242d;
import com.android.common.appService.C0105L;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.custom.C0405a;
import com.android.common.custom.C0421M;
import com.android.common.p014n.C0117j;
import com.android.common.setting.C0109m;
import com.android.demister.C0779c;
import com.android.dng.C0796l;
import com.android.dualcameracalibration.C0816f;
import com.android.electronicfno.C0838i;
import com.android.front.C0858a;
import com.android.funeffect.C0862a;
import com.android.intervalometer.C0934f;
import com.android.lightpainting.C0949j;
import com.android.mono.C0956a;
import com.android.multiexposure.C0967c;
import com.android.normal.C1004a;
import com.android.normal.C1008e;
import com.android.objectclear.C1030h;
import com.android.p013b.C0107g;
import com.android.p013b.C0108a;
import com.android.p013b.C0123i;
import com.android.p017c.C0128b;
import com.android.p036e.C0823a;
import com.android.p037f.C0851f;
import com.android.panorama.C1050m;
import com.android.pretty.C1072a;
import com.android.slowshutter.C1094a;
import com.android.startrack.C1123l;
import com.android.trajectory.C1126a;
import com.android.triaxial.C1142a;
import com.android.video.C1147l;
import com.android.video.C1148a;
import com.android.videomaker.C1214t;
import com.android.zoomblur.C1223c;
import com.p010a.C0090a;
import com.umeng.analytics.ReportPolicy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class C0202h implements C0105L {
    private static final /* synthetic */ int[] aIv = null;
    private HashMap aIu;

    private static /* synthetic */ int[] aYA() {
        if (aIv != null) {
            return aIv;
        }
        int[] iArr = new int[CameraMember.values().length];
        try {
            iArr[CameraMember.BIG_APERTURE.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            iArr[CameraMember.BUSINESSCARD.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            iArr[CameraMember.CLONE.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            iArr[CameraMember.CRYSTAL.ordinal()] = 31;
        } catch (NoSuchFieldError e4) {
        }
        try {
            iArr[CameraMember.DEMISTER.ordinal()] = 4;
        } catch (NoSuchFieldError e5) {
        }
        try {
            iArr[CameraMember.DNG.ordinal()] = 5;
        } catch (NoSuchFieldError e6) {
        }
        try {
            iArr[CameraMember.DUALCAMERACALIBRATION.ordinal()] = 6;
        } catch (NoSuchFieldError e7) {
        }
        try {
            iArr[CameraMember.ELETRONIC.ordinal()] = 7;
        } catch (NoSuchFieldError e8) {
        }
        try {
            iArr[CameraMember.FACTORYTEST.ordinal()] = 8;
        } catch (NoSuchFieldError e9) {
        }
        try {
            iArr[CameraMember.FRONT.ordinal()] = 9;
        } catch (NoSuchFieldError e10) {
        }
        try {
            iArr[CameraMember.FUNEFFECT.ordinal()] = 10;
        } catch (NoSuchFieldError e11) {
        }
        try {
            iArr[CameraMember.INTERVALOMETER.ordinal()] = 11;
        } catch (NoSuchFieldError e12) {
        }
        try {
            iArr[CameraMember.LIGHTDRAW.ordinal()] = 12;
        } catch (NoSuchFieldError e13) {
        }
        try {
            iArr[CameraMember.MICROSPUR.ordinal()] = 13;
        } catch (NoSuchFieldError e14) {
        }
        try {
            iArr[CameraMember.MONO.ordinal()] = 14;
        } catch (NoSuchFieldError e15) {
        }
        try {
            iArr[CameraMember.MULTIEXPOSURE.ordinal()] = 15;
        } catch (NoSuchFieldError e16) {
        }
        try {
            iArr[CameraMember.NONE.ordinal()] = 32;
        } catch (NoSuchFieldError e17) {
        }
        try {
            iArr[CameraMember.NORMAL.ordinal()] = 16;
        } catch (NoSuchFieldError e18) {
        }
        try {
            iArr[CameraMember.OBJECTCLEAR.ordinal()] = 17;
        } catch (NoSuchFieldError e19) {
        }
        try {
            iArr[CameraMember.PANORAMA.ordinal()] = 18;
        } catch (NoSuchFieldError e20) {
        }
        try {
            iArr[CameraMember.PHOTO3D.ordinal()] = 19;
        } catch (NoSuchFieldError e21) {
        }
        try {
            iArr[CameraMember.PINTU.ordinal()] = 33;
        } catch (NoSuchFieldError e22) {
        }
        try {
            iArr[CameraMember.PIP.ordinal()] = 34;
        } catch (NoSuchFieldError e23) {
        }
        try {
            iArr[CameraMember.PRAGUE.ordinal()] = 35;
        } catch (NoSuchFieldError e24) {
        }
        try {
            iArr[CameraMember.PRETTYCAMERA.ordinal()] = 20;
        } catch (NoSuchFieldError e25) {
        }
        try {
            iArr[CameraMember.PRO.ordinal()] = 21;
        } catch (NoSuchFieldError e26) {
        }
        try {
            iArr[CameraMember.SLOWSHUTTER.ordinal()] = 22;
        } catch (NoSuchFieldError e27) {
        }
        try {
            iArr[CameraMember.STARCLOUD.ordinal()] = 36;
        } catch (NoSuchFieldError e28) {
        }
        try {
            iArr[CameraMember.STARTRACK.ordinal()] = 23;
        } catch (NoSuchFieldError e29) {
        }
        try {
            iArr[CameraMember.SUPERNIGHT.ordinal()] = 37;
        } catch (NoSuchFieldError e30) {
        }
        try {
            iArr[CameraMember.THIRDPARTY_CAMERA.ordinal()] = 24;
        } catch (NoSuchFieldError e31) {
        }
        try {
            iArr[CameraMember.TRAJECTORY.ordinal()] = 25;
        } catch (NoSuchFieldError e32) {
        }
        try {
            iArr[CameraMember.TRIAXIAL.ordinal()] = 26;
        } catch (NoSuchFieldError e33) {
        }
        try {
            iArr[CameraMember.VIDEOMAKER.ordinal()] = 27;
        } catch (NoSuchFieldError e34) {
        }
        try {
            iArr[CameraMember.VIDEO_RECORD.ordinal()] = 28;
        } catch (NoSuchFieldError e35) {
        }
        try {
            iArr[CameraMember.VIDEO_SLOMO.ordinal()] = 29;
        } catch (NoSuchFieldError e36) {
        }
        try {
            iArr[CameraMember.VR_CAMERA.ordinal()] = 38;
        } catch (NoSuchFieldError e37) {
        }
        try {
            iArr[CameraMember.WLAN_CAMERA.ordinal()] = 39;
        } catch (NoSuchFieldError e38) {
        }
        try {
            iArr[CameraMember.ZOOMBLUR.ordinal()] = 30;
        } catch (NoSuchFieldError e39) {
        }
        aIv = iArr;
        return iArr;
    }

    public C0202h() {
        this.aIu = null;
        this.aIu = new HashMap();
    }

    public C0117j abA(int i, CameraMember cameraMember) {
        C0090a.bvo("MemberConfigGroup", "cameraMember = " + cameraMember);
        C0105L aYy = aYy(cameraMember);
        if (aYy != null) {
            return aYy.abA(i, cameraMember);
        }
        return null;
    }

    public C0109m abB(C0329e c0329e, int i, CameraMember cameraMember) {
        C0105L aYy = aYy(cameraMember);
        if (aYy != null) {
            return aYy.abB(c0329e, i, cameraMember);
        }
        return null;
    }

    public ArrayList ZL() {
        ArrayList arrayList = new ArrayList();
        for (CameraMember cameraMember : CameraMember.values()) {
            if (aYz(cameraMember)) {
                C0105L aYy = aYy(cameraMember);
                if (aYy != null) {
                    aYx(arrayList, aYy.ZL());
                }
            }
        }
        return arrayList;
    }

    private void aYx(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList2 != null && arrayList2.size() > 0) {
            arrayList.addAll(arrayList2);
        }
    }

    private boolean aYz(CameraMember cameraMember) {
        C0405a dD = C0421M.dC().dD();
        switch (C0202h.aYA()[cameraMember.ordinal()]) {
            case 2:
            case 8:
            case 9:
            case 16:
                return true;
            case 3:
                return dD.bJ();
            case 4:
                return dD.bL();
            case 5:
                return dD.bN();
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                return dD.bO();
            case 7:
                return dD.bT();
            case 10:
                return dD.cb();
            case 11:
                return dD.cg();
            case 12:
                return dD.ci();
            case 14:
                return true;
            case 15:
                return dD.cp();
            case 17:
                return dD.cx();
            case 18:
                return dD.cB();
            case 20:
                return dD.cF();
            case 22:
                return dD.cJ();
            case 23:
                return dD.cL();
            case 25:
                return dD.cV();
            case 26:
                return dD.cW();
            case 27:
                return dD.cZ();
            case 28:
                return true;
            case 29:
                return dD.da();
            case 30:
                return dD.db();
            default:
                return true;
        }
    }

    private C0105L aYy(CameraMember cameraMember) {
        C0105L c0105l = null;
        if (!aYz(cameraMember)) {
            return null;
        }
        if (this.aIu.containsKey(cameraMember.toString())) {
            return (C0105L) this.aIu.get(cameraMember.toString());
        }
        switch (C0202h.aYA()[cameraMember.ordinal()]) {
            case 1:
                c0105l = new C0823a();
                break;
            case 2:
                c0105l = new C0123i();
                break;
            case 3:
                c0105l = new C0242d();
                break;
            case 4:
                c0105l = new C0779c();
                break;
            case 5:
                c0105l = new C0796l();
                break;
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                c0105l = new C0816f();
                break;
            case 7:
                c0105l = new C0838i();
                break;
            case 8:
                c0105l = new C0108a();
                break;
            case 9:
                c0105l = new C0858a();
                break;
            case 10:
                c0105l = new C0862a();
                break;
            case 11:
                c0105l = new C0934f();
                break;
            case 12:
                c0105l = new C0949j();
                break;
            case 13:
                c0105l = new C0128b();
                break;
            case 14:
                c0105l = new C0956a();
                break;
            case 15:
                c0105l = new C0967c();
                break;
            case 16:
                c0105l = new C1008e();
                break;
            case 17:
                c0105l = new C1030h();
                break;
            case 18:
                c0105l = new C1050m();
                break;
            case 19:
                c0105l = new C0851f();
                break;
            case 20:
                c0105l = new C1072a();
                break;
            case 21:
                c0105l = new C1004a();
                break;
            case 22:
                c0105l = new C1094a();
                break;
            case 23:
                c0105l = new C1123l();
                break;
            case 24:
                c0105l = new C0107g();
                break;
            case 25:
                c0105l = new C1126a();
                break;
            case 26:
                c0105l = new C1142a();
                break;
            case 27:
                c0105l = new C1214t();
                break;
            case 28:
                c0105l = new C1147l();
                break;
            case 29:
                c0105l = new C1148a();
                break;
            case 30:
                c0105l = new C1223c();
                break;
        }
        this.aIu.put(cameraMember.toString(), c0105l);
        return c0105l;
    }

    public CameraMember abC(CameraMember cameraMember) {
        C0105L aYy = aYy(cameraMember);
        if (aYy != null) {
            return aYy.abC(cameraMember);
        }
        return null;
    }

    public List ZM(CameraMember cameraMember) {
        C0105L aYy = aYy(cameraMember);
        if (aYy != null) {
            return aYy.ZM(cameraMember);
        }
        return null;
    }
}
