package com.android.common.p023b;

import android.widget.Toast;
import com.android.common.ActivityBase;
import com.android.common.setting.ListPreference;
import com.android.common.ui.aj;

public class C0352b implements aj {
    private ActivityBase IV = null;
    private ListPreference IW;
    private Toast IX = null;

    public C0352b(ActivityBase activityBase) {
        this.IV = activityBase;
    }

    public void si() {
        if (this.IX != null) {
            this.IX.cancel();
            this.IX = null;
        }
        if (this.IW == null) {
            this.IW = this.IV.arB().SR().tp("pref_camera_anti_shake");
        }
        this.IV.arB().SZ(4);
        this.IV.arC();
        this.IX = Toast.makeText(this.IV, this.IW.uZ(), 0);
        this.IX.show();
    }
}
