package com.android.p017c;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import com.android.common.appService.CameraMember;

final class C0136i implements OnSharedPreferenceChangeListener {
    final /* synthetic */ C0131d aWU;

    C0136i(C0131d c0131d) {
        this.aWU = c0131d;
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (!(this.aWU.adC || !"pref_camera_member".equals(str) || this.aWU.adA.SP() == CameraMember.MICROSPUR)) {
            this.aWU.bml();
            this.aWU.bmq();
        }
    }
}
