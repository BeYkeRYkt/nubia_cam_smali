package com.android.common.ui;

import android.app.Dialog;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.android.common.appService.C0329e;
import com.android.common.appService.C0349y;
import com.android.common.setting.C0710j;
import com.android.common.setting.ListPreference;

public class C0737M {
    private C0329e sc = null;
    private Dialog sd = null;
    private C0349y se = null;

    public C0737M(C0329e c0329e, C0349y c0349y) {
        this.sc = c0329e;
        this.se = c0349y;
    }

    private String pH() {
        ListPreference pI = pI();
        if (pI != null) {
            return pI.tw();
        }
        return null;
    }

    private ListPreference pI() {
        if (this.sc == null || this.sc.SR() == null) {
            return null;
        }
        return this.sc.SR().tp("pref_picture_artist_info");
    }

    private void pL(String str) {
        C0710j pG = pG();
        ListPreference pI = pI();
        if (pG != null && !TextUtils.isEmpty(str) && !str.equals(pI.tw())) {
            Editor edit = pG.edit();
            edit.putString("pref_picture_artist_info", str);
            edit.commit();
            if (pI != null) {
                pI.ts();
            }
        }
    }

    private C0710j pG() {
        if (this.sc == null || this.sc.UP() == null || this.sc.SQ() == -1) {
            return null;
        }
        return this.sc.UP().uL(this.sc.SQ());
    }

    public void pO() {
        if (this.sc != null && this.sc.SN() != null) {
            this.sd = pN(pH());
            pM(this.sd);
        }
    }

    public void pK() {
        if (this.sd != null && this.sd.isShowing()) {
            this.sd.dismiss();
            pJ(this.sd.getWindow().getDecorView());
            this.sd = null;
        }
    }

    private Dialog pN(String str) {
        Dialog c0738n = new C0738N(this.sc.SN());
        c0738n.pU(new ba(this));
        c0738n.pT(new bb(this));
        c0738n.pV(str);
        c0738n.show();
        return c0738n;
    }

    private void pM(Dialog dialog) {
        if (dialog != null) {
            dialog.getWindow().setSoftInputMode(5);
            ((InputMethodManager) this.sc.SN().getSystemService("input_method")).toggleSoftInput(0, 2);
        }
    }

    private void pJ(View view) {
        if (this.sc != null && this.sc.SN() != null) {
            ((InputMethodManager) this.sc.SN().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 2);
        }
    }
}
