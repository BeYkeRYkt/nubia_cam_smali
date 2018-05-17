package cn.nubia.p000a;

import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import cn.nubia.bigAperture.C0027c;
import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.android.common.cameradevice.C0086j;
import com.android.common.cameradevice.C0384o;
import com.android.common.custom.C0421M;
import com.p010a.C0090a;

public class C0014l implements PictureCallback {
    private C0006k bnI;
    private C0329e bnJ = null;
    private int bnK;

    public C0014l(int i, C0329e c0329e, C0006k c0006k) {
        this.bnJ = c0329e;
        this.bnK = i;
        this.bnI = c0006k;
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        String str = null;
        if (!this.bnJ.SO() && bArr != null) {
            C0090a.bvo("BigApertureRawPictureCallback", "Raw onPictureTaken mCameraId: " + this.bnK);
            this.bnJ.UM(this.bnK).tW();
            if (this.bnK == C0384o.Jr().Js()) {
                if (!(this.bnJ == null || !C0421M.dC().dD().cz() || this.bnJ.SS() == null)) {
                    str = this.bnJ.SS().getString("pref_picture_artist_info", this.bnJ.Tb(R.string.pref_picture_artist_info_default));
                }
                if ((this.bnJ.Tn().Gs() == 2 ? 1 : null) != null) {
                    this.bnI.bJt(bArr, bJU(this.bnK, "cur-dac"), bJV(), bJX(), bJY(), bJW(), str);
                } else {
                    this.bnI.bJt(bArr, bJU(this.bnK, "cur-dac"), bJV(), -1, -1, -1, str);
                }
            } else if (this.bnK == C0384o.Jr().Jx()) {
                C0086j Ud = this.bnJ.Ud(this.bnK);
                this.bnI.bJv(bArr, bJU(this.bnK, "cur-dac-aux"), C0027c.bKu(Ud.FX("altek-back-sub-crop-size")), Ud.Gr());
            }
        }
    }

    private int bJU(int i, String str) {
        String FX = this.bnJ.Ud(i).FX(str);
        if (FX != null) {
            return Integer.parseInt(FX);
        }
        return -1;
    }

    private int bJV() {
        return this.bnJ.Tn().FZ();
    }

    private int bJX() {
        return Integer.parseInt(this.bnJ.SS().getString("pref_camera_pretty_smooth_key", this.bnJ.Tb(R.string.pref_camera_pretty_smooth_default)));
    }

    private int bJY() {
        return Integer.parseInt(this.bnJ.SS().getString("pref_camera_pretty_toning_key", this.bnJ.Tb(R.string.pref_camera_pretty_toning_default)));
    }

    private int bJW() {
        return Integer.parseInt(this.bnJ.SS().getString("pref_camera_pretty_slimming_key", this.bnJ.Tb(R.string.pref_camera_pretty_slimming_default)));
    }
}
