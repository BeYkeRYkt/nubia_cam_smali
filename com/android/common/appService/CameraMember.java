package com.android.common.appService;

import android.content.res.Resources;
import com.android.camera.R;
import com.android.common.cameradevice.C0384o;
import com.android.common.custom.C0405a;
import com.android.common.custom.C0421M;
import com.android.common.independentutil.IndependenceUtil;
import com.p010a.C0090a;
import com.umeng.analytics.ReportPolicy;
import java.util.HashMap;

public enum CameraMember {
    NONE(0),
    NORMAL(1),
    ELETRONIC(2),
    SLOWSHUTTER(3),
    FUNEFFECT(4),
    INTERVALOMETER(5),
    MULTIEXPOSURE(6),
    TRAJECTORY(7),
    LIGHTDRAW(8),
    VIDEOMAKER(9),
    PANORAMA(10),
    PIP(11),
    OBJECTCLEAR(12),
    STARTRACK(13),
    PINTU(14),
    SUPERNIGHT(15),
    CRYSTAL(16),
    STARCLOUD(17),
    VIDEO_RECORD(18),
    BUSINESSCARD(19),
    VIDEO_SLOMO(21),
    FRONT(22),
    DEMISTER(23),
    PRETTYCAMERA(24),
    PRAGUE(25),
    FACTORYTEST(26),
    DNG(27),
    CLONE(29),
    PRO(30),
    THIRDPARTY_CAMERA(31),
    MONO(32),
    MICROSPUR(33),
    VR_CAMERA(34),
    DUALCAMERACALIBRATION(35),
    BIG_APERTURE(36),
    TRIAXIAL(37),
    ZOOMBLUR(38),
    WLAN_CAMERA(39),
    PHOTO3D(40);
    
    private static Resources SO;
    private static HashMap SP;
    private int mValue;

    private CameraMember(int i) {
        this.mValue = 0;
        this.mValue = i;
    }

    public static CameraMember aap(int i) {
        switch (i) {
            case 1:
                return NORMAL;
            case 2:
                return ELETRONIC;
            case 3:
                return SLOWSHUTTER;
            case 4:
                return FUNEFFECT;
            case 5:
                return INTERVALOMETER;
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                return MULTIEXPOSURE;
            case 7:
                return TRAJECTORY;
            case 8:
                return LIGHTDRAW;
            case 9:
                return VIDEOMAKER;
            case 10:
                return PANORAMA;
            case 11:
                return PIP;
            case 12:
                return OBJECTCLEAR;
            case 13:
                return STARTRACK;
            case 14:
                return PINTU;
            case 15:
                return SUPERNIGHT;
            case 16:
                return CRYSTAL;
            case 17:
                return STARCLOUD;
            case 18:
                return VIDEO_RECORD;
            case 19:
                return BUSINESSCARD;
            case 21:
                return VIDEO_SLOMO;
            case 22:
                return FRONT;
            case 23:
                return DEMISTER;
            case 24:
                return PRETTYCAMERA;
            case 27:
                return DNG;
            case 29:
                return CLONE;
            case 30:
                return PRO;
            case 32:
                return MONO;
            case 33:
                return MICROSPUR;
            case 34:
                return VR_CAMERA;
            case 35:
                return DUALCAMERACALIBRATION;
            case 36:
                return BIG_APERTURE;
            case 37:
                return TRIAXIAL;
            case 38:
                return ZOOMBLUR;
            case 39:
                return WLAN_CAMERA;
            case 40:
                return PHOTO3D;
            default:
                return null;
        }
    }

    public static void aas(Resources resources) {
        SO = resources;
        SP = new HashMap();
    }

    public static String aar(int i) {
        return aaq(i, 0);
    }

    public static String aaq(int i, int i2) {
        if (IndependenceUtil.afZ) {
            return aav(aap(i), i2);
        }
        return "";
    }

    public static String aav(CameraMember cameraMember, int i) {
        if (!IndependenceUtil.afZ) {
            return "";
        }
        if (cameraMember == null) {
            C0090a.m1e("CameraMember", "valueToSubDir CameraMember is null");
            return "";
        }
        String str = cameraMember.toString() + "" + i;
        String str2 = (String) SP.get(str);
        if (str2 == null) {
            str2 = SO.getString(aau(cameraMember, i));
            if (str2.length() > 0) {
                str2 = "/" + str2;
            }
            SP.put(str, str2);
        }
        return str2;
    }

    public static int aau(CameraMember cameraMember, int i) {
        switch (aaw()[cameraMember.ordinal()]) {
            case 1:
                return R.string.contents_bigApertrue;
            case 2:
            case 22:
                return R.string.contents_root;
            case 3:
                return R.string.contents_clone;
            case 4:
                return R.string.contents_crystal;
            case 5:
                return R.string.contents_demister;
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                return R.string.contents_dng;
            case 7:
                return R.string.contents_electronicfno;
            case 8:
            case 15:
                return i == C0384o.Jr().Jt() ? R.string.contents_frontcamera : R.string.contents_root;
            case 9:
                return R.string.contents_effect;
            case 10:
                return R.string.contents_intervalometer;
            case 11:
                return R.string.contents_lightdraw;
            case 12:
                return R.string.contents_microspur;
            case 13:
                return R.string.contents_mono;
            case 14:
                return R.string.contents_multiexposure;
            case 16:
                return R.string.contents_objectclear;
            case 17:
                return R.string.contents_panorama;
            case 18:
                return R.string.contents_photo3d;
            case 19:
                return R.string.contents_pintu;
            case 20:
                return R.string.contents_pip;
            case 21:
                if (C0421M.dC().dD().cE()) {
                    return R.string.contents_portraitcamera;
                }
                return i == C0384o.Jr().Jt() ? R.string.contents_frontcamera : R.string.contents_root;
            case 23:
                return R.string.contents_slowshutter;
            case 24:
                return R.string.contents_starcloud;
            case 25:
                return R.string.contents_starmode;
            case 26:
                return R.string.contents_supernight;
            case 27:
                return R.string.contents_trajectory;
            case 28:
                return R.string.contents_triaxial;
            case 29:
                return R.string.contents_videomaker;
            case 30:
                return R.string.contents_video;
            case 31:
                return R.string.contents_slomovideo;
            case 32:
                return R.string.contents_vr;
            case 33:
                return R.string.contents_wlancamera;
            case 34:
                return R.string.contents_zoomblur;
            default:
                C0090a.m1e("CameraMember", "unkown member " + cameraMember);
                return R.string.contents_root;
        }
    }

    public static boolean aao(CameraMember cameraMember, int i) {
        switch (aaw()[cameraMember.ordinal()]) {
            case 15:
                if (i == C0384o.Jr().Jt()) {
                    return false;
                }
                return IndependenceUtil.afZ;
            case 29:
                return true;
            default:
                return false;
        }
    }

    public static boolean aat(CameraMember cameraMember, int i) {
        C0405a dD = C0421M.dC().dD();
        if (!dD.dc() || (i == C0384o.Jr().Jt() && !dD.dh())) {
            return false;
        }
        switch (aaw()[cameraMember.ordinal()]) {
            case 15:
            case 22:
                return IndependenceUtil.afZ;
            default:
                return false;
        }
    }

    public int aan() {
        return this.mValue;
    }
}
