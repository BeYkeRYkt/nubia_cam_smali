package com.android.camera;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.os.SystemProperties;
import android.widget.RadioButton;
import android.widget.TextView;
import com.android.camera.p020b.C0164b;
import com.android.common.appService.C0329e;
import com.android.common.custom.ProductInfo;

public class C0162a {
    private Activity aHC;
    private C0329e aHD;
    private AlertDialog aHE = null;
    private TextView aHF = null;
    private boolean aHG = false;
    private TextView aHH = null;
    private RadioButton aHI = null;
    private int aHJ = 0;

    public C0162a(Activity activity, C0329e c0329e) {
        this.aHC = activity;
        this.aHD = c0329e;
    }

    private boolean aXl() {
        if (this.aHC.getSharedPreferences(this.aHC.getPackageName(), 0).getInt("firstapp", 1) != 1 || this.aHD.VA() || this.aHD.VJ() || this.aHD.VN()) {
            return false;
        }
        return true;
    }

    private void aXm(int i) {
        Editor edit = this.aHC.getSharedPreferences(this.aHC.getPackageName(), 0).edit();
        edit.putInt("firstapp", i);
        edit.apply();
    }

    public void aXp() {
        if (aXl() && !aXk()) {
            if (VERSION.SDK_INT > 23) {
                aXo();
            } else {
                aXn();
            }
        }
    }

    private boolean aXk() {
        return SystemProperties.getInt("sys.nubia_internal_version_flag", 0) == 1 && ProductInfo.getProductName().indexOf("NX573") == 0;
    }

    private void aXo() {
        new C0164b(this.aHC).aWo(R.string.user_agreement).aWp(R.string.camera_permission).aWq(R.string.camera_permission_allow, new C0208l(this)).aWr(R.string.camera_permission_forbid, new C0209m(this)).aWs().show();
    }

    private void aXn() {
        if (this.aHE == null || !this.aHE.isShowing()) {
            this.aHE = new Builder(this.aHC).setTitle(R.string.user_agreement).setMessage(R.string.camera_permission).setPositiveButton(R.string.camera_permission_allow, new C0210n(this)).setNegativeButton(R.string.camera_permission_forbid, new C0212o(this)).setOnCancelListener(new C0213p(this)).show();
        }
    }
}
