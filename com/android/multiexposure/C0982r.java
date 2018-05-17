package com.android.multiexposure;

import android.app.Activity;

class C0982r extends Thread {
    Activity amv;
    byte[] amw;
    int amx;
    final /* synthetic */ C0968o amy;

    C0982r(C0968o c0968o) {
        this.amy = c0968o;
        super("FinalDataThread");
    }

    void axO(byte[] bArr, int i) {
        this.amw = bArr;
        this.amx = i;
        this.amv = this.amy.ame.SN();
        this.amy.onPreExecute();
        start();
    }

    public void run() {
        int i = 0;
        C0968o c0968o = this.amy;
        Object[] objArr = new Object[3];
        objArr[0] = this.amw;
        if (this.amw != null) {
            i = this.amw.length;
        }
        objArr[1] = Integer.valueOf(i);
        objArr[2] = Integer.valueOf(this.amx);
        this.amv.runOnUiThread(new C0962D(this, c0968o.doInBackground(objArr)));
    }
}
