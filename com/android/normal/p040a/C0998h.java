package com.android.normal.p040a;

import android.content.Intent;
import android.net.Uri;
import android.os.SystemClock;
import cn.nubia.p005e.C0049a;
import cn.nubia.videogenerator.p006a.C0055c;
import cn.nubia.videogenerator.p006a.C0061f;
import cn.nubia.videogenerator.p007b.C0060d;
import cn.nubia.videogenerator.p007b.C0068f;
import cn.nubia.videogenerator.p009d.C0078a;
import com.p010a.C0090a;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

class C0998h {
    private C0055c aBA;
    private C0061f aBB;
    private C0068f aBC;
    private C0060d aBD;
    private long aBE;
    private ArrayList aBF;
    private boolean aBG;
    private C0055c aBH;
    private C0061f aBI;
    private C0068f aBJ;
    private C0078a aBK;
    final /* synthetic */ C0991a aBL;

    private C0998h(C0991a c0991a) {
        this.aBL = c0991a;
        this.aBG = false;
        this.aBF = new ArrayList(2);
        this.aBD = new C1000j(this);
    }

    public void aRv() {
        this.aBL.aBm.set(true);
        this.aBG = false;
        this.aBE = SystemClock.elapsedRealtimeNanos() / 1000000;
        C0090a.bvo(C0991a.TAG, "exporting" + this.aBE);
        if (this.aBL.aBk != null) {
            this.aBL.aBk.aRi();
        }
        try {
            this.aBK = new C0078a(this.aBL.aBs, 0);
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (this.aBK != null) {
            this.aBK.bPh(2);
            this.aBK.setOrientation(this.aBL.aBr);
            this.aBK.bPq(new C1001k(this));
        }
        this.aBC = new C0068f(this.aBL.aBe.bMS());
        this.aBC.bOj(this.aBL.aBg.aRn());
        this.aBJ = new C0068f(this.aBL.aBu.bNg());
        this.aBJ.bOj(this.aBL.aBg.aRo());
        try {
            this.aBH = new C0055c(this.aBL.aBu);
            this.aBH.bNv(this.aBD);
            this.aBA = new C0055c(this.aBL.aBe);
            this.aBA.bNv(this.aBD);
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        this.aBB = new C0061f();
        this.aBB.bOd(this.aBA);
        this.aBB.bOe(this.aBC);
        this.aBI = new C0061f();
        this.aBI.bOd(this.aBH);
        this.aBI.bOe(this.aBJ);
        aRy();
        aRz();
    }

    private void aRy() {
        this.aBC.bOl((this.aBE - ((long) (this.aBL.aBj / 2))) * 1000, (this.aBE + ((long) (this.aBL.aBj / 2))) * 1000);
        this.aBC.bOm(2);
        this.aBC.bOk(new C1002l(this));
        this.aBC.start();
    }

    private void aRz() {
        this.aBJ.bOl((this.aBE - ((long) (this.aBL.aBj / 2))) * 1000, (this.aBE + ((long) (this.aBL.aBj / 2))) * 1000);
        this.aBJ.bOm(1);
        this.aBJ.bOk(new C1003m(this));
        this.aBJ.start();
    }

    private void aRx() {
        if (this.aBL.aBt == null || this.aBL.aBs == null) {
            C0090a.m1e(C0991a.TAG, "mkERROR:" + this.aBL.aBt + "/" + this.aBL.aBs);
        } else if (aRw(this.aBL.aBs)) {
            int bPX = C0049a.bPX(this.aBL.aBt, this.aBL.aBs);
            aRu(this.aBL.aBs);
            if (bPX != 0) {
                C0090a.m1e(C0991a.TAG, "CVP ERROR: " + bPX);
                aRu(this.aBL.aBt);
            } else {
                this.aBG = true;
                this.aBL.aBi.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse("file://" + this.aBL.aBt)));
            }
        } else {
            C0090a.m1e(C0991a.TAG, "v is not vaild");
            aRu(this.aBL.aBt);
        }
    }

    private void aRu(String str) {
        if (str != null) {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
                this.aBL.aBi.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse("file://" + str)));
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean aRw(java.lang.String r6) {
        /*
        r5 = this;
        r0 = 0;
        r1 = 1;
        if (r6 != 0) goto L_0x0005;
    L_0x0004:
        return r0;
    L_0x0005:
        r2 = new android.media.MediaExtractor;
        r2.<init>();
        r2.setDataSource(r6);	 Catch:{ Exception -> 0x0018, all -> 0x001d }
        r3 = r2.getTrackCount();	 Catch:{ Exception -> 0x0018, all -> 0x001d }
        r4 = 2;
        if (r3 >= r4) goto L_0x0022;
    L_0x0014:
        r2.release();
    L_0x0017:
        return r0;
    L_0x0018:
        r1 = move-exception;
        r2.release();
        goto L_0x0017;
    L_0x001d:
        r0 = move-exception;
        r2.release();
        throw r0;
    L_0x0022:
        r0 = r1;
        goto L_0x0014;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.normal.a.h.aRw(java.lang.String):boolean");
    }

    public void cancel() {
        C0090a.bvo(C0991a.TAG, "cancel");
        release();
        if (this.aBL.aBn != null) {
            this.aBL.aBn.aRk();
            C0090a.bvo(C0991a.TAG, "onLpCanceled");
        }
    }

    private void release() {
        if (this.aBJ != null) {
            this.aBJ.stop();
            this.aBJ = null;
        }
        if (this.aBC != null) {
            this.aBC.stop();
            this.aBC = null;
        }
        if (this.aBH != null) {
            this.aBH.release();
            this.aBH = null;
        }
        if (this.aBA != null) {
            this.aBA.release();
            this.aBA = null;
        }
        if (this.aBK != null) {
            this.aBK.stop();
            this.aBK = null;
        }
        if (this.aBL.aBm.get()) {
            this.aBL.aBm.set(false);
        }
        if (!this.aBG) {
            aRu(this.aBL.aBt);
            C0090a.bvo(C0991a.TAG, "delete s p");
        }
    }
}
