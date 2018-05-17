package com.android.p037f;

import android.hardware.Camera.Size;
import com.android.camera.R;
import com.android.common.appService.C0002Q;
import com.android.common.appService.C0329e;
import com.android.common.cameradevice.C0086j;
import com.android.common.cameradevice.C0382m;
import com.android.common.cameradevice.C0384o;
import com.android.common.p015f.C0527b;
import com.p010a.C0090a;

public class C0850e implements C0002Q {
    private C0329e baj;
    private int bak = C0384o.Jr().Js();
    private int bal = C0384o.Jr().Jx();
    private C0847b bam;

    public C0850e(C0329e c0329e, C0847b c0847b) {
        this.baj = c0329e;
        this.bam = c0847b;
    }

    public boolean QK() {
        if (this.bak == -1 || this.bal == -1) {
            C0090a.m1e("Photo3DCapture", "Camera id not found. ColorId: " + this.bak + ", MonoId: " + this.bal);
            return false;
        }
        C0090a.bvo("Photo3DCapture", "takePicture");
        brb(this.bak).IN(brd());
        brb(this.bal).IN(brd());
        Size Gr = brc(this.bak).Gr();
        Size Gr2 = brc(this.bal).Gr();
        int i = ((Gr.height * Gr.width) * 3) / 2;
        int i2 = ((Gr2.height * Gr2.width) * 3) / 2;
        C0384o.Jr().Jw(this.bak).IR(new byte[i]);
        C0384o.Jr().Jw(this.bal).IR(new byte[i2]);
        brb(this.bak).IO(new C0527b(this.baj), new C0856k(this.bak, this.baj, this.bam), null, new C0855j(this.bak, this.baj));
        brb(this.bal).IO(null, new C0856k(this.bal, this.baj, this.bam), null, new C0855j(this.bal, this.baj));
        C0090a.bvo("Photo3DCapture", "burstSnapNum: 2");
        this.baj.Ub(2);
        this.baj.Uc();
        return true;
    }

    private C0382m brb(int i) {
        return C0384o.Jr().Jw(i);
    }

    private C0086j brc(int i) {
        return this.baj.Ud(i);
    }

    private boolean brd() {
        return this.baj.SS().getString("pref_camera_shutter_sound_key", this.baj.Tb(R.string.pref_camera_shutter_sound_default)).equals("on");
    }
}
