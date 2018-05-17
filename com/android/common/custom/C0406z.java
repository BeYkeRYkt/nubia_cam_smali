package com.android.common.custom;

import android.os.Build;
import android.os.SystemProperties;
import com.android.camera.R;
import com.android.common.appService.C0301C;

public class C0406z implements C0405a {
    public String getProductName() {
        return Build.PRODUCT;
    }

    public boolean cG() {
        return true;
    }

    public boolean cm() {
        return false;
    }

    public final boolean cl() {
        if (dz()) {
            return C0301C.aag(C0301C.aac());
        }
        return false;
    }

    protected boolean dz() {
        return false;
    }

    public final boolean cD() {
        if (dA()) {
            return C0301C.aah(C0301C.aaf());
        }
        return false;
    }

    protected boolean dA() {
        return true;
    }

    public boolean cZ() {
        return true;
    }

    public boolean cy() {
        return false;
    }

    public boolean cw() {
        return true;
    }

    public boolean ci() {
        return false;
    }

    public final boolean cL() {
        if (dx()) {
            return C0301C.aag(C0301C.aae());
        }
        return false;
    }

    protected boolean dx() {
        return false;
    }

    public final boolean cK() {
        if (dB()) {
            return C0301C.aag(C0301C.aae());
        }
        return false;
    }

    protected boolean dB() {
        return false;
    }

    public boolean cN() {
        return false;
    }

    public boolean bK() {
        return false;
    }

    public boolean cx() {
        return false;
    }

    public boolean cV() {
        return true;
    }

    public boolean cg() {
        return true;
    }

    public boolean cp() {
        return true;
    }

    public boolean cb() {
        return false;
    }

    public boolean bL() {
        return false;
    }

    public boolean dj() {
        return false;
    }

    public boolean bZ() {
        return false;
    }

    public boolean di() {
        return false;
    }

    public float bh() {
        return 1.0f;
    }

    public String bi() {
        return "denoise-on";
    }

    public String bn() {
        return "shutter";
    }

    public String bo() {
        return "on";
    }

    public String bs() {
        String str = SystemProperties.get("persist.sys.exif.model", "model");
        if (str.equals("model")) {
            return SystemProperties.get("ro.config.devicename", "model");
        }
        return str;
    }

    public String br() {
        String str = SystemProperties.get("persist.sys.exif.make", "make");
        if (str.equals("make")) {
            return SystemProperties.get("ro.product.manufacturer", "make");
        }
        return str;
    }

    public float bg() {
        return 2.0f;
    }

    public boolean bC() {
        return false;
    }

    public final boolean cJ() {
        if (dy()) {
            return C0301C.aag(C0301C.aae());
        }
        return false;
    }

    protected boolean dy() {
        return false;
    }

    public boolean dt() {
        return false;
    }

    public boolean bI() {
        return false;
    }

    public boolean cU() {
        return false;
    }

    public boolean cI() {
        return false;
    }

    public boolean bT() {
        return true;
    }

    public boolean bD() {
        return false;
    }

    public boolean dp() {
        return false;
    }

    public boolean dw() {
        return false;
    }

    public String bm() {
        return "60";
    }

    public boolean bW() {
        return false;
    }

    public int bv() {
        return 1200;
    }

    public String[] bz() {
        return null;
    }

    public String[] by() {
        return null;
    }

    public boolean bG() {
        return true;
    }

    public boolean bX() {
        return false;
    }

    public boolean cM() {
        return false;
    }

    public boolean bM() {
        return true;
    }

    public boolean dv() {
        return false;
    }

    public boolean du() {
        return false;
    }

    public boolean ch() {
        return false;
    }

    public boolean mo576do() {
        return false;
    }

    public String bl() {
        return "on";
    }

    public boolean cF() {
        return false;
    }

    public boolean bE() {
        return false;
    }

    public boolean bR() {
        return false;
    }

    public boolean cO() {
        return false;
    }

    public boolean bQ() {
        return true;
    }

    public boolean dd() {
        return false;
    }

    public boolean de() {
        return false;
    }

    public boolean bV() {
        return false;
    }

    public int bp() {
        return R.string.fun_effects_title;
    }

    public boolean cj() {
        return true;
    }

    public boolean da() {
        return false;
    }

    public boolean cv() {
        return false;
    }

    public boolean bJ() {
        return false;
    }

    public boolean bN() {
        return false;
    }

    public int bu() {
        return 1;
    }

    public boolean dg() {
        return true;
    }

    public String bf() {
        return null;
    }

    public boolean cB() {
        return true;
    }

    public boolean cs() {
        return false;
    }

    public boolean bY() {
        return false;
    }

    public String[] bx() {
        return new String[]{"pref_camera_grid_key", "pref_camera_facedetection_key", "pref_camera_recordlocation_key", "pref_camera_shutter_sound_key", "pref_camera_picture_ratio_key", "pref_camera_gradienter_key", "pref_capture_focus_key", "pref_camera_interval_switch", "pref_camera_front_smile_shoot"};
    }

    public String[] bw() {
        return new String[]{"more_setting_basic", "pref_shutter_key_into_camera_key", "pref_snapshot_mirror_key", "pref_camera_best_photo_key", "pref_front_video_quality_key", "pref_video_quality_key", "more_setting_high", "pref_camera_storage_path", "pref_water_mark_key", "pref_water_mark_time_key", "pref_live_photo_key", "pref_key_capture_camera", "pref_intelligent_noise_reduction_key", "pref_thirdparty_vid_pretty_switch_key", "pref_fusion_key", "pref_zoom_function_key", "pref_eis_key", "pref_intelligent_power_saving", "pref_refocus_after_capture", "pref_bokeh_level_adjustable", "pref_picture_artist_info"};
    }

    public boolean ck() {
        return false;
    }

    public boolean cY() {
        return false;
    }

    public boolean ct() {
        return true;
    }

    public boolean dn() {
        return false;
    }

    public boolean bB() {
        return false;
    }

    public int bq() {
        return 1;
    }

    public boolean ds() {
        return false;
    }

    public String bj() {
        return "off";
    }

    public String bk() {
        return "off";
    }

    public boolean be() {
        return false;
    }

    public boolean ca() {
        return false;
    }

    public boolean co() {
        return false;
    }

    public boolean cT() {
        return false;
    }

    public boolean cd() {
        return false;
    }

    public boolean cn() {
        return false;
    }

    public boolean cf() {
        return false;
    }

    public boolean ce() {
        return false;
    }

    public boolean dc() {
        return false;
    }

    public boolean dh() {
        return true;
    }

    public boolean cS() {
        return false;
    }

    public boolean bP() {
        return false;
    }

    public boolean cP() {
        return false;
    }

    public int bA() {
        return 500;
    }

    public boolean bS() {
        return false;
    }

    public boolean cq() {
        return false;
    }

    public boolean cr() {
        return false;
    }

    public int bt() {
        return 0;
    }

    public boolean cc() {
        return false;
    }

    public boolean bF() {
        return false;
    }

    public boolean bH() {
        return false;
    }

    public boolean dl() {
        return false;
    }

    public boolean cR() {
        return false;
    }

    public boolean bO() {
        return false;
    }

    public boolean bU() {
        return true;
    }

    public boolean cE() {
        return bF();
    }

    public boolean dk() {
        return false;
    }

    public boolean dr() {
        return false;
    }

    public boolean dm() {
        return false;
    }

    public boolean cW() {
        return false;
    }

    public boolean db() {
        return false;
    }

    public boolean cA() {
        return false;
    }

    public boolean dq() {
        return true;
    }

    public boolean df() {
        return true;
    }

    public boolean bd() {
        return false;
    }

    public boolean cz() {
        return true;
    }

    public boolean cC() {
        return false;
    }

    public boolean cu() {
        return true;
    }

    public boolean cH() {
        return true;
    }

    public boolean cX() {
        return false;
    }

    public boolean cQ() {
        return false;
    }
}
