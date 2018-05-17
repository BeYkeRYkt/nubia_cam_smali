package com.android.camera.cameraFamily;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Handler;
import android.os.HandlerThread;
import com.android.camera.R;
import com.android.common.appService.CameraMember;
import com.android.common.custom.C0405a;
import com.android.common.custom.C0421M;
import com.p010a.C0090a;
import com.umeng.analytics.ReportPolicy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class C0174b {
    public static final CameraMember[] aEY = new CameraMember[]{CameraMember.NORMAL, CameraMember.MULTIEXPOSURE, CameraMember.LIGHTDRAW, CameraMember.FUNEFFECT, CameraMember.ELETRONIC, CameraMember.SLOWSHUTTER, CameraMember.STARTRACK, CameraMember.STARCLOUD, CameraMember.VIDEOMAKER, CameraMember.TRAJECTORY, CameraMember.OBJECTCLEAR, CameraMember.DEMISTER, CameraMember.SUPERNIGHT, CameraMember.CRYSTAL, CameraMember.PINTU, CameraMember.DNG, CameraMember.CLONE, CameraMember.INTERVALOMETER, CameraMember.VIDEO_SLOMO, CameraMember.PANORAMA, CameraMember.MONO, CameraMember.MICROSPUR, CameraMember.VR_CAMERA, CameraMember.TRIAXIAL, CameraMember.ZOOMBLUR, CameraMember.WLAN_CAMERA, CameraMember.PHOTO3D};
    private static C0174b aFl = null;
    private static final /* synthetic */ int[] aFm = null;
    private Context aEZ = null;
    private Object aFa = new Object();
    private boolean aFb = false;
    private Handler aFc;
    private boolean aFd = false;
    private HandlerThread aFe;
    private List aFf = null;
    private ArrayList aFg = new ArrayList();
    private Handler aFh = new C0185m(this);
    private SharedPreferences aFi = null;
    private List aFj = null;
    private ArrayList aFk = new ArrayList();

    private static /* synthetic */ int[] aUE() {
        if (aFm != null) {
            return aFm;
        }
        int[] iArr = new int[CameraMember.values().length];
        try {
            iArr[CameraMember.BIG_APERTURE.ordinal()] = 30;
        } catch (NoSuchFieldError e) {
        }
        try {
            iArr[CameraMember.BUSINESSCARD.ordinal()] = 31;
        } catch (NoSuchFieldError e2) {
        }
        try {
            iArr[CameraMember.CLONE.ordinal()] = 1;
        } catch (NoSuchFieldError e3) {
        }
        try {
            iArr[CameraMember.CRYSTAL.ordinal()] = 2;
        } catch (NoSuchFieldError e4) {
        }
        try {
            iArr[CameraMember.DEMISTER.ordinal()] = 3;
        } catch (NoSuchFieldError e5) {
        }
        try {
            iArr[CameraMember.DNG.ordinal()] = 4;
        } catch (NoSuchFieldError e6) {
        }
        try {
            iArr[CameraMember.DUALCAMERACALIBRATION.ordinal()] = 32;
        } catch (NoSuchFieldError e7) {
        }
        try {
            iArr[CameraMember.ELETRONIC.ordinal()] = 5;
        } catch (NoSuchFieldError e8) {
        }
        try {
            iArr[CameraMember.FACTORYTEST.ordinal()] = 33;
        } catch (NoSuchFieldError e9) {
        }
        try {
            iArr[CameraMember.FRONT.ordinal()] = 34;
        } catch (NoSuchFieldError e10) {
        }
        try {
            iArr[CameraMember.FUNEFFECT.ordinal()] = 6;
        } catch (NoSuchFieldError e11) {
        }
        try {
            iArr[CameraMember.INTERVALOMETER.ordinal()] = 7;
        } catch (NoSuchFieldError e12) {
        }
        try {
            iArr[CameraMember.LIGHTDRAW.ordinal()] = 8;
        } catch (NoSuchFieldError e13) {
        }
        try {
            iArr[CameraMember.MICROSPUR.ordinal()] = 9;
        } catch (NoSuchFieldError e14) {
        }
        try {
            iArr[CameraMember.MONO.ordinal()] = 10;
        } catch (NoSuchFieldError e15) {
        }
        try {
            iArr[CameraMember.MULTIEXPOSURE.ordinal()] = 11;
        } catch (NoSuchFieldError e16) {
        }
        try {
            iArr[CameraMember.NONE.ordinal()] = 35;
        } catch (NoSuchFieldError e17) {
        }
        try {
            iArr[CameraMember.NORMAL.ordinal()] = 12;
        } catch (NoSuchFieldError e18) {
        }
        try {
            iArr[CameraMember.OBJECTCLEAR.ordinal()] = 13;
        } catch (NoSuchFieldError e19) {
        }
        try {
            iArr[CameraMember.PANORAMA.ordinal()] = 14;
        } catch (NoSuchFieldError e20) {
        }
        try {
            iArr[CameraMember.PHOTO3D.ordinal()] = 15;
        } catch (NoSuchFieldError e21) {
        }
        try {
            iArr[CameraMember.PINTU.ordinal()] = 16;
        } catch (NoSuchFieldError e22) {
        }
        try {
            iArr[CameraMember.PIP.ordinal()] = 17;
        } catch (NoSuchFieldError e23) {
        }
        try {
            iArr[CameraMember.PRAGUE.ordinal()] = 36;
        } catch (NoSuchFieldError e24) {
        }
        try {
            iArr[CameraMember.PRETTYCAMERA.ordinal()] = 37;
        } catch (NoSuchFieldError e25) {
        }
        try {
            iArr[CameraMember.PRO.ordinal()] = 38;
        } catch (NoSuchFieldError e26) {
        }
        try {
            iArr[CameraMember.SLOWSHUTTER.ordinal()] = 18;
        } catch (NoSuchFieldError e27) {
        }
        try {
            iArr[CameraMember.STARCLOUD.ordinal()] = 19;
        } catch (NoSuchFieldError e28) {
        }
        try {
            iArr[CameraMember.STARTRACK.ordinal()] = 20;
        } catch (NoSuchFieldError e29) {
        }
        try {
            iArr[CameraMember.SUPERNIGHT.ordinal()] = 21;
        } catch (NoSuchFieldError e30) {
        }
        try {
            iArr[CameraMember.THIRDPARTY_CAMERA.ordinal()] = 39;
        } catch (NoSuchFieldError e31) {
        }
        try {
            iArr[CameraMember.TRAJECTORY.ordinal()] = 22;
        } catch (NoSuchFieldError e32) {
        }
        try {
            iArr[CameraMember.TRIAXIAL.ordinal()] = 23;
        } catch (NoSuchFieldError e33) {
        }
        try {
            iArr[CameraMember.VIDEOMAKER.ordinal()] = 24;
        } catch (NoSuchFieldError e34) {
        }
        try {
            iArr[CameraMember.VIDEO_RECORD.ordinal()] = 25;
        } catch (NoSuchFieldError e35) {
        }
        try {
            iArr[CameraMember.VIDEO_SLOMO.ordinal()] = 26;
        } catch (NoSuchFieldError e36) {
        }
        try {
            iArr[CameraMember.VR_CAMERA.ordinal()] = 27;
        } catch (NoSuchFieldError e37) {
        }
        try {
            iArr[CameraMember.WLAN_CAMERA.ordinal()] = 28;
        } catch (NoSuchFieldError e38) {
        }
        try {
            iArr[CameraMember.ZOOMBLUR.ordinal()] = 29;
        } catch (NoSuchFieldError e39) {
        }
        aFm = iArr;
        return iArr;
    }

    public static synchronized C0174b aUg() {
        C0174b c0174b;
        synchronized (C0174b.class) {
            if (aFl == null) {
                aFl = new C0174b();
            }
            c0174b = aFl;
        }
        return c0174b;
    }

    private C0174b() {
        aUo();
    }

    public void aUh(Context context) {
        C0090a.bvo("CameraFamilyMembers", "init");
        this.aEZ = context;
        aUp();
        this.aFi = this.aEZ.getSharedPreferences("CameraFamilyMembers", 0);
        this.aFd = false;
        this.aFc.removeMessages(1);
        this.aFc.removeMessages(2);
        this.aFc.sendEmptyMessage(1);
    }

    private void aUp() {
        this.aFj = new ArrayList();
        this.aFf = new ArrayList();
        for (CameraMember aan : aEY) {
            int aan2 = aan.aan();
            HashMap hashMap = new HashMap();
            hashMap.put("family_member_type", Integer.valueOf(aan2));
            hashMap.put("family_member_name", aUk(C0174b.aUl(aan2)));
            hashMap.put("family_member_icon_id", Integer.valueOf(C0174b.aUj(aan2)));
            if (C0174b.aUm(aan2, this.aEZ)) {
                this.aFj.add(hashMap);
            } else {
                this.aFf.add(hashMap);
            }
        }
    }

    public List aUn() {
        return this.aFj;
    }

    private void aUv() {
        C0090a.bvo("CameraFamilyMembers", "updateNameWhenLanguageChangeInternal");
        this.aEZ.getContentResolver().notifyChange(C0177e.aFq, null);
    }

    public static int aUj(int i) {
        switch (C0174b.aUE()[CameraMember.aap(i).ordinal()]) {
            case 1:
                return R.drawable.camera_family_clone_name;
            case 2:
            case 12:
            case 16:
            case 17:
            case 19:
            case 21:
            case 25:
                return R.drawable.camera_family_test;
            case 3:
                return R.drawable.camera_family_demister_name;
            case 4:
                return R.drawable.camera_family_dng_name;
            case 5:
                return R.drawable.camera_family_electronic_fno_name;
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                return R.drawable.camera_family_funeffect_name;
            case 7:
                return R.drawable.camera_family_intervalometer_name;
            case 8:
                return R.drawable.camera_family_light_draw_name;
            case 9:
                return R.drawable.camera_family_microspur_name;
            case 10:
                return R.drawable.camera_family_mono_name;
            case 11:
                return R.drawable.camera_family_multi_exposure_name;
            case 13:
                return R.drawable.camera_family_object_clear_name;
            case 14:
                return R.drawable.camera_family_panorama_name;
            case 15:
                return R.drawable.camera_family_photo3d_name;
            case 18:
                return R.drawable.camera_family_slowshutter_name;
            case 20:
                return R.drawable.camera_family_star_sky_name;
            case 22:
                return R.drawable.camera_family_trajectory_name;
            case 23:
                return R.drawable.camera_family_triaxial_name;
            case 24:
                return R.drawable.camera_family_video_maker_name;
            case 26:
                return R.drawable.camera_family_video_slomo_name;
            case 27:
                return R.drawable.camera_family_panorama_360_name;
            case 28:
                return R.drawable.camera_family_wlancamera_name;
            case 29:
                return R.drawable.camera_family_zoomblur_name;
            default:
                return 0;
        }
    }

    public static int aUl(int i) {
        switch (C0174b.aUE()[CameraMember.aap(i).ordinal()]) {
            case 1:
                return R.string.clone_title;
            case 2:
                return R.string.fun_crystal_title;
            case 3:
                return R.string.demister;
            case 4:
                return R.string.dng_title;
            case 5:
                return R.string.pro_electronic_fno_title;
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                return C0421M.dC().dD().bp();
            case 7:
                return R.string.intervalometer_title;
            case 8:
                return R.string.light_painting_title;
            case 9:
                return R.string.microspur_title;
            case 10:
                return R.string.mono_title;
            case 11:
                return R.string.multi_exposure_title;
            case 12:
                return R.string.pro_normal_title;
            case 13:
                return R.string.object_clear_title;
            case 14:
                return R.string.panorama_title;
            case 15:
                return R.string.photo3d_title;
            case 16:
                return R.string.pintu_title;
            case 18:
                return R.string.pro_slow_shutter_title;
            case 19:
                return R.string.galaxy_photoing_title;
            case 20:
                return R.string.star_track_title;
            case 21:
                return R.string.fun_super_night_title;
            case 22:
                return R.string.trajectory_title;
            case 23:
                return R.string.triaxial_title;
            case 24:
                return R.string.video_maker_title;
            case 25:
                return R.string.video_record_title;
            case 26:
                return R.string.video_slomo_title;
            case 27:
                return R.string.vr_title;
            case 28:
                return R.string.contents_wlancamera;
            case 29:
                return R.string.zoomblur_title;
            default:
                return 0;
        }
    }

    public static boolean aUm(int i, Context context) {
        boolean z = false;
        C0405a dD = C0421M.dC().dD();
        switch (C0174b.aUE()[CameraMember.aap(i).ordinal()]) {
            case 1:
                z = dD.bJ();
                break;
            case 2:
                z = dD.bK();
                break;
            case 3:
                z = dD.bL();
                break;
            case 4:
                z = dD.bN();
                break;
            case 5:
                z = dD.bT();
                break;
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                z = dD.cb();
                break;
            case 7:
                if (!dD.ca()) {
                    z = dD.cg();
                    break;
                }
                return false;
            case 8:
                z = dD.ci();
                break;
            case 9:
                z = dD.cn();
                break;
            case 10:
                z = dD.co();
                break;
            case 11:
                z = dD.cp();
                break;
            case 13:
                z = dD.cx();
                break;
            case 14:
                if (!dD.ca()) {
                    z = dD.cB();
                    break;
                }
                return false;
            case 15:
                z = dD.cC();
                break;
            case 18:
                z = dD.cJ();
                break;
            case 19:
                z = dD.cK();
                break;
            case 20:
                z = dD.cL();
                break;
            case 21:
                z = dD.cN();
                break;
            case 22:
                z = dD.cV();
                break;
            case 23:
                z = dD.cW();
                break;
            case 24:
                z = dD.cZ();
                break;
            case 25:
                z = true;
                break;
            case 26:
                if (!dD.ca()) {
                    z = dD.da();
                    break;
                }
                return false;
            case 27:
                z = dD.cR();
                break;
            case 28:
                z = C0174b.aUq(context);
                break;
            case 29:
                z = dD.db();
                break;
        }
        return z;
    }

    private static boolean aUq(Context context) {
        try {
            if (context.getPackageManager().getPackageInfo("cn.nubia.wlancamera", 128) != null) {
                return true;
            }
        } catch (NameNotFoundException e) {
        }
        return false;
    }

    private String aUk(int i) {
        return this.aEZ.getString(i);
    }

    public void aUi(C0175c c0175c) {
        if (!this.aFg.contains(c0175c)) {
            this.aFg.add(c0175c);
        }
    }

    public void aUs(C0175c c0175c) {
        if (this.aFg.contains(c0175c)) {
            this.aFg.remove(c0175c);
        }
    }

    public void aUr() {
        this.aFg.clear();
    }

    public void aUu(C0176d c0176d) {
        synchronized (this.aFa) {
            if (c0176d != null) {
                if (!this.aFb && this.aFd) {
                    c0176d.aUF(this.aFj);
                } else if (!this.aFk.contains(c0176d)) {
                    this.aFk.add(c0176d);
                }
            }
        }
    }

    public void aUt() {
        this.aFk.clear();
    }

    private void aUo() {
        this.aFe = new HandlerThread("camera_family_thread");
        this.aFe.start();
        this.aFc = new Handler(this.aFe.getLooper(), new C0186n(this));
    }

    protected void finalize() {
        if (this.aFe != null) {
            this.aFe.quit();
            this.aFe = null;
        }
        super.finalize();
    }
}
