package cn.qcom.camera;

import com.android.common.C0616j;
import com.android.common.cameradevice.C0087i;
import com.p010a.C0090a;
import java.util.List;

public class C0088c extends C0087i {
    private final List btm = new QCOMParametersEx$1(this);
    private String btn = "normal";

    public List HQ() {
        return this.Hm.getSupportedIsoValues();
    }

    public void Ib(String str) {
        try {
            this.Hm.setISOValue(str);
        } catch (Exception e) {
            C0090a.bvo("QcomParametersEx", "not support ISO");
        }
    }

    public String HH() {
        try {
            return this.Hm.getISOValue();
        } catch (Exception e) {
            C0090a.bvo("QcomParametersEx", "not support ISO");
            return null;
        }
    }

    public List HR() {
        return this.Hm.getSupportedDenoiseModes();
    }

    public void Ic(String str) {
        this.Hm.setDenoise(str);
    }

    public List HS() {
        try {
            return this.Hm.getSupportedFaceDetectionModes();
        } catch (Exception e) {
            C0090a.bvo("QcomParametersEx", "not support ISO");
            return null;
        }
    }

    public void HT(String str) {
        this.Hm.setFaceDetectionMode(str);
    }

    public void HY(int i) {
        int maxSharpness = (this.Hm.getMaxSharpness() / 6) * i;
        if (maxSharpness >= 0) {
            try {
                if (maxSharpness <= this.Hm.getMaxSharpness()) {
                    this.Hm.setSharpness(maxSharpness);
                }
            } catch (Exception e) {
                C0090a.bvo("QcomParametersEx", "not support Sharpness");
            }
        }
    }

    public void HZ(int i) {
        if (i >= 0) {
            try {
                if (i <= this.Hm.getMaxContrast()) {
                    this.Hm.setContrast(i);
                }
            } catch (Exception e) {
                C0090a.bvo("QcomParametersEx", "not supported Contrast");
            }
        }
    }

    public void Ia(int i) {
        if (i >= 0) {
            try {
                if (i <= this.Hm.getMaxSaturation()) {
                    this.Hm.setSaturation(i);
                }
            } catch (Exception e) {
                C0090a.bvo("QcomParametersEx", "not supported Saturation");
            }
        }
    }

    public List HW() {
        return this.Hm.getSupportedAutoexposure();
    }

    public void HX(String str) {
        try {
            this.Hm.setAutoExposure(str);
        } catch (Exception e) {
            C0090a.bvo("QcomParametersEx", "not support AutoExposure");
        }
    }

    public void HJ(String str) {
        this.Hm.setZSLMode(str);
    }

    public String HK() {
        return this.Hm.getZSLMode();
    }

    public void HU(int i) {
        if (i == 2) {
            i = 0;
        }
        this.Hm.setCameraMode(i);
    }

    public void HN(int i) {
        Gp().setFocusPosition(1, i);
    }

    public void HI(String str, int i) {
        String str2;
        if (!"on".equals(str)) {
            str2 = "off";
        } else if (i % 180 == 0) {
            str2 = "flip-h";
        } else {
            str2 = "flip-v";
        }
        this.Hm.set("snapshot-picture-flip", str2);
    }

    public void Il(String str) {
        this.Hm.set("preview-flip", str);
    }

    public void HP(String str, int i) {
        String str2;
        if (!"on".equals(str)) {
            str2 = "off";
        } else if (i % 180 != 0) {
            str2 = "flip-h";
        } else {
            str2 = "flip-v";
        }
        this.Hm.set("video-flip", str2);
    }

    public List Iv() {
        return this.Hm.getSupportedVideoHighFrameRateModes();
    }

    public void Io(String str) {
        this.Hm.setVideoHighFrameRate(str);
    }

    public List Iu() {
        return this.Hm.getSupportedHfrSizes();
    }

    public String HO() {
        return this.Hm.get("video-hsr");
    }

    public void Ip(String str) {
        this.Hm.set("video-hsr", str);
    }

    public void Iq(int i, int i2) {
        this.Hm.set("video-size", Integer.toString(i) + "x" + Integer.toString(i2));
    }

    public void Ik(List list) {
        if (list == null) {
            Gp().set("mwb_area", C0616j.apq(null));
            Gp().set("mwb_switch", 0);
            return;
        }
        Gp().set("mwb_area", C0616j.apq(list));
        Gp().set("mwb_switch", 1);
    }

    public List Ih() {
        return C0616j.aql(this.Hm.get("ae-bracket-hdr-values"), ",");
    }

    public String Ii() {
        return this.Hm.get("ae-bracket-hdr");
    }

    public void Ij(String str) {
        this.Hm.set("ae-bracket-hdr", str);
    }

    public void In(int i) {
        this.Hm.set("raw_data_mode_key", i);
    }

    public int Im() {
        return getInt("raw_data_mode_key", 0);
    }

    public void HV(String str) {
        this.btn = str;
    }

    public void Hm(int i) {
        this.Hm.set("manual-wb-type", 0);
        this.Hm.set("wb-manual-cct", i);
    }

    public List Id() {
        List list = null;
        try {
            return this.Hm.getSupportedRedeyeReductionModes();
        } catch (Exception e) {
            return list;
        } catch (Throwable th) {
            return list;
        }
    }

    public void Ie(String str) {
        try {
            this.Hm.setRedeyeReductionMode(str);
        } catch (Exception e) {
        }
    }

    public List If() {
        try {
            return this.Hm.getSupportedSelectableZoneAf();
        } catch (Exception e) {
            return null;
        }
    }

    public void Ig(String str) {
        try {
            this.Hm.setSelectableZoneAf(str);
        } catch (Exception e) {
        }
    }

    public int Iw() {
        return 3;
    }

    public void Is(int i) {
        this.Hm.set("CM-Fusion-enable", i);
    }

    public void It(String str) {
        this.Hm.set("altek-bokeh-enable", str);
    }

    public void HM(int i) {
        this.Hm.set("AL3200_SCID", i);
    }

    public int HL() {
        return getInt("AL3200_SCID", 0);
    }

    public void Ir(String str) {
        this.Hm.set("altek-3D-type", str);
    }
}
