package com.android.common.setting;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.preference.PreferenceManager;
import com.android.common.appService.CameraMember;
import java.util.Map;
import java.util.Set;

public class C0710j implements SharedPreferences {
    private String zC = null;
    private SharedPreferences zD = null;
    private SharedPreferences zE = null;

    public C0710j(SharedPreferences sharedPreferences) {
        this.zD = sharedPreferences;
    }

    public C0710j(Context context) {
        this.zD = PreferenceManager.getDefaultSharedPreferences(context);
    }

    void vk(Context context, int i, CameraMember cameraMember, boolean z, boolean z2) {
        String str;
        if (z) {
            str = context.getPackageName() + "_preferences_" + cameraMember.toString() + "_" + i + "_" + "third";
        } else if (z2) {
            str = context.getPackageName() + "_preferences_" + cameraMember.toString() + "_" + i + "_" + "secure";
        } else {
            str = context.getPackageName() + "_preferences_" + cameraMember.toString() + "_" + i;
        }
        if (!str.equals(this.zC)) {
            this.zC = str;
            this.zE = context.getSharedPreferences(this.zC, 0);
            vm();
        }
    }

    private void vm() {
        int i = 0;
        SharedPreferences sharedPreferences = this.zE;
        try {
            i = sharedPreferences.getInt("pref_local_version_key", 0);
        } catch (Exception e) {
        }
        if (i != 16) {
            Editor edit = sharedPreferences.edit();
            if (i == 1) {
                edit.remove("pref_video_quality_key");
                i = 2;
            }
            if (i == 2) {
                edit.remove("pref_video_af_lock_key");
                edit.remove("pref_video_zoom_key");
                i = 3;
            }
            if (i == 3) {
                edit.remove("pref_camera_ztemt_fun_effect");
                i = 4;
            }
            if (i == 4) {
                i = 5;
            }
            if (i == 5) {
                edit.remove("pref_camera_ztemt_fun_effect");
                i = 6;
            }
            if (i == 6) {
                edit.remove("pref_video_quality_key");
                edit.remove("pref_camera_multishot_key");
                i = 7;
            }
            if (i == 7) {
                edit.remove("pref_camera_flashmode_key");
                edit.remove("pref_camera_video_flashmode_key");
                i = 8;
            }
            if (i == 8 || i == 9) {
                edit.remove("pref_camera_ztemt_fun_effect");
                i = 10;
            }
            if (i == 10) {
                edit.remove("pretty_expandable_item");
                edit.remove("pref_camera_pretty_smooth_key");
                edit.remove("pref_camera_pretty_slimming_key");
                edit.remove("pref_camera_pretty_toning_key");
                i = 11;
            }
            if (i == 11) {
                edit.remove("pref_camera_picturesize_key");
                i = 12;
            }
            if (i == 12) {
                edit.remove("pref_camera_pretty_effect_key");
                i = 13;
            }
            if (i == 13) {
                edit.remove("pref_third_arith_hdr_key");
                edit.remove("pref_camera_ae_bracket_hdr_key");
                i = 14;
            }
            if (i == 14) {
                edit.remove("pref_camera_picture_ratio_key");
                edit.remove("pref_camera_pretty_effect_key");
                i = 15;
            }
            if (i == 15) {
                edit.remove("pref_bigaperture_pic_bokeh_level");
            }
            edit.putInt("pref_local_version_key", 16);
            edit.apply();
        }
    }

    public Map getAll() {
        throw new UnsupportedOperationException();
    }

    public String getString(String str, String str2) {
        if (vl(str) || !this.zE.contains(str)) {
            return this.zD.getString(str, str2);
        }
        return this.zE.getString(str, str2);
    }

    public int getInt(String str, int i) {
        if (vl(str) || !this.zE.contains(str)) {
            return this.zD.getInt(str, i);
        }
        return this.zE.getInt(str, i);
    }

    public long getLong(String str, long j) {
        if (vl(str) || !this.zE.contains(str)) {
            return this.zD.getLong(str, j);
        }
        return this.zE.getLong(str, j);
    }

    public float getFloat(String str, float f) {
        if (vl(str) || !this.zE.contains(str)) {
            return this.zD.getFloat(str, f);
        }
        return this.zE.getFloat(str, f);
    }

    public boolean getBoolean(String str, boolean z) {
        if (vl(str) || !this.zE.contains(str)) {
            return this.zD.getBoolean(str, z);
        }
        return this.zE.getBoolean(str, z);
    }

    public Set getStringSet(String str, Set set) {
        throw new UnsupportedOperationException();
    }

    public boolean contains(String str) {
        if (this.zE.contains(str) || this.zD.contains(str)) {
            return true;
        }
        return false;
    }

    public Editor edit() {
        return new C0711k(this);
    }

    public void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.zD.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    public void unregisterOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.zD.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    private boolean vl(String str) {
        return (str.equals("pref_camera_id_key") || str.equals("pref_camera_recordlocation_key") || str.equals("pref_camera_stabilization_key") || str.equals("pref_shutter_key_into_camera_key") || str.equals("pref_camera_shutter_sound_key") || str.equals("pref_camera_storage_path") || str.equals("pref_key_capture_camera") || str.equals("pref_camera_member") || str.equals("pref_camera_volume_key") || str.equals("is_show_dialog_before_course") || str.equals("specification_feng_zhi") || str.equals("last_system_Language") || str.equals("pref_camrea_fingerprint_shutter_key") || str.equals("pref_capture_focus_key") || str.equals("pref_snapshot_mirror_key") || str.equals("pref_video_quality_key") || str.equals("pref_front_video_quality_key") || str.equals("scroll_switcher_seleleted_family") || str.equals("pref_snapshot_mirror_key") || str.equals("pref_camera_gradienter_key") || str.equals("pref_camera_picture_ratio_key") || str.equals("pref_camera_facedetection_key") || str.equals("pref_camera_front_smile_shoot") || str.equals("pref_camera_best_photo_key") || str.equals("pref_camera_grid_key") || str.equals("pref_fengzhi_focus_key") || str.equals("pref_intelligent_noise_reduction_key") || str.equals("pref_fusion_key") || str.equals("pref_thirdparty_vid_pretty_switch_key") || str.equals("pref_water_mark_key") || str.equals("pref_water_mark_time_key") || str.equals("pref_refocus_after_capture") || str.equals("pref_intelligent_power_saving") || str.equals("pref_bokeh_level_adjustable") || str.equals("pref_picture_artist_info")) ? true : str.equals("pref_zoom_function_key");
    }
}
