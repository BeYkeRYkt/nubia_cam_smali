package com.loc;

import android.content.SharedPreferences.Editor;
import android.os.AsyncTask;

class aF extends AsyncTask {
    final /* synthetic */ Editor bfS;

    aF(Editor editor) {
        this.bfS = editor;
    }

    protected Void m167a(Void... voidArr) {
        try {
            if (this.bfS != null) {
                this.bfS.commit();
            }
        } catch (Throwable th) {
            bx.bBw(th, "SPUtil", "commit");
        }
        return null;
    }

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return m167a((Void[]) objArr);
    }
}
