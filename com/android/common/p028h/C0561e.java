package com.android.common.p028h;

import android.os.AsyncTask;

class C0561e extends AsyncTask {
    final /* synthetic */ C0557a Yq;

    private C0561e(C0557a c0557a) {
        this.Yq = c0557a;
    }

    protected /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        return afM((C0562f[]) objArr);
    }

    protected Void afM(C0562f... c0562fArr) {
        for (C0562f afQ : c0562fArr) {
            afQ.afQ(this.Yq.Yg);
        }
        return null;
    }
}
