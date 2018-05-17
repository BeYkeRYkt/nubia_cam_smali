package com.android.video;

import android.content.Intent;
import android.hardware.Camera.Size;
import android.media.CamcorderProfile;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.cameradevice.C0081r;
import com.android.common.cameradevice.C0379e;
import com.android.common.cameradevice.C0384o;
import com.android.common.cameradevice.CamcorderProfileEx$INDEX_QUALITY;
import com.android.common.cameradevice.CamcorderProfileEx$INDEX_SLOMO_QUALITY;
import com.android.common.custom.C0417I;
import com.android.common.custom.C0421M;
import com.android.common.setting.C0109m;
import com.android.common.setting.C0710j;
import com.p010a.C0090a;
import java.util.List;

public class C1159p extends C0109m {
    private C0081r aRq;
    private int aRr;

    public C1159p(C0329e c0329e) {
        super(c0329e);
        this.aRq = null;
        this.aRr = -1;
        this.aRq = C0379e.FI().FH();
    }

    protected int wC() {
        return super.wC();
    }

    protected String wD() {
        return super.wD();
    }

    protected String wg() {
        if (wu() == C0384o.Jr().Jt()) {
            return C0421M.dC().dD().bk();
        }
        return super.wg();
    }

    protected String vQ() {
        if (xh().quality == bih(CamcorderProfileEx$INDEX_QUALITY._4KUHD)) {
            return "1920x1080";
        }
        return xh().videoFrameWidth + "x" + xh().videoFrameHeight;
    }

    protected C0417I vP() {
        Size bik = bik(this.zO.ur(), xh().videoFrameWidth, xh().videoFrameHeight);
        if (bik != null) {
            return new C0417I(bik.width, bik.height);
        }
        C0090a.bvo("VideoParameterItems", "use defined preview size " + xh().videoFrameWidth + "x" + xh().videoFrameHeight + " not supported or too large, use similar ratio preview size instead");
        return we(((double) xh().videoFrameWidth) / ((double) xh().videoFrameHeight));
    }

    protected int[] wR() {
        return null;
    }

    protected String vV() {
        return "";
    }

    protected String vZ() {
        if (xg().equals("off")) {
            return vO().getString("pref_camera_video_flashmode_key", vN(R.string.pref_camera_flashmode_default));
        }
        return "off";
    }

    protected String xm() {
        return vN(R.string.pref_camera_whitebalance_default);
    }

    protected int wL() {
        return 0;
    }

    protected String wo() {
        return vN(R.string.pref_camera_ae_bracket_hdr_default);
    }

    protected String wE() {
        return C0421M.dC().dD().bi();
    }

    protected String wI() {
        return vN(R.string.pref_camera_iso_default);
    }

    protected String wX() {
        return vN(R.string.pref_camera_saturation_default);
    }

    protected String wx() {
        return super.wx();
    }

    protected String xa() {
        return super.xa();
    }

    protected String wq() {
        return super.wq();
    }

    protected String wp() {
        return vN(R.string.pref_camera_antibanding_default);
    }

    protected String wa() {
        return "off";
    }

    private Size bik(List list, int i, int i2) {
        if (!C0421M.dC().dD().be() && i > Math.max(C0616j.ahv.x, C0616j.ahv.y)) {
            return null;
        }
        for (Size size : list) {
            if (C0616j.apS(size, i, i2)) {
                return size;
            }
        }
        return null;
    }

    protected String xe() {
        return "on";
    }

    protected int vM() {
        return -1;
    }

    protected String wh() {
        return super.wh();
    }

    protected String ww() {
        return vN(R.string.pref_camera_colorfilter_default);
    }

    protected String wy() {
        return "off";
    }

    protected int wd() {
        return 0;
    }

    protected int wc() {
        return 0;
    }

    protected int wb() {
        return 0;
    }

    protected String vU() {
        if (wu() == C0384o.Jr().Jt()) {
            return vO().getString("pref_snapshot_mirror_key", vN(R.string.pref_snapshot_mirror_default));
        }
        return "off";
    }

    protected String vW() {
        return "-1";
    }

    protected String wP() {
        return super.wP();
    }

    protected boolean xt() {
        return false;
    }

    protected boolean vX() {
        return true;
    }

    protected int wr() {
        return 0;
    }

    protected int wt() {
        return 0;
    }

    protected int wS() {
        return xh().videoFrameRate;
    }

    protected boolean wU() {
        return true;
    }

    protected String wQ() {
        if (bil()) {
            return "nv12-venus";
        }
        return "nv12-venus";
    }

    protected int[] xl() {
        return new int[]{xh().videoFrameWidth, xh().videoFrameHeight};
    }

    protected int bhb() {
        int bii = bii();
        if (bii != -1) {
            return bii;
        }
        String bij = bij();
        if (!bij.contains(":") || !C0421M.dC().dD().bB()) {
            return Integer.parseInt(bij);
        }
        String[] split = bij.split(":");
        if (C0616j.apT(split[0], this.aRq.JM(this.zP, wl(), split[1]))) {
            bii = Integer.parseInt(split[0]);
            C0090a.bvo("VideoParameterItems", "qulity = " + split[0] + ";fps = " + split[1]);
            return bii;
        }
        bii = big(Integer.parseInt(split[0]));
        C0090a.bvo("VideoParameterItems", "HFR quality(" + bij + ") not supported, use nomal quality" + bii + " instead");
        return bii;
    }

    private int bii() {
        Intent intent = this.zQ.SN().getIntent();
        if (!intent.hasExtra("android.intent.extra.videoQuality")) {
            return -1;
        }
        int intExtra = intent.getIntExtra("android.intent.extra.videoQuality", 0);
        if (intExtra <= 0) {
            return 0;
        }
        if (CamcorderProfile.hasProfile(wu(), intExtra)) {
            return intExtra;
        }
        return 1;
    }

    private String bij() {
        if (wu() == C0384o.Jr().Js()) {
            return vO().getString("pref_video_quality_key", vN(R.string.pref_video_quality_default));
        }
        return vO().getString("pref_front_video_quality_key", vN(R.string.pref_front_video_quality_default));
    }

    protected int xi() {
        if (bil() || this.aRr == bih(CamcorderProfileEx$INDEX_QUALITY._720P)) {
            return 1;
        }
        return 0;
    }

    private boolean bil() {
        return this.aRr == bih(CamcorderProfileEx$INDEX_QUALITY._4KUHD);
    }

    protected String xk() {
        String str;
        String vN;
        int i = 0;
        if (C0384o.Jr().Ju()[wu()].facing == 0) {
            i = 1;
        }
        C0710j vO = vO();
        if (i != 0) {
            str = "pref_video_quality_key";
        } else {
            str = "pref_front_video_quality_key";
        }
        if (i != 0) {
            vN = vN(R.string.pref_video_quality_default);
        } else {
            vN = vN(R.string.pref_front_video_quality_default);
        }
        vN = vO.getString(str, vN);
        if (C0421M.dC().dD().bB() && vN.contains(":")) {
            return vN.split(":")[1];
        }
        return "off";
    }

    protected CamcorderProfile xh() {
        int bhb = bhb();
        if (this.zR == null || this.aRr != bhb) {
            this.aRr = bhb;
            this.zR = this.aRq.JP(wu(), this.aRr);
        }
        return this.zR;
    }

    private int bih(CamcorderProfileEx$INDEX_QUALITY camcorderProfileEx$INDEX_QUALITY) {
        return this.aRq.JN(camcorderProfileEx$INDEX_QUALITY);
    }

    private int big(int i) {
        if (i == this.aRq.JQ(CamcorderProfileEx$INDEX_SLOMO_QUALITY._1080P_120FPS) || i == this.aRq.JQ(CamcorderProfileEx$INDEX_SLOMO_QUALITY._1080P_60FPS)) {
            return this.aRq.JN(CamcorderProfileEx$INDEX_QUALITY._1080P);
        }
        if (i == this.aRq.JQ(CamcorderProfileEx$INDEX_SLOMO_QUALITY._720P_120FPS) || i == this.aRq.JQ(CamcorderProfileEx$INDEX_SLOMO_QUALITY._720P_60FPS)) {
            return this.aRq.JN(CamcorderProfileEx$INDEX_QUALITY._720P);
        }
        if (i == this.aRq.JQ(CamcorderProfileEx$INDEX_SLOMO_QUALITY._VGA_120FPS)) {
            return this.aRq.JN(CamcorderProfileEx$INDEX_QUALITY._VGA);
        }
        return this.aRq.JN(CamcorderProfileEx$INDEX_QUALITY._1080P);
    }

    protected int vY() {
        return 0;
    }
}
