package cn.nubia.p000a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder.DeathRecipient;
import android.os.RemoteException;
import cn.nubia.bigAperture.BigApertureProcess;
import com.android.common.C0616j;
import com.android.common.appService.C0000c;
import com.android.common.appService.C0002Q;
import com.android.common.appService.C0329e;
import com.android.common.appService.IDualCameraControl$DualCameraMode;
import com.android.common.custom.C0421M;
import java.util.ArrayList;
import java.util.NoSuchElementException;

public class C0001a implements C0000c {
    private boolean bmn = true;
    private C0329e bmo = null;
    private BigApertureProcess bmp = null;
    private Object bmq = new Object();
    private ServiceConnection bmr = null;
    private boolean bms = true;
    private DeathRecipient bmt = new C0017o(this);
    private C0003b bmu = null;
    private C0015m bmv;
    private Handler bmw = new C0016n(this);

    public C0001a(C0329e c0329e) {
        this.bmo = c0329e;
        this.bmu = new C0003b(this.bmo);
        this.bmv = new C0015m(this.bmo);
    }

    public void SE(boolean z) {
        if (z) {
            this.bmo.SM().ary().acK(0);
            this.bmv.bJZ();
            return;
        }
        Su(true);
        this.bmv.bKa();
    }

    public void SH(boolean z) {
        if (z) {
            this.bmv.bKb();
        } else {
            this.bmv.bKc();
        }
    }

    public void Su(boolean z) {
        this.bmn = z;
    }

    public boolean SB() {
        return this.bmn;
    }

    public IDualCameraControl$DualCameraMode Sz() {
        return this.bmv.bKd();
    }

    public void SD() {
        this.bmu.bIP();
    }

    public void SG() {
        this.bmw.removeCallbacksAndMessages(null);
        this.bms = true;
    }

    public void SF() {
        this.bmv.bKe();
    }

    public C0002Q SA() {
        return this.bmu;
    }

    public void Sv() {
        if (bIG(this.bmo.SN()) != null) {
            bIF();
        }
    }

    public void Sx() {
        bIH();
    }

    public void SI(ArrayList arrayList) {
        if (this.bmu != null) {
            this.bmu.bIQ(arrayList);
        }
        this.bmv.bKf(arrayList);
    }

    private ComponentName bIG(Context context) {
        if (!C0421M.dC().dD().bF()) {
            return null;
        }
        Intent intent = new Intent("nubia.camera.bigApertureService");
        intent.setPackage("com.android.camera");
        intent.putExtra("stop-after-task-done", false);
        return context.startService(intent);
    }

    private void bIF() {
        String str = "nubia.camera.bigApertureService";
        Intent intent = new Intent("nubia.camera.bigApertureService");
        intent.setPackage("com.android.camera");
        intent.putExtra("isFromCamera", true);
        this.bmr = new C0018p(this);
        this.bmo.SN().bindService(intent, this.bmr, 1);
    }

    private void bIH() {
        synchronized (this.bmq) {
            if (this.bmr != null) {
                if (this.bmp != null) {
                    try {
                        this.bmp.setServiceStoppedAfterTasksDone(true);
                        this.bmp.asBinder().unlinkToDeath(this.bmt, 0);
                        this.bmp = null;
                    } catch (RemoteException e) {
                        e.printStackTrace();
                        this.bmp = null;
                    } catch (NoSuchElementException e2) {
                        e2.printStackTrace();
                        this.bmp = null;
                    } catch (Throwable th) {
                        this.bmp = null;
                    }
                }
                this.bmo.SN().unbindService(this.bmr);
            }
        }
    }

    public void Sw() {
        this.bms = false;
    }

    public void Sy() {
        this.bmw.removeMessages(1);
        if ("on".equals(this.bmo.SS().getString("pref_big_aperature_key", "off")) || C0616j.aoM(this.bmo.SP(), this.bmo.ST())) {
            this.bms = false;
            this.bmw.sendEmptyMessageDelayed(1, 500);
            return;
        }
        this.bms = true;
    }

    public boolean SC() {
        return this.bms;
    }
}
