package com.android.common.setting;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.android.camera.R;
import com.android.common.appService.C0105L;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.custom.C0421M;
import com.p010a.C0090a;
import java.util.ArrayList;
import java.util.HashMap;

public class C0706f {
    private boolean yW = false;
    private C0712l yX = null;
    private HashMap yY = new HashMap();
    private C0704b yZ = null;
    private C0708h za = null;

    public C0706f(C0329e c0329e, C0105L c0105l, C0157n c0157n, ArrayList arrayList) {
        boolean arE;
        this.yZ = new C0704b(c0329e, c0105l, c0157n);
        Context SN = c0329e.SN();
        boolean VN = !c0329e.VC() ? c0329e.VN() : true;
        if (c0329e.SM() != null) {
            arE = c0329e.SM().arE();
        } else {
            arE = false;
        }
        this.za = new C0708h(SN, VN, arE);
        this.yX = new C0712l(c0329e.SN(), arrayList);
        this.yW = c0329e.SM().getIntent().getBooleanExtra("dualcalibrationautotest", false);
        up();
    }

    public void up() {
        if (this.za != null) {
            this.za.uJ();
        }
    }

    public void uk(Context context, int i, CameraMember cameraMember, boolean z) {
        this.za.uK(context, i, cameraMember, z);
    }

    public void uo(Context context, int i, CameraMember cameraMember, boolean z) {
        C0710j uK = this.za.uK(context, i, cameraMember, z);
        if (uK != null) {
            this.yX.vq(i, cameraMember, uK);
        } else {
            C0090a.bvo("SettingController", "updateLocalPreference failed, cameraId: " + i + "; member:" + cameraMember);
        }
        ug(i).tV();
    }

    public C0159c ug(int i) {
        return this.yZ.tn(i);
    }

    public void uf(int i) {
        this.yZ.to(i);
    }

    public C0712l uj() {
        return this.yX;
    }

    public C0708h ui() {
        return this.za;
    }

    public C0710j uh(int i) {
        return this.za.uL(i);
    }

    public PreferenceGroup ue(int i) {
        return this.yX.vr(i);
    }

    public void ul(Context context, int i, CameraMember cameraMember) {
        SharedPreferences uh = uh(i);
        Editor edit = uh.edit();
        if (um(context, edit, uh, cameraMember, i)) {
            edit.apply();
        }
    }

    private boolean um(Context context, Editor editor, SharedPreferences sharedPreferences, CameraMember cameraMember, int i) {
        boolean z;
        boolean z2 = false;
        if (C0421M.dC().dD().bM()) {
            if (!"off".equals(sharedPreferences.getString("pref_camera_exposure_disable_key", "off"))) {
                editor.putString("pref_camera_exposure_disable_key", "off");
                z2 = true;
            }
        }
        if (!"auto".equals(sharedPreferences.getString("pref_camera_iso_key", "auto"))) {
            editor.putString("pref_camera_iso_key", "auto");
            z2 = true;
        }
        if (!"on".equals(sharedPreferences.getString("pref_camera_anti_shake", "on"))) {
            editor.putString("pref_camera_anti_shake", "on");
            z2 = true;
        }
        if (!"0".equals(sharedPreferences.getString("pref_camera_exposure_key", "0"))) {
            editor.putString("pref_camera_exposure_key", "0");
            z2 = true;
        }
        if (C0421M.dC().dD().ck()) {
            if (!"off".equals(sharedPreferences.getString("pref_live_photo_key", "off"))) {
                editor.putString("pref_live_photo_key", "off");
                z2 = true;
            }
        }
        if (sharedPreferences.getInt("maf_key", -1) != -1) {
            editor.putInt("maf_key", -1);
            z2 = true;
        }
        String string = context.getString(R.string.pref_camera_picture_format_default);
        if (string.equals(sharedPreferences.getString("pref_camera_pictureformat_key", string))) {
            z = z2;
        } else {
            editor.putString("pref_camera_pictureformat_key", string);
            z = true;
        }
        String str = cameraMember + "_" + i;
        Object obj = this.yY.get(str);
        if (obj == null || !((Boolean) obj).booleanValue()) {
            this.yY.put(str, Boolean.valueOf(true));
            String str2 = "none";
            if (!str2.equals(sharedPreferences.getString("pref_camera_pretty_effect_key", str2))) {
                editor.remove("pref_camera_pretty_effect_key");
                z = true;
            }
            if (!str2.equals(sharedPreferences.getString("pref_camera_ztemt_fun_effect", str2))) {
                editor.remove("pref_camera_ztemt_fun_effect");
                z = true;
            }
        }
        if (!"off".equals(sharedPreferences.getString("pref_big_aperature_key", "off"))) {
            editor.putString("pref_big_aperature_key", "off");
            z = true;
        }
        if (Math.abs(sharedPreferences.getFloat("pref_bigaperture_focus_length", 2.0f) - 2.0f) > 0.001f) {
            editor.remove("pref_bigaperture_pic_bokeh_level");
            editor.remove("pref_bigaperture_focus_length");
            editor.remove("pref_bigaperture_pre_bokeh_level");
            z = true;
        }
        if (sharedPreferences.getString("pref_dng_camera_type", null) == null) {
            return z;
        }
        editor.remove("pref_dng_camera_type");
        return true;
    }

    public void un(Context context, int i, CameraMember cameraMember, boolean z, boolean z2) {
        SharedPreferences uL = this.za.uL(i);
        Editor edit = uL.edit();
        if (z || z2) {
            edit.clear();
            edit.apply();
            return;
        }
        edit.putInt("pref_camera_member", cameraMember.aan());
        uL.getString("pref_key_manual_focus", "off");
        if (!"off".equals("pref_key_manual_focus")) {
            edit.putString("pref_key_manual_focus", "off");
        }
        int i2 = uL.getInt("steps_key", 0);
        if (this.yW) {
            if (1 != i2) {
                edit.putInt("steps_key", 1);
            }
        } else if (i2 != 0) {
            edit.putInt("steps_key", 0);
        }
        if (uL.getInt("auto_steps", 3) != 3) {
            edit.putInt("auto_steps", 3);
        }
        if ((um(context, edit, uL, cameraMember, i) | 1) != 0) {
            edit.apply();
        }
    }
}
