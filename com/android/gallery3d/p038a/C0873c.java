package com.android.gallery3d.p038a;

import android.content.Context;
import android.os.AsyncTask;
import com.p010a.C0090a;

class C0873c extends AsyncTask {
    Context apk;
    final /* synthetic */ C0871a apl;

    C0873c(C0871a c0871a, Context context) {
        this.apl = c0871a;
        this.apk = context;
    }

    protected /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        return aAU((C0875o[]) objArr);
    }

    protected Void aAU(C0875o... c0875oArr) {
        for (int i = 0; i < c0875oArr.length; i++) {
            if (c0875oArr[i].aBm(2)) {
                c0875oArr[i].aBe(this.apk);
            } else {
                C0090a.bvo("CameraDataAdapter", "Deletion is not supported:" + c0875oArr[i]);
            }
        }
        return null;
    }
}
