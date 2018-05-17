package com.android.pretty;

import android.app.Activity;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.View;
import com.android.camera.R;
import com.android.common.ActivityBase;
import com.android.common.ui.C0474A;

public class C1078h implements C0474A {
    private static final int[] ats = new int[]{0, 0, 4, 9, 12, 16, 30, 44, 59, 75, 90};
    private static final int[] att = new int[]{0, 5, 15, 25, 35, 45, 55, 65, 80, 95, 120};
    private static final int[] atu = new int[]{0, 8, 12, 18, 26, 36, 46, 56, 66, 76, 86};
    View atA;
    Activity atv;
    int atw;
    C1051n atx;
    private SharedPreferences aty = null;
    WaterDropSeekbar atz;

    public C1078h(Activity activity, View view, SharedPreferences sharedPreferences, C1051n c1051n) {
        this.atv = activity;
        this.aty = sharedPreferences;
        this.atx = c1051n;
        this.atA = view;
        this.atz = (WaterDropSeekbar) this.atA.findViewById(R.id.pretty_seekbar);
        this.atz.aGo(10);
        this.atw = this.aty.getInt("pretty_expandable_item", 5);
        this.atz.aGm(this.atw);
        this.atz.aGp(new C1061H(this));
    }

    private void aHq() {
        Editor edit = this.aty.edit();
        edit.putInt("pretty_expandable_item", this.atw);
        edit.putString("pref_camera_pretty_smooth_key", this.atw + "");
        edit.putString("pref_camera_pretty_toning_key", this.atw + "");
        edit.putString("pref_camera_pretty_slimming_key", this.atw + "");
        edit.commit();
        ((ActivityBase) this.atv).arB().SZ(64);
    }

    public void aHo(boolean z) {
        if (z) {
            aHp(att[this.atz.asC], atu[this.atz.asC], ats[this.atz.asC]);
        } else {
            aHp(0, 0, 0);
        }
    }

    private void aHp(int i, int i2, int i3) {
        if (this.atx != null) {
            this.atx.aIs(i, i2, i3);
        }
    }

    public void fc(int i, boolean z) {
        this.atz.fc(i, z);
    }
}
