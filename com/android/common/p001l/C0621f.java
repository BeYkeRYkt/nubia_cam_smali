package com.android.common.p001l;

import android.text.TextUtils;
import android.util.SparseArray;
import com.android.common.appService.C0329e;
import com.android.common.custom.C0421M;
import com.android.common.exif.C0523o;
import com.android.common.setting.ListPreference;
import com.android.common.storagemanager.C0718a;

public abstract class C0621f implements C0040e {
    protected boolean aaF = false;
    protected C0718a aaG = new C0718a();
    protected SparseArray aaH = null;

    public C0621f(C0329e c0329e, SparseArray sparseArray) {
        this.aaH = sparseArray;
        ahn(c0329e);
    }

    public void ahm(boolean z) {
        this.aaF = z;
    }

    public void ahn(C0329e c0329e) {
        if (!(!C0421M.dC().dD().cz() || c0329e == null || c0329e.SR() == null)) {
            ListPreference tp = c0329e.SR().tp("pref_picture_artist_info");
            if (!(tp == null || TextUtils.isEmpty(tp.tw()))) {
                if (this.aaH == null) {
                    this.aaH = new SparseArray();
                }
                this.aaH.put(C0523o.Cr, tp.tw());
            }
        }
    }
}
