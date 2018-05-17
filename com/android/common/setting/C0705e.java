package com.android.common.setting;

import com.android.common.appService.C0105L;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0382m;
import com.android.common.custom.C0421M;
import com.android.common.independentutil.IndependenceUtil;
import java.util.HashMap;
import java.util.List;

public class C0705e extends C0160p {
    private HashMap yV;

    public C0705e(int i, C0329e c0329e, C0105L c0105l) {
        super(i, c0329e, c0105l);
        this.yV = null;
        this.yV = new HashMap();
    }

    public String tG() {
        if (IndependenceUtil.agb) {
            return super.tG();
        }
        return "off";
    }

    protected void ud(C0382m c0382m) {
        xz();
        xA();
        xB();
        xC();
        xD();
        xE();
        ub(c0382m);
        xF();
        xG();
        xH();
        xI();
    }

    protected void uc(C0382m c0382m) {
        if (xJ(c0382m)) {
            xK();
            xL();
            xz();
            xA();
            xB();
            xC();
            xM();
            xN();
            xO();
            if (IndependenceUtil.agc) {
                xP();
            }
            xQ();
            xR();
            xS();
            if (IndependenceUtil.anq()) {
                xT();
            }
            xU();
            if (IndependenceUtil.agb) {
                xV();
                xW();
            }
            xX();
            this.zX = false;
            xY();
            xZ();
            if (this.zX) {
                c0382m.IQ(tD());
                tW();
            }
            ya();
            if (C0421M.dC().dD().cv()) {
                yb();
            } else {
                yc();
            }
            yd();
            xH();
            if ("auto".equals(this.zY) || "hdr".equals(this.zY)) {
                xD();
                xE();
                ub(c0382m);
            }
            ye();
            xG();
            yf();
            yg();
            yh();
            xI();
            tZ(c0382m);
            yi();
        }
    }

    private void tZ(C0382m c0382m) {
        if (xJ(c0382m)) {
            yj();
            if (IndependenceUtil.agd) {
                yk();
            }
            if (IndependenceUtil.age) {
                yl();
            }
            if (IndependenceUtil.agf) {
                ym();
            }
            if (IndependenceUtil.agg) {
                yn();
            }
            yo();
            if (IndependenceUtil.agh) {
                yp();
            }
            if (IndependenceUtil.agi) {
                yq();
            }
            if (IndependenceUtil.agj) {
                yr();
            }
            if (IndependenceUtil.agk) {
                ys();
            }
            if (IndependenceUtil.agl) {
                xF();
            }
            yt();
            ua();
            yu();
        }
    }

    protected void ua() {
        if (IndependenceUtil.agm) {
            super.ua();
        } else if (tD().Gj() > 0) {
            String wg = yv().wg();
            if (wg.equals("on") && !yw().UH()) {
                yw().WZ();
            }
            if (wg.equals("off") && yw().UH()) {
                yw().Xd();
            }
            yx("FaceDetectionMode: " + wg);
        } else {
            yx("FaceDetectionMode: off");
        }
    }

    protected void ub(C0382m c0382m) {
        int vM = yv().vM();
        String wh = vM != -1 ? "manual" : yv().wh();
        List GC = yy().GC();
        if (!yz(wh, GC)) {
            if (yz("auto", GC)) {
                wh = "auto";
            } else {
                wh = tD().Ge();
            }
        }
        tD().Hd(wh);
        if (IndependenceUtil.anr()) {
            yA(wh, c0382m);
        }
        if (IndependenceUtil.agn && vM != -1) {
            tD().HN(vM);
        }
        yx("FocusMode: " + wh + "; Manual: " + vM);
    }

    protected C0109m tY() {
        C0329e yw = yw();
        CameraMember SP = yw.SP();
        String str = SP.toString() + '&' + this.zZ;
        C0109m c0109m = (C0109m) this.yV.get(str);
        if (c0109m == null) {
            c0109m = this.Aa.abB(yw, this.zZ, SP);
            this.yV.put(str, c0109m);
        }
        if (c0109m != null) {
            c0109m.wi(this.zZ, this.Ab);
        }
        return c0109m;
    }
}
