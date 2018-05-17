package cn.qcom.camera;

import android.media.CamcorderProfile;
import android.util.SparseArray;
import com.android.common.cameradevice.C0081r;
import com.android.common.cameradevice.C0086j;
import com.android.common.cameradevice.CamcorderProfileEx$INDEX_QUALITY;
import com.android.common.cameradevice.CamcorderProfileEx$INDEX_SLOMO_QUALITY;
import java.util.ArrayList;

public class QCOMCamcorderProfileEx extends C0081r {
    private SparseArray btl = new SparseArray();

    protected void JO() {
        this.HW[CamcorderProfileEx$INDEX_QUALITY._4KUHD.ordinal()] = 8;
        this.HW[CamcorderProfileEx$INDEX_QUALITY._1080P.ordinal()] = 6;
        this.HW[CamcorderProfileEx$INDEX_QUALITY._720P.ordinal()] = 5;
        this.HW[CamcorderProfileEx$INDEX_QUALITY._VGA.ordinal()] = 10000;
        this.HW[CamcorderProfileEx$INDEX_QUALITY._LOW.ordinal()] = 0;
        this.HX[CamcorderProfileEx$INDEX_SLOMO_QUALITY._1080P_120FPS.ordinal()] = 6;
        this.HX[CamcorderProfileEx$INDEX_SLOMO_QUALITY._1080P_60FPS.ordinal()] = 6;
        this.HX[CamcorderProfileEx$INDEX_SLOMO_QUALITY._720P_120FPS.ordinal()] = 5;
        this.HX[CamcorderProfileEx$INDEX_SLOMO_QUALITY._720P_60FPS.ordinal()] = 5;
        this.HX[CamcorderProfileEx$INDEX_SLOMO_QUALITY._VGA_120FPS.ordinal()] = 10000;
    }

    public ArrayList JM(int i, C0086j c0086j, String str) {
        int parseInt = i + Integer.parseInt(str);
        ArrayList arrayList = (ArrayList) this.btl.get(parseInt);
        if (arrayList != null) {
            return arrayList;
        }
        arrayList = C0089d.bQf(this.HX, i, c0086j, str, "h264");
        this.btl.put(parseInt, arrayList);
        return arrayList;
    }

    public CamcorderProfile JP(int i, int i2) {
        return CamcorderProfile.get(i, i2);
    }
}
