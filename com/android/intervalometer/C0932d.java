package com.android.intervalometer;

import com.android.delaygenerator.C0775a;
import com.p010a.C0090a;

public class C0932d implements C0775a {
    final /* synthetic */ C0930b aOs;

    public C0932d(C0930b c0930b) {
        this.aOs = c0930b;
    }

    public void aFW(int i) {
        switch (i) {
            case 1:
                C0090a.bvm("PreviewDataRender", "encode complete");
                this.aOs.aOj.beF(this.aOs.aOh);
                return;
            case 2:
                C0090a.bvm("PreviewDataRender", "delete half");
                if (this.aOs.aOj != null) {
                    this.aOs.aOj.beD();
                    return;
                }
                return;
            case 3:
                if (this.aOs.aOj != null) {
                    this.aOs.aOj.beG();
                    return;
                }
                return;
            case 4:
                if (this.aOs.aOj != null) {
                    this.aOs.aOj.beE();
                    return;
                }
                return;
            default:
                C0090a.m1e("PreviewDataRender", "UNKNOWN MESSAGE");
                return;
        }
    }
}
