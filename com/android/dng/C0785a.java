package com.android.dng;

import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.ShutterCallback;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureResult;
import android.util.Size;
import com.android.camera.R;
import com.android.common.appService.C0002Q;
import com.android.common.appService.C0329e;
import com.android.common.cameradevice.C0376b;
import com.android.common.cameradevice.C0382m;
import com.android.common.cameradevice.C0384o;
import com.android.common.p015f.C0526a;
import com.android.common.p015f.C0527b;
import com.android.common.p015f.C0531f;

public class C0785a implements C0002Q {
    private C0329e aLL = null;
    private boolean aLM = false;
    private PictureCallback aLN;
    private final PictureCallback aLO = new C0801q(this);
    private PictureCallback aLP;
    private CaptureResult aLQ;
    private CameraCharacteristics aLR;
    private final C0376b aLS = new C0800p(this);
    private Size aLT;
    private ShutterCallback aLU;

    public C0785a(C0329e c0329e) {
        this.aLL = c0329e;
        this.aLU = new C0527b(c0329e);
        this.aLP = new C0526a(c0329e);
        this.aLN = new C0531f(c0329e);
    }

    public boolean QK() {
        bcq().IM(this.aLS, this.aLO);
        bcq().IN(bcr());
        synchronized (bcq()) {
            bcq().IO(this.aLU, this.aLP, null, this.aLN);
        }
        return true;
    }

    private C0382m bcq() {
        return C0384o.Jr().Jw(this.aLL.SQ());
    }

    private boolean bcr() {
        return this.aLL.SS().getString("pref_camera_shutter_sound_key", this.aLL.Tb(R.string.pref_camera_shutter_sound_default)).equals("on");
    }
}
