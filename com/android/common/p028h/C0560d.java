package com.android.common.p028h;

import android.content.ContentResolver;
import android.os.AsyncTask;
import android.os.Debug;
import com.p010a.C0090a;
import java.io.IOException;

class C0560d extends AsyncTask {
    private boolean Yo;
    final /* synthetic */ C0557a Yp;

    public C0560d(C0557a c0557a, boolean z) {
        this.Yp = c0557a;
        this.Yo = z;
    }

    protected /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        return afK((Void[]) objArr);
    }

    protected C0562f afK(Void... voidArr) {
        ContentResolver afG = this.Yp.afn();
        if (this.Yo) {
            try {
                C0562f afO = C0562f.afO(this.Yp.Yg, afG);
            } catch (OutOfMemoryError e) {
                try {
                    Debug.dumpHprofData("/sdcard/camera_" + System.currentTimeMillis() + ".hprof");
                } catch (IOException e2) {
                    C0090a.m1e("ThumbnailManager", "dumpHprofData fail " + e2.getMessage());
                }
                throw e;
            }
        }
        afO = null;
        if (isCancelled()) {
            return null;
        }
        if (afO == null) {
            this.Yp.Yk.block(500);
            C0562f[] c0562fArr = new C0562f[1];
            switch (C0562f.afP(afG, c0562fArr)) {
                case 0:
                    return null;
                case 1:
                    return c0562fArr[0];
                case 2:
                    cancel(true);
                    return null;
            }
        }
        return afO;
    }

    protected /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        afL((C0562f) obj);
    }

    protected void afL(C0562f c0562f) {
        if (!isCancelled()) {
            this.Yp.afx(c0562f);
        }
    }
}
