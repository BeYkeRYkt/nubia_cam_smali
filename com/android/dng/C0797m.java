package com.android.dng;

import android.hardware.Camera.PictureCallback;
import android.os.Debug;
import com.android.camera.R;
import com.android.common.appService.C0002Q;
import com.android.common.appService.C0329e;
import com.android.common.cameradevice.C0382m;
import com.android.common.cameradevice.C0384o;
import com.android.common.p015f.C0527b;
import com.android.common.p015f.C0531f;
import com.p010a.C0090a;
import java.io.IOException;

public class C0797m implements C0002Q {
    private C0329e aNh;
    private C0531f aNi;
    private PictureCallback aNj;
    private C0527b aNk;

    public C0797m(C0329e c0329e) {
        this.aNj = new C0798n(c0329e);
        this.aNi = new C0531f(c0329e);
        this.aNk = new C0527b(c0329e);
        this.aNh = c0329e;
    }

    public boolean QK() {
        if (this.aNh == null || this.aNh.SY() == null) {
            return false;
        }
        try {
            this.aNh.SY().tW();
            String FX = this.aNh.Tn().FX("dng-data");
            if (FX != null && FX.length() > 2) {
                String[] split = FX.split(",");
                C0090a.bvo("QCOMDngShot", "data1,2 = " + split[1] + "," + split[2]);
                C0384o.Jr().Jw(this.aNh.SQ()).IR(new byte[(((Integer.parseInt(split[2]) * Integer.parseInt(split[1])) * 8) / 6)]);
            }
            bdI().IN(bdJ());
            synchronized (bdI()) {
                bdI().IO(this.aNk, this.aNj, null, this.aNi);
            }
            return true;
        } catch (OutOfMemoryError e) {
            try {
                Debug.dumpHprofData("/sdcard/camera_" + System.currentTimeMillis() + ".hprof");
            } catch (IOException e2) {
                C0090a.m1e("QCOMDngShot", "dump hprof fail " + e2.getMessage());
            }
            throw e;
        }
    }

    private C0382m bdI() {
        return C0384o.Jr().Jw(this.aNh.SQ());
    }

    private boolean bdJ() {
        return this.aNh.SS().getString("pref_camera_shutter_sound_key", this.aNh.Tb(R.string.pref_camera_shutter_sound_default)).equals("on");
    }
}
