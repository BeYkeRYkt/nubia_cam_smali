package com.android.p011a;

import android.view.View;
import android.view.View.OnClickListener;
import com.android.clone.C0244f;
import com.android.common.p012e.C0458b;
import com.p010a.C0090a;

public class C0099a implements OnClickListener {
    private C0244f aAY = null;
    private View aAZ = null;

    public C0099a(C0244f c0244f) {
        this.aAY = c0244f;
    }

    public void onClick(View view) {
        C0090a.bvo("CloneEditClickListener", "onClick");
        this.aAZ = view;
        C0458b.adi().adj(new C0104d(this));
    }

    public void aQB() {
        if (this.aAY == null) {
            C0090a.m1e("CloneEditClickListener", "mContext is null.");
        } else {
            this.aAY.ayk(this.aAZ);
        }
    }
}
