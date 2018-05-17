package com.android.common.p023b;

import android.hardware.Camera.Area;
import android.hardware.Camera.Face;
import com.android.common.custom.C0421M;
import java.util.ArrayList;
import java.util.List;

class C0360i {
    private final long Jk = 300;
    private long Jl = 0;
    final /* synthetic */ C0359h Jm;

    C0360i(C0359h c0359h) {
        this.Jm = c0359h;
    }

    private void KI(Face[] faceArr) {
        List list = null;
        if (C0421M.dC().dD().bC() && faceArr != null && faceArr.length > 0) {
            long currentTimeMillis = System.currentTimeMillis();
            if (0 >= currentTimeMillis - this.Jl || currentTimeMillis - this.Jl >= 300) {
                this.Jl = currentTimeMillis;
                if (this.Jm.KE(faceArr[0].rect)) {
                    list = new ArrayList();
                    list.add(new Area(faceArr[0].rect, 1));
                }
                this.Jm.KC().Hn(list);
                this.Jm.KB().IQ(this.Jm.KC());
            }
        }
    }
}
