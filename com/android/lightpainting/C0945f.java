package com.android.lightpainting;

import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import com.p010a.C0090a;

public class C0945f implements PreviewCallback {
    final /* synthetic */ C0943d aZs;

    public C0945f(C0943d c0943d) {
        this.aZs = c0943d;
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
        if (this.aZs.aYt != null) {
            this.aZs.aYq = this.aZs.aZp;
            this.aZs.aZp = System.currentTimeMillis();
            if (this.aZs.aYq != 0) {
                this.aZs.aZq = this.aZs.aZp - this.aZs.aYq;
            } else {
                this.aZs.aZq = C0943d.aYk;
            }
            if (bArr == null) {
                C0090a.m1e("LightDrawFragment", "wq: preveiw data is null");
                this.aZs.adA.Tr().IK(this.aZs.aYs);
                return;
            }
            C0090a.m1e("LightDrawFragment", "preview data come");
            if (this.aZs.aYt != null) {
                this.aZs.aYt.putSlowShuttleData(-1, bArr);
            }
            if (this.aZs.aYZ.getVisibility() != 0) {
                this.aZs.aYZ.setImageBitmap(null);
                this.aZs.aYZ.setVisibility(0);
            }
            if (this.aZs.aYt != null) {
                int numStored = this.aZs.aYt.getNumStored();
                this.aZs.aYU.setText(this.aZs.aZd + numStored);
                if (this.aZs.aYV != numStored || this.aZs.aYV == 0) {
                    this.aZs.adA.Tr().IK(bArr);
                } else {
                    this.aZs.Sc();
                }
            }
        }
    }
}
