package com.android.electronicfno;

import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import com.p010a.C0090a;

public class C0836g implements PreviewCallback {
    final /* synthetic */ C0833d aXL;

    public C0836g(C0833d c0833d) {
        this.aXL = c0833d;
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
        if (!(bArr == null || this.aXL.aXp.boo(bArr))) {
            C0090a.bvo("ElectronicFnoFragment", "data is enough, stop putting data to electronic");
            this.aXL.boa();
        }
    }
}
