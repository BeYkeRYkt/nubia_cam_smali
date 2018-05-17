package com.android.common;

import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.camerastate.C0404b;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.p012e.C0458b;
import com.p010a.C0090a;
import java.util.ArrayList;

public class C0636m implements C0456d {
    private static String ahO = null;
    private static long ahZ = 0;
    private C0329e ahK = null;
    private C0404b ahL = null;
    private C0695p ahM = new C0695p();
    private long ahN = 0;
    private boolean ahP = false;
    private boolean ahQ = false;
    private ArrayList ahR;
    private C0668n ahS;
    private boolean ahT = false;
    private C0260B ahU = null;
    private C0375c ahV = new C0375c(this.ahN, this);
    private int ahW = 0;
    private long ahX = 0;
    private long ahY = 0;

    public C0636m(C0329e c0329e) {
        this.ahK = c0329e;
        this.ahL = this.ahK.SX();
        this.ahR = new ArrayList();
    }

    public void aqB(boolean z) {
        this.ahT = z;
    }

    public void aqt(boolean z) {
        this.ahQ = z;
    }

    public void aqr(long j) {
        this.ahN = j;
        this.ahV.aom(j);
    }

    public long aqx() {
        return this.ahN;
    }

    public void aqs(C0668n c0668n) {
        this.ahS = c0668n;
    }

    public void aqv(C0116o c0116o) {
        if (!this.ahR.contains(c0116o)) {
            this.ahR.add(c0116o);
        }
    }

    public void aqp(C0116o c0116o) {
        this.ahR.remove(c0116o);
    }

    public int aqy() {
        return this.ahW;
    }

    public static String aqq() {
        return ahO;
    }

    public void start() {
        if (!this.ahP && this.ahL.JX(FunctionState.INTERVAL) && C0458b.adi().adm()) {
            this.ahK.Wg(true, 1);
            this.ahP = true;
            this.ahL.JY(FunctionState.INTERVAL);
            ahZ = System.currentTimeMillis();
            ahO = aqw(ahZ);
            this.ahM.sendEmptyMessage(0);
            if (this.ahQ) {
                aqA();
            } else {
                run();
            }
            for (C0116o c0116o : this.ahR) {
                if (c0116o != null) {
                    c0116o.ahE();
                }
            }
            this.ahK.Wb(2);
            return;
        }
        C0090a.bvo("Intervalometer", "mIsOn: " + this.ahP + "; command canAdd: " + C0458b.adi().adm());
    }

    private void aqA() {
        this.ahV.aom(500);
        this.ahV.start();
    }

    public void stop() {
        if (this.ahP) {
            if (this.ahQ) {
                this.ahV.aok();
            }
            this.ahK.Wb(3);
            this.ahP = false;
            this.ahL.JW(FunctionState.INTERVAL);
            release();
            this.ahM.removeMessages(0);
            this.ahM.removeMessages(1);
            this.ahM.removeMessages(2);
            if (this.ahS != null) {
                this.ahS.akA();
            }
            for (C0116o c0116o : this.ahR) {
                if (c0116o != null) {
                    c0116o.ahF();
                }
            }
            this.ahK.Wg(false, 1);
            return;
        }
        C0090a.bvo("Intervalometer", "Interval On： " + this.ahP + "; can't stop.");
    }

    private String aqw(long j) {
        String str = C0701s.aqX() + "/" + this.ahK.SN().getString(R.string.contents_multiShoot) + '/' + C0616j.aoO(j);
        if (this.ahK.SP() == CameraMember.INTERVALOMETER) {
            return C0701s.ara(CameraMember.INTERVALOMETER.aan());
        }
        return str;
    }

    private void release() {
        ahZ = 0;
        this.ahY = 0;
        this.ahW = 0;
        this.ahX = 0;
    }

    private long aqz() {
        if (this.ahN - this.ahY < 0) {
            return 0;
        }
        return this.ahN - this.ahY;
    }

    private void run() {
        if (!this.ahP) {
            return;
        }
        if (this.ahN != 0) {
            this.ahM.sendEmptyMessageDelayed(1, 1000);
            this.ahY += 1000;
            if (this.ahW == 0) {
                this.ahY = this.ahN;
            }
            if (this.ahN != 0 && this.ahY == this.ahN) {
                this.ahW++;
                this.ahM.sendEmptyMessageDelayed(2, 1000);
            }
        } else if (aqu()) {
            this.ahW++;
            if (this.ahT) {
                this.ahM.sendEmptyMessage(2);
            } else {
                this.ahM.sendEmptyMessageDelayed(2, 500);
            }
        }
    }

    private boolean aqu() {
        boolean z = false;
        if (this.ahK == null || !C0458b.adi().adm() || this.ahK.Tc().Mx()) {
            return false;
        }
        if (this.ahL.JV() != DeviceState.SNAPSHOT_IN_PROGRESS) {
            z = true;
        }
        return z;
    }

    public void onTick(long j) {
        this.ahS.akC(-1, j, -1);
    }

    public void ls() {
        if (this.ahP) {
            if (this.ahS != null) {
                this.ahS.onFinish();
            }
            return;
        }
        C0090a.bvo("Intervalometer", "when interval is not on, not call interval finish");
    }
}
