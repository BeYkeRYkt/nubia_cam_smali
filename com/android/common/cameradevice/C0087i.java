package com.android.common.cameradevice;

import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import com.android.common.C0616j;
import com.p010a.C0090a;
import com.umeng.analytics.ReportPolicy;
import java.util.List;

public abstract class C0087i implements C0086j {
    public static final int[] Hk = new int[]{0, 1, 2, 3, 4, 5, 6};
    public static final String[] Hl = new String[]{"", "100 0 0 0 100 0 0 0 100 0 0 80", "100 0 0 0 100 0 0 0 100 12 50 100", "100 0 0 0 100 0 0 0 100 0 100 100", "100 0 0 0 100 0 0 0 100 0 85 0", "100 0 0 0 100 0 0 0 100 80 80 0", "100 0 0 0 100 0 0 0 100 80 0 0", "100 0 0 0 100 0 0 0 50 115 20 70", "100 0 0 0 100 0 0 0 40 -65 -65 -65", "100 0 0 0 100 0 0 0 40 -65 -65 -65", "100 0 0 0 100 0 0 0 40 -65 -65 -65", "100 0 0 0 100 0 0 0 40 -65 -65 -65"};
    protected Parameters Hm = null;

    public Parameters Gp() {
        return this.Hm;
    }

    public void Hr(Parameters parameters) {
        this.Hm = parameters;
    }

    public void GR(String str, String str2) {
        this.Hm.set(str, str2);
    }

    public void GS(String str, int i) {
        this.Hm.set(str, i);
    }

    public String FX(String str) {
        return this.Hm.get(str);
    }

    public int getInt(String str, int i) {
        try {
            return this.Hm.getInt(str);
        } catch (NumberFormatException e) {
            C0090a.bvo("ParametersEx", str + " not found, use defaultValue");
            return i;
        }
    }

    public void setPreviewSize(int i, int i2) {
        this.Hm.setPreviewSize(i, i2);
    }

    public Size Gv() {
        return this.Hm.getPreviewSize();
    }

    public List GI() {
        return this.Hm.getSupportedPreviewSizes();
    }

    public List GK() {
        return this.Hm.getSupportedVideoSizes();
    }

    public void Hl(int i, int i2) {
        this.Hm.setJpegThumbnailSize(i, i2);
    }

    public Size Gh() {
        return this.Hm.getJpegThumbnailSize();
    }

    public List GD() {
        return this.Hm.getSupportedJpegThumbnailSizes();
    }

    public void Hk(int i) {
        this.Hm.setJpegQuality(i);
    }

    public int Gg() {
        return this.Hm.getJpegQuality();
    }

    public void Hx(int i) {
        this.Hm.setPreviewFrameRate(i);
    }

    public List GH() {
        return this.Hm.getSupportedPreviewFrameRates();
    }

    public void Hw(int i, int i2) {
        this.Hm.setPreviewFpsRange(i, i2);
    }

    public void Gu(int[] iArr) {
        this.Hm.getPreviewFpsRange(iArr);
    }

    public int Gt() {
        return this.Hm.getPreviewFormat();
    }

    public void Hv(String str) {
        this.Hm.set("preview-format", str);
    }

    public void Ht(int i, int i2) {
        this.Hm.setPictureSize(i, i2);
    }

    public Size Gr() {
        return this.Hm.getPictureSize();
    }

    public List GG() {
        return this.Hm.getSupportedPictureSizes();
    }

    public void Hs(String str) {
        this.Hm.set("picture-format", str);
    }

    public String Gq() {
        return this.Hm.get("picture-format");
    }

    public List GF() {
        return C0616j.aql(this.Hm.get("picture-format-values"), ",");
    }

    public void Hz(int i) {
        this.Hm.setRotation(i);
    }

    public void Hg(double d) {
        this.Hm.setGpsLatitude(d);
    }

    public void Hh(double d) {
        this.Hm.setGpsLongitude(d);
    }

    public void Hf(double d) {
        this.Hm.setGpsAltitude(d);
    }

    public void Hj(long j) {
        this.Hm.setGpsTimestamp(j);
    }

    public void Hi(String str) {
        this.Hm.setGpsProcessingMethod(str);
    }

    public void GQ() {
        this.Hm.removeGpsData();
    }

    public void HE(String str) {
        this.Hm.setWhiteBalance(str);
    }

    public List GL() {
        return this.Hm.getSupportedWhiteBalance();
    }

    public void Hm(int i) {
        this.Hm.set("wb-manual-cct", i);
    }

    public void GT(String str) {
        this.Hm.setAntibanding(str);
    }

    public List GA() {
        return this.Hm.getSupportedAntibanding();
    }

    public String Gx() {
        return this.Hm.getSceneMode();
    }

    public void HA(String str) {
        this.Hm.setSceneMode(str);
    }

    public List GJ() {
        return this.Hm.getSupportedSceneModes();
    }

    public String Gc() {
        return this.Hm.getFlashMode();
    }

    public void Hb(String str) {
        this.Hm.setFlashMode(str);
    }

    public List GB() {
        return this.Hm.getSupportedFlashModes();
    }

    public List GE() {
        return C0616j.aql(this.Hm.get("nubia-flash"), ",");
    }

    public void Hq(int i) {
        this.Hm.set("backlight-flash-mode", i);
    }

    public String Ge() {
        return this.Hm.getFocusMode();
    }

    public void Hd(String str) {
        this.Hm.setFocusMode(str);
    }

    public List GC() {
        return this.Hm.getSupportedFocusModes();
    }

    public float Gd() {
        return this.Hm.getFocalLength();
    }

    public int Ga() {
        return this.Hm.getExposureCompensation();
    }

    public void Ha(int i) {
        this.Hm.setExposureCompensation(i);
    }

    public int Gi() {
        return this.Hm.getMaxExposureCompensation();
    }

    public int Gn() {
        return this.Hm.getMinExposureCompensation();
    }

    public float Gb() {
        return this.Hm.getExposureCompensationStep();
    }

    public void GW(boolean z) {
        this.Hm.setAutoExposureLock(z);
    }

    public boolean GN() {
        return this.Hm.isAutoExposureLockSupported();
    }

    public void GX(boolean z) {
        this.Hm.setAutoWhiteBalanceLock(z);
    }

    public boolean GO() {
        return this.Hm.isAutoWhiteBalanceLockSupported();
    }

    public void HG(int i) {
        this.Hm.setZoom(i);
    }

    public boolean GP() {
        return this.Hm.isZoomSupported();
    }

    public int Gm() {
        return this.Hm.getMaxZoom();
    }

    public List GM() {
        return this.Hm.getZoomRatios();
    }

    public int Gk() {
        return this.Hm.getMaxNumFocusAreas();
    }

    public void Hc(List list) {
        this.Hm.setFocusAreas(list);
    }

    public int Gl() {
        return this.Hm.getMaxNumMeteringAreas();
    }

    public void Hn(List list) {
        this.Hm.setMeteringAreas(list);
    }

    public int Gj() {
        return this.Hm.getMaxNumDetectedFaces();
    }

    public void Hy(boolean z) {
        this.Hm.setRecordingHint(z);
    }

    public boolean Gw() {
        return Boolean.parseBoolean(this.Hm.get("recording-hint"));
    }

    public void HC(int i) {
        this.Hm.set("slow_shutter_addition", i);
    }

    public String Gy() {
        return this.Hm.get("slow_shutter");
    }

    public void HB(String str) {
        this.Hm.set("slow_shutter", str);
    }

    private int FY(int i, int i2) {
        switch (i) {
            case 0:
                return 0;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
            case 7:
                return 1;
            case 8:
                if (i2 == 0) {
                    return 4;
                }
                if (i2 == 90) {
                    return 6;
                }
                if (i2 == 180) {
                    return 3;
                }
                if (i2 == 270) {
                    return 5;
                }
                break;
            case 9:
                break;
            case 10:
                if (i2 == 0) {
                    return 5;
                }
                if (i2 == 90) {
                    return 4;
                }
                if (i2 == 180) {
                    return 6;
                }
                if (i2 == 270) {
                    return 3;
                }
                break;
            case 11:
                if (i2 == 0) {
                    return 6;
                }
                if (i2 == 90) {
                    return 3;
                }
                if (i2 == 180) {
                    return 5;
                }
                if (i2 == 270) {
                    return 4;
                }
                break;
        }
        if (i2 == 0) {
            return 3;
        }
        if (i2 == 90) {
            return 5;
        }
        if (i2 == 180) {
            return 4;
        }
        return i2 == 270 ? 6 : 0;
    }

    public void GZ(int i, int i2) {
        Gp().set("color-filter-type", Hk[FY(i, i2)]);
        Gp().set("color-filter-param", Hl[i]);
    }

    public void Hp(String str) {
        this.Hm.set("night_key", str);
    }

    public void GV(int i) {
        this.Hm.set("app_iwb_switch", i);
    }

    public void Ho(int i) {
        this.Hm.set("need_trigger_central_caf", i);
    }

    public void GU(float f, float f2, float f3) {
        this.Hm.set("iwb_color_ratio_r", String.valueOf(f));
        this.Hm.set("iwb_color_ratio_g", String.valueOf(f2));
        this.Hm.set("iwb_color_ratio_b", String.valueOf(f3));
    }

    public String Gf() {
        return this.Hm.get("ztemt_effect_type");
    }

    public void He(String str) {
        this.Hm.set("ztemt_effect_type", str);
    }

    public void Hu(int i, int i2, int i3, int i4) {
        this.Hm.set("pref_camera_doc_pretty", i);
        if (i == 2) {
            this.Hm.set("pref_camera_pretty_smooth_key", i2);
            this.Hm.set("pref_camera_pretty_toning_key", i3);
            this.Hm.set("pref_camera_pretty_slimming_key", i4);
        }
    }

    public int Gs() {
        return getInt("pref_camera_doc_pretty", 0);
    }

    public void HF(String str, int i, int i2) {
        this.Hm.set("tsmakeup", str);
        this.Hm.set("tsmakeup_whiten", i);
        this.Hm.set("tsmakeup_clean", i2);
    }

    public void GY(int i) {
        this.Hm.set("camera_app_mode", i);
    }

    public void HD(int i) {
        this.Hm.set("zte_zoom_crop", i);
    }

    public int Gz() {
        String str = this.Hm.get("zte_zoom_crop");
        return str == null ? 0 : Integer.valueOf(str).intValue();
    }

    public int Go() {
        return getInt("num-snaps-per-shutter", 1);
    }

    public int FZ() {
        return getInt("dual-camera-layout", 0);
    }
}
