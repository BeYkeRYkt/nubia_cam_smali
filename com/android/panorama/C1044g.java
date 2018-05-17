package com.android.panorama;

import com.p010a.C0090a;

public class C1044g extends Thread {
    private int aUB = 0;
    final /* synthetic */ C1039b aUC;

    public C1044g(C1039b c1039b) {
        this.aUC = c1039b;
    }

    public void run() {
        C0090a.bvo("MorphoPanoramaAdapter", "still in --> " + Thread.currentThread().getId());
        while (this.aUC.aTM) {
            C1041d c1041d;
            if (this.aUC.aUf.size() > 0) {
                int bub;
                c1041d = (C1041d) this.aUC.aUf.remove(0);
                C0090a.m0d("MorphoPanoramaAdapter", " run attachStillImageExt() start :" + c1041d.aUn);
                if (this.aUC.aUi) {
                    bub = this.aUC.aTP.bub(c1041d.aUo, c1041d.aUn, c1041d.aUp);
                } else {
                    bub = this.aUC.aTP.buc(c1041d.aUo, c1041d.aUn, c1041d.aUp);
                }
                this.aUB++;
                PanoramaJni.freeBuffer(c1041d.aUo);
                PanoramaJni.freeBuffer(c1041d.aUp);
                C1039b c1039b = this.aUC;
                c1039b.aTC = c1039b.aTC + 1;
                if (bub != 0) {
                    C0090a.m1e("MorphoPanoramaAdapter", "attachStillImageExt failed: " + bub);
                    this.aUC.aTJ.sendEmptyMessage(bub);
                    break;
                }
            }
            try {
                Thread.sleep(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        while (this.aUC.aTD > this.aUC.aTC) {
            if (this.aUC.aUf.size() > 0) {
                c1041d = (C1041d) this.aUC.aUf.remove(0);
                PanoramaJni.freeBuffer(c1041d.aUo);
                PanoramaJni.freeBuffer(c1041d.aUp);
                c1039b = this.aUC;
                c1039b.aTC = c1039b.aTC + 1;
            }
        }
        C0090a.bvo("MorphoPanoramaAdapter", "still exit --> " + Thread.currentThread().getId());
    }
}
