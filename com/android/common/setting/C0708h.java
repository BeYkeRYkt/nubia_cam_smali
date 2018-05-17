package com.android.common.setting;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0384o;
import com.p010a.C0090a;

public class C0708h {
    private C0710j[] zn = null;
    private boolean zo = false;
    private SharedPreferences zp = null;

    public C0708h(Context context, boolean z, boolean z2) {
        this.zo = z;
        this.zn = new C0710j[C0384o.Jr().Jv()];
        for (int i = 0; i < this.zn.length; i++) {
            this.zn[i] = null;
        }
        if (z) {
            this.zp = context.getSharedPreferences(context.getPackageName() + "_preferences_third", 0);
        } else if (z2) {
            this.zp = context.getSharedPreferences(context.getPackageName() + "_secure", 0);
        } else {
            this.zp = PreferenceManager.getDefaultSharedPreferences(context);
        }
        if (z2) {
            this.zp.edit().clear().apply();
        }
    }

    public C0710j uL(int i) {
        if (i == -1) {
            return null;
        }
        return this.zn[i];
    }

    public int uI() {
        return Integer.parseInt(this.zp.getString("pref_camera_id_key", "0"));
    }

    public void uM(int i) {
        Editor edit = this.zp.edit();
        edit.putString("pref_camera_id_key", Integer.toString(i));
        edit.apply();
    }

    public void uJ() {
        uO(this.zp);
        uN(this.zp);
    }

    private void uO(SharedPreferences sharedPreferences) {
        int i = 0;
        try {
            i = sharedPreferences.getInt("pref_version_key", 0);
        } catch (Exception e) {
        }
        if (i != 8) {
            Editor edit = sharedPreferences.edit();
            if (i == 0 || i == 1) {
                i = 2;
            }
            if (i == 2) {
                edit.remove("pref_camera_recordlocation_key");
                i = 3;
            }
            if (i == 3) {
                edit.remove("pref_camera_videoquality_key");
                edit.remove("pref_camera_video_duration_key");
                i = 4;
            }
            if (!(i == 4 || i == 5 || i == 6)) {
                if (i == 7) {
                }
                edit.putInt("pref_version_key", 8);
                edit.apply();
            }
            edit.remove("pref_camera_grid_key");
            edit.remove("pref_camera_facedetection_key");
            edit.putInt("pref_version_key", 8);
            edit.apply();
        }
    }

    private void uN(SharedPreferences sharedPreferences) {
        int uI = uI();
        if (uI != 0) {
            int Jv = C0384o.Jr().Jv();
            if (uI < 0 || uI >= Jv) {
                uM(0);
            }
        }
    }

    public C0710j uK(Context context, int i, CameraMember cameraMember, boolean z) {
        if (i == -1) {
            C0090a.bvo("SharedPreferenceManager", "CameraId is " + i + "; no preference need to update");
            return null;
        }
        if (this.zn[i] == null) {
            this.zn[i] = new C0710j(this.zp);
        }
        uL(i).vk(context, i, cameraMember, this.zo, z);
        return uL(i);
    }
}
