package com.android.common.p030j;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import com.android.common.cameradevice.C0086j;
import com.p010a.C0090a;

class C0607a {
    public final int YO = 10485760;
    public final int YP = 1;
    public final String YQ;

    public C0607a(C0086j c0086j) {
        String str = null;
        int Gt = c0086j.Gt();
        switch (Gt) {
            case 17:
                C0090a.bvm("VideoParam", "mImageFormat = NV21");
                int codecCount = MediaCodecList.getCodecCount();
                for (int i = 0; i < codecCount; i++) {
                    MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
                    if (codecInfoAt.isEncoder()) {
                        String[] supportedTypes = codecInfoAt.getSupportedTypes();
                        int length = supportedTypes.length;
                        int i2 = 0;
                        while (i2 < length) {
                            String str2 = supportedTypes[i2];
                            if (!"video/avc".equals(str2)) {
                                str2 = str;
                            }
                            i2++;
                            str = str2;
                        }
                    }
                }
                if (str == null) {
                    throw new UnsupportedOperationException(String.format("Not support MIME: %s", new Object[]{"video/avc"}));
                }
                this.YQ = str;
                C0090a.bvm("VideoParam", "mMime = " + this.YQ);
                return;
            case 20:
                throw new UnsupportedOperationException("Not supported: ImageFormat=YUY2");
            case 842094169:
                throw new UnsupportedOperationException("Not supported: ImageFormat=YV12");
            default:
                throw new UnsupportedOperationException("Not supported: ImageFormat=???(" + Gt + ")");
        }
    }
}
