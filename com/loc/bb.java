package com.loc;

import android.text.TextUtils;
import com.autonavi.aps.amapapi.model.AmapLoc;

public class bb {
    private AmapLoc bgD = null;
    final /* synthetic */ bj bgE;
    private String f304c = null;

    protected bb(bj bjVar) {
        this.bgE = bjVar;
    }

    public AmapLoc m397a() {
        return this.bgD;
    }

    public void m398a(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f304c = null;
        } else {
            this.f304c = str.replace("##", "#");
        }
    }

    public String m399b() {
        return this.f304c;
    }

    public void bAA(AmapLoc amapLoc) {
        this.bgD = amapLoc;
    }
}
