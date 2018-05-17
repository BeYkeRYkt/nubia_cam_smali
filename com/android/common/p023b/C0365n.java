package com.android.common.p023b;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.android.common.p012e.C0458b;
import com.android.common.p012e.C0467m;
import com.p010a.C0090a;

public class C0365n implements OnClickListener {
    private static String Jy = "com.android.camera.specification";
    private int JA = -1;
    private Context Jz = null;

    public C0365n(Context context, int i) {
        this.Jz = context;
        this.JA = i;
    }

    public void onClick(View view) {
        C0090a.bvo("SpecificationListener", "onClick");
        C0458b.adi().adj(C0467m.adA(this));
    }

    public void Lc() {
        if (this.Jz == null) {
            C0090a.m1e("SpecificationListener", "mContext is null.");
        } else if (this.JA == -1) {
            C0090a.m1e("SpecificationListener", "mTypeValue is -1.");
        } else {
            Intent intent = new Intent();
            intent.putExtra("Specification", this.JA);
            intent.setAction(Jy);
            this.Jz.startActivity(intent);
        }
    }
}
