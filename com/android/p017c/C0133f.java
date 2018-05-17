package com.android.p017c;

import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import com.android.common.C0299a;
import com.nubia.camera.common.Native.HistUtil;
import com.p010a.C0090a;

class C0133f implements PreviewCallback {
    final /* synthetic */ C0131d aWE;

    private C0133f(C0131d c0131d) {
        this.aWE = c0131d;
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
        if (bArr.length != ((this.aWE.aWu.width * this.aWE.aWu.height) * 3) / 2) {
            C0090a.m1e("MicrospurFragment", "preview data length is error:" + bArr.length + "real preview size:" + this.aWE.aWu.width + "x" + this.aWE.aWu.height);
            return;
        }
        this.aWE.blV();
        this.aWE.blW(bArr, this.aWE.aWu.width, this.aWE.aWu.height, this.aWE.aWi.m75X(), this.aWE.aWi.m76Y(), this.aWE.aWC, this.aWE.aWB);
        int[] iArr = new int[]{10, 20, 30};
        HistUtil.getMaxHis(C0299a.anX(this.aWE.aWA, this.aWE.aWC, this.aWE.aWB, 0), iArr, this.aWE.aWC, this.aWE.aWB);
        int i = (int) (((double) iArr[0]) * 0.8d);
        if (i <= iArr[1] || i <= iArr[2]) {
            this.aWE.aWg.aff(1);
            this.aWE.aWf.blP(1);
        } else {
            this.aWE.aWg.aff(2);
            this.aWE.aWf.blP(2);
        }
    }
}
