package cn.nubia.p002b;

import android.os.CancellationSignal;
import com.p010a.C0090a;

final class C0022b implements Runnable {
    final /* synthetic */ C0021a bpY;

    C0022b(C0021a c0021a) {
        this.bpY = c0021a;
    }

    public void run() {
        this.bpY.bpU = new CancellationSignal();
        try {
            this.bpY.bpV.authenticate(null, this.bpY.bpU, 0, this.bpY.bpS, null);
        } catch (Throwable e) {
            C0090a.bvi("Fingerprint", "authenticate failed!", e);
        }
    }
}
