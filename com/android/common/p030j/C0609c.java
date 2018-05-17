package com.android.common.p030j;

import android.graphics.Matrix;
import android.os.Message;
import com.android.common.p016a.C0291h;
import com.p010a.C0090a;
import java.nio.ByteBuffer;

class C0609c implements C0291h {
    final /* synthetic */ C0608b Zf;

    private C0609c(C0608b c0608b) {
        this.Zf = c0608b;
    }

    public void aM(ByteBuffer byteBuffer, int i, int i2, Matrix matrix) {
        C0090a.bvm("llw", "tackPicture onPreviewDataCopy");
        if (this.Zf.YW == null) {
            C0090a.m1e("VideoMakerRender", "mDrawHandler is " + this.Zf.YW + " ignore this onPreviewDataCopy");
            return;
        }
        Message obtainMessage = this.Zf.YW.obtainMessage(1);
        this.Zf.Ze = i;
        this.Zf.YY = i2;
        obtainMessage.obj = byteBuffer;
        this.Zf.YW.sendMessage(obtainMessage);
    }
}
