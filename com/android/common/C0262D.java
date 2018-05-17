package com.android.common;

import android.content.res.Resources;

class C0262D extends Thread {
    static Resources akt;

    public C0262D(Resources resources) {
        akt = resources;
    }

    public void run() {
        C0261C.avO(akt);
    }
}
