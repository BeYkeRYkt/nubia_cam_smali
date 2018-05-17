package cn.qcom.camera;

import android.hardware.Camera.Size;
import android.media.CamcorderProfile;
import android.media.EncoderCapabilities;
import android.media.EncoderCapabilities.VideoEncoderCap;
import com.android.common.cameradevice.C0081r;
import com.android.common.cameradevice.C0086j;
import java.util.ArrayList;
import java.util.List;

public class C0089d {
    public static ArrayList bQf(int[] iArr, int i, C0086j c0086j, String str, String str2) {
        List Iv = c0086j.Iv();
        if (!C0089d.bQg(str, Iv)) {
            return null;
        }
        Size size = (Size) c0086j.Iu().get(Iv.indexOf(str));
        int parseInt = Integer.parseInt(str);
        ArrayList arrayList = new ArrayList();
        for (int i2 : iArr) {
            if (CamcorderProfile.hasProfile(i, i2)) {
                CamcorderProfile camcorderProfile = CamcorderProfile.get(i, i2);
                if (camcorderProfile.videoFrameHeight <= size.height && camcorderProfile.videoFrameWidth <= size.width) {
                    if (C0089d.bQh((camcorderProfile.videoFrameWidth * camcorderProfile.videoFrameHeight) * parseInt, str2)) {
                        arrayList.add(String.valueOf(i2));
                    }
                }
            }
        }
        return arrayList;
    }

    private static boolean bQg(String str, List list) {
        return list != null && list.indexOf(str) >= 0;
    }

    private static boolean bQh(int i, String str) {
        int intValue = ((Integer) C0081r.HV.get(str)).intValue();
        for (VideoEncoderCap videoEncoderCap : EncoderCapabilities.getVideoEncoders()) {
            if (videoEncoderCap.mCodec == intValue) {
                int i2 = videoEncoderCap.mMaxFrameRate * (videoEncoderCap.mMaxFrameWidth * videoEncoderCap.mMaxFrameHeight);
                if (i <= 0 || i > i2) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }
}
