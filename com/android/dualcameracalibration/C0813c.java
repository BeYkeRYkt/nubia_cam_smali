package com.android.dualcameracalibration;

import android.content.SharedPreferences;
import android.os.Environment;
import com.android.common.C0616j;
import com.android.common.appService.C0002Q;
import com.android.common.appService.C0329e;
import com.android.common.cameradevice.C0382m;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.DeviceState;
import com.android.common.p015f.C0527b;
import com.p010a.C0090a;
import java.io.File;
import java.io.FileOutputStream;

public class C0813c implements C0002Q {
    private C0329e avV = null;
    private int avW = C0384o.Jr().Js();
    private DualCameraCalibrationFragment avX = null;
    private int avY = C0384o.Jr().Jx();
    private SharedPreferences avZ = null;
    private int awa = 0;

    public C0813c(C0329e c0329e, DualCameraCalibrationFragment dualCameraCalibrationFragment) {
        this.avV = c0329e;
        this.avX = dualCameraCalibrationFragment;
        this.avZ = this.avV.SS();
        if (this.avV.SM().getIntent().getBooleanExtra("dualcalibrationautotest", false)) {
            C0090a.m0d("DualCameraCalibrationCapture", "is auto(capture)");
            this.awa = 1;
        }
    }

    private C0382m aJL(int i) {
        return C0384o.Jr().Jw(i);
    }

    public boolean QK() {
        C0090a.m1e("DualCameraCalibrationCapture", "mSnapNum=" + this.awa);
        if (this.awa > 4) {
            return false;
        }
        if (this.awa == 0) {
            this.avV.Ud(this.avY).Hz(C0616j.aoQ(this.avY, this.avV.Tp()));
            this.avV.UM(this.avW).tE(-1);
            this.avV.UM(this.avY).tE(-1);
        }
        try {
            Thread.sleep(500);
        } catch (Exception e) {
        }
        C0090a.m1e("BaseParametersSetter", "manual-focus-position==" + this.avV.Ud(this.avW).Gp().get("manual-focus-position"));
        C0090a.m1e("BaseParametersSetter", "manual-focus-position==" + this.avV.Ud(this.avY).Gp().get("manual-focus-position"));
        C0090a.m1e("DualCameraCalibrationCapture", "take picture");
        aJL(this.avY).IO(null, null, null, new C0815e());
        aJL(this.avW).IO(new C0527b(this.avV), null, null, new C0814d());
        this.avV.SX().Kd(DeviceState.SNAPSHOT_IN_PROGRESS);
        this.avV.Ub(2);
        this.avV.Uc();
        return true;
    }

    private void aJM(byte[] bArr, String str) {
        C0090a.m1e("DualCameraCalibrationCapture", "saveJpeg=" + str);
        FileOutputStream fileOutputStream = new FileOutputStream(new File(Environment.getExternalStorageDirectory() + "/3DTest", str));
        fileOutputStream.write(bArr);
        fileOutputStream.close();
    }
}
