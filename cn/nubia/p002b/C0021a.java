package cn.nubia.p002b;

import android.content.Context;
import android.hardware.fingerprint.FingerprintManager;
import android.hardware.fingerprint.FingerprintManager.AuthenticationCallback;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Message;
import com.p010a.C0090a;

public class C0021a {
    private AuthenticationCallback bpS = new C0023c(this);
    private Context bpT = null;
    private CancellationSignal bpU = null;
    private FingerprintManager bpV = null;
    private Handler bpW = null;
    private Runnable bpX = new C0022b(this);

    public void bMe(Context context, Handler handler) {
        C0090a.bvo("Fingerprint", "open");
        this.bpT = context;
        this.bpW = handler;
        if (this.bpV == null) {
            this.bpV = (FingerprintManager) this.bpT.getSystemService("fingerprint");
        }
        if (this.bpV.isHardwareDetected()) {
            bMh();
        } else {
            bMf(108);
        }
    }

    private void bMh() {
        if (this.bpW == null) {
            C0090a.m1e("Fingerprint", "startFingerprint failed! mHandler is null.");
        } else {
            this.bpW.postDelayed(this.bpX, 200);
        }
    }

    private void bMi() {
        if (!(this.bpU == null || this.bpU.isCanceled())) {
            this.bpU.cancel();
        }
        this.bpU = null;
    }

    public void bMd(Context context) {
        if (this.bpW != null) {
            this.bpW.removeCallbacks(this.bpX);
        }
        bMi();
        this.bpW = null;
    }

    private void bMf(int i) {
        if (this.bpW == null) {
            C0090a.m1e("Fingerprint", "onProgress mHandler is null!");
        } else {
            this.bpW.sendEmptyMessage(i);
        }
    }

    private void bMg(Message message) {
        if (this.bpW == null) {
            C0090a.m1e("Fingerprint", "onProgress mHandler is null!");
        } else {
            this.bpW.sendMessage(message);
        }
    }
}
