package com.android.common.ui;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.android.common.appService.C0329e;
import com.android.common.cameradevice.C0378d;
import com.android.common.camerastate.C0404b;
import com.android.common.camerastate.FunctionState;
import com.android.common.p012e.C0458b;
import com.android.common.p012e.C0467m;
import java.util.List;

public class aa extends RotateImageView implements OnClickListener {
    private C0329e uf = null;
    private List ug = null;
    private C0404b uh = null;
    private String ui = null;
    private ab uj;

    public aa(Context context) {
        super(context);
    }

    public void rA(ab abVar) {
        this.uj = abVar;
    }

    public void rz(List list, int i, C0329e c0329e, String str) {
        this.ug = list;
        this.ui = str;
        this.uf = c0329e;
        this.uh = c0329e.SX();
        setImageResource(i);
        setOnClickListener(this);
        setVisibility(0);
    }

    public void rC(int i) {
        this.uf.UP().uM(i);
    }

    public void onClick(View view) {
        if (this.uh.JX(FunctionState.SWITCHING_CAMERA)) {
            C0458b.adi().adj(C0467m.ady(this));
        }
    }

    private int rB(int i) {
        if (this.ug == null || this.ug.size() == 0) {
            return -1;
        }
        for (int i2 = 0; i2 < this.ug.size(); i2++) {
            if (((C0378d) this.ug.get(i2)).FA(i)) {
                return i2;
            }
        }
        return -1;
    }

    public void ry() {
        if (this.uj != null && this.uf != null) {
            this.uj.rD((C0378d) this.ug.get((rB(this.uf.SQ()) + 1) % this.ug.size()));
        }
    }
}
