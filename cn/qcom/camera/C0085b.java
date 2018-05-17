package cn.qcom.camera;

import android.hardware.Camera;
import android.hardware.Camera.CameraMetaDataCallback;
import com.android.common.cameradevice.C0321g;
import java.util.ArrayList;

public class C0085b implements CameraMetaDataCallback {
    private C0321g bti = null;
    private C0321g btj = null;
    private ArrayList btk = new ArrayList();

    public void bQd(C0321g c0321g) {
        this.bti = c0321g;
    }

    public void onCameraMetaData(byte[] bArr, Camera camera) {
        int i = 0;
        this.btj = this.bti;
        if (this.btj != null && bArr.length >= 8) {
            this.btk.add(Integer.valueOf(bQe(bArr, 0)));
            int bQe = bQe(bArr, 4);
            this.btk.add(Integer.valueOf(bQe));
            bQe /= 4;
            if (bQe != 0) {
                while (i < bQe) {
                    this.btk.add(Integer.valueOf(bQe(bArr, (i * 4) + 8)));
                    i++;
                }
            }
            this.btj.FV(this.btk);
            this.btk.clear();
        }
    }

    private int bQe(byte[] bArr, int i) {
        int i2 = 0;
        int i3 = 0;
        while (i2 < 4) {
            i3 += (bArr[(3 - i2) + i] & 255) << ((3 - i2) * 8);
            i2++;
        }
        return i3;
    }
}
