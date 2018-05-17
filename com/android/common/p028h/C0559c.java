package com.android.common.p028h;

import android.os.AsyncTask;
import com.android.common.p025c.C0370e;

class C0559c extends AsyncTask {
    final /* synthetic */ C0557a Yn;

    private C0559c(C0557a c0557a) {
        this.Yn = c0557a;
    }

    protected /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        return afI((C0370e[]) objArr);
    }

    protected C0562f afI(C0370e... c0370eArr) {
        return c0370eArr[c0370eArr.length - 1].Ld();
    }

    protected /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        afJ((C0562f) obj);
    }

    protected void afJ(C0562f c0562f) {
        this.Yn.afx(c0562f);
        synchronized (this.Yn.Ye) {
            if (this.Yn.Ym == null) {
                this.Yn.Ye = Boolean.valueOf(false);
            } else {
                new C0559c(this.Yn).execute(new C0370e[]{this.Yn.Ym});
                this.Yn.Ym = null;
            }
        }
    }
}
