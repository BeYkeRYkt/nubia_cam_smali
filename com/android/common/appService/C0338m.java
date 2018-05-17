package com.android.common.appService;

import android.content.Context;
import android.view.OrientationEventListener;
import com.android.common.C0616j;

class C0338m extends OrientationEventListener {
    final /* synthetic */ C0335j QO;

    public C0338m(C0335j c0335j, Context context) {
        this.QO = c0335j;
        super(context);
    }

    public void onOrientationChanged(int i) {
        this.QO.QN = i;
        this.QO.Yo(i);
        if (i != -1) {
            this.QO.QK = C0616j.aqe(i, this.QO.QK);
            this.QO.Yq();
        }
    }
}
