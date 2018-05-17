package com.android.panorama;

import android.graphics.Bitmap;
import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.PreviewCallback;
import android.hardware.Camera.Size;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.android.camera.R;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.custom.C0421M;
import com.android.common.p014n.C0111p;
import com.android.common.p028h.C0562f;
import com.android.common.ui.C0366P;
import com.android.common.ui.C0474A;
import com.android.common.ui.MultiFunctionImageView;
import com.android.common.ui.MultiFunctionImageView.Function;
import com.android.common.ui.ZtemtShutterButton;
import com.morpho.core.MorphoPanoramaGP;
import com.p010a.C0090a;

public class C1047i extends C0111p implements PreviewCallback, PictureCallback, C1046l, C0366P {
    private Toast aUE = null;
    private C1039b aUF;
    private C1048j aUG;
    private PanoPreviewView aUH;
    private int aUI = 0;
    private C1049k aUJ;
    private ZtemtShutterButton aUK = null;
    private MultiFunctionImageView aUL = null;
    private RelativeLayout aUM = null;
    private int aUN = 0;
    private byte[] aUO;
    private int aUP;
    private int aUQ;

    public C1047i(int i) {
        super(i);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        C0090a.bvo("PanoramaFragment", "onCreateView");
        C0090a.bvo("PanoramaFragment", "morphor panorama version : " + MorphoPanoramaGP.bul());
        View inflate = layoutInflater.inflate(R.layout.panorama_preview, viewGroup, false);
        if (inflate == null) {
            C0090a.bvo("PanoramaFragment", "view == null");
        }
        bkZ(inflate);
        return inflate;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!this.adB) {
            this.aUJ = new C1049k();
            this.aUG = new C1048j();
            Size Gv = alA().Tn().Gv();
            this.aUP = Gv.height;
            this.aUQ = Gv.width;
            this.aUO = new byte[(((this.aUP * this.aUQ) * 3) / 2)];
            Gv = alA().Tn().Gr();
            if (this.aUF == null) {
                this.aUF = new C1039b(this.aUQ, this.aUP, Gv.width, Gv.height);
                this.aUF.bko(this);
            }
        }
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            C0090a.bvo("PanoramaFragment", "onResume");
            blg();
            this.aUH.bkb();
            this.adA.SX().Ka();
            this.adA.Wi();
            this.aUF.bkj(this.adA);
            if (C0384o.Jr().Jw(this.adA.SQ()) != null) {
                ahM();
                this.adA.Va().avu(3);
            }
        }
    }

    public void onDestroy() {
        if (this.adB) {
            super.onDestroy();
            return;
        }
        if (this.aUF != null) {
            this.aUF.bko(null);
            this.aUF = null;
        }
        super.onDestroy();
    }

    protected void ahM() {
        super.ahM();
        if (this.adA.Tr() != null) {
            alA().Ts().abE(this, this.adA.SQ());
            alA().Tr().IK(this.aUO);
        }
    }

    private void blg() {
        if (!this.aUF.bkk() && this.aUL != null && alq() != UIState.CAMERA_FAMILY) {
            this.aUK.setVisibility(8);
            this.aUL.lB(Function.WAIT);
            this.aUI = 0;
            alr();
            alF();
        }
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        C0090a.bvo("PanoramaFragment", "onPause");
        if (this.aUI == 1) {
            this.aUH.clear();
        }
        blk();
        this.aUH.bjY();
        this.aUF.bks(0);
        this.adA.Ts().abD(this);
        this.aUH.bkc();
        super.onPause();
    }

    private void bkZ(View view) {
        this.aUH = (PanoPreviewView) view.findViewById(R.id.preivewPano);
        this.aUH.setPreviewSize(this.aUQ, this.aUP);
        this.aUM = (RelativeLayout) view.findViewById(R.id.panoroma_stop_layout);
        this.aUK = (ZtemtShutterButton) view.findViewById(R.id.panoroma_stop);
        this.aUL = (MultiFunctionImageView) view.findViewById(R.id.panoroma_stop_icon);
        this.aUK.pZ(this);
        this.adE = new C0474A[0];
    }

    public static C1047i bkW() {
        return new C1047i(1);
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
        if (1 == this.aUI) {
            this.aUG.sendEmptyMessage(1);
        } else {
            this.aUG.sendEmptyMessage(4);
        }
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        String str = null;
        this.aUJ.blt(1);
        if (this.aUI == 1) {
            if (!(this.adA == null || !C0421M.dC().dD().cz() || this.adA.SR() == null)) {
                str = this.adA.SR().tp("pref_picture_artist_info").tw();
            }
            this.aUF.bkn(str);
            this.aUF.bkg(bArr);
        }
        if (this.aUJ.blv(2)) {
            blk();
        }
    }

    private void blj() {
        if (this.aUI == 0) {
            this.aUI = 1;
            this.aUJ.bls();
            alG();
            this.aUG.sendEmptyMessage(0);
        }
    }

    private void blk() {
        if (this.aUI == 1) {
            this.aUI = 2;
            this.aUG.sendEmptyMessage(3);
        }
    }

    protected void ain(int i, boolean z) {
        super.ain(i, z);
        if (i != this.aUN) {
            this.aUN = i;
            if (this.aUI == 1) {
                blk();
            }
            this.aUF.bkp(i);
        }
    }

    public void bld() {
        bli("onPanoramaStart");
        this.adA.Tj(true);
        alz();
        this.aUK.setVisibility(0);
        this.aUL.lE();
        this.adA.Wb(2);
        this.adA.TE().Lq(true);
        this.adA.TE().Lz(8);
    }

    public void ble(int i) {
        bli("onPanoramaStop ret " + i);
        this.adA.Tj(false);
        switch (i) {
            case 7:
                blh(i);
                break;
        }
        this.aUI = 2;
        this.aUL.lz(null);
        this.aUL.lw(Function.WAIT);
        this.adA.Wb(3);
        this.adA.TE().Lq(false);
        this.adA.TE().Lz(0);
    }

    public void blf(Bitmap bitmap, Point point, int i) {
        this.aUH.bjZ(bitmap, point, i);
    }

    public void blb(byte[] bArr) {
        this.aUH.bka(bArr);
    }

    public void blc(C0562f c0562f, byte[] bArr) {
        if (c0562f != null) {
            this.adA.Uk(c0562f.afR());
            this.adA.Th().afx(c0562f);
        }
        if (this.adA.SO()) {
            this.adA.Th().afu();
            return;
        }
        bli("onImageSaveDone");
        this.aUI = 0;
        alr();
        alF();
        this.aUK.setVisibility(8);
        this.aUL.lB(Function.WAIT);
    }

    public void bla(int i) {
        bli("moveTooFast");
    }

    public void bll() {
        bli("takeStillPicture paused: " + this.adC);
        if (!this.adC) {
            this.aUJ.blu(1);
            this.adA.Tn().Hz(0);
            this.adA.Tr().IQ(this.adA.Tn());
            this.adA.Tr().IO(null, null, null, this);
        }
    }

    protected void alG() {
        super.alG();
        this.adA.SX().Kb(UIState.NORMAL, FunctionState.NORMAL, DeviceState.IDLE);
    }

    protected void alF() {
        super.alF();
        this.adA.SX().Ka();
    }

    private void bli(String str) {
        C0090a.bvo("debug_pano", str);
    }

    private void blh(int i) {
        CharSequence string;
        switch (i) {
            case 7:
                string = getString(R.string.panorama_align_error);
                break;
            default:
                string = null;
                break;
        }
        if (string != null) {
            if (this.aUE != null) {
                this.aUE.cancel();
                this.aUE = null;
            }
            this.aUE = Toast.makeText(getActivity(), string, 0);
            this.aUE.show();
        }
    }

    private void start() {
        if (alA() != null) {
            if (this.adA.Tl()) {
                blj();
            } else {
                C0090a.bvm("PanoramaFragment", "Storage enough: " + this.adA.Tl());
            }
        }
    }

    private void stop() {
        if (this.aUJ.blv(1)) {
            this.aUJ.blu(2);
        } else {
            blk();
        }
    }

    public void qe() {
        if ((this.adA == null || !this.adA.SO()) && alu() == FunctionState.NORMAL && alt() == DeviceState.IDLE && alq() == UIState.NORMAL) {
            switch (this.aUI) {
                case 0:
                    start();
                    break;
                case 1:
                    stop();
                    break;
            }
        }
    }

    public void qf(boolean z) {
        if (alA() == null) {
            alA().VY(z);
        }
    }

    public void qg() {
        qe();
    }

    public boolean onBackPressed() {
        switch (this.aUI) {
            case 1:
                stop();
                return true;
            case 2:
                return true;
            default:
                return super.onBackPressed();
        }
    }

    public boolean bkX() {
        if (this.aUK == null || this.aUK.getVisibility() != 0) {
            return false;
        }
        this.aUK.performClick();
        return true;
    }

    public void bkY(boolean z) {
        if (z) {
            this.adA.Ts().abD(this);
            return;
        }
        this.adA.Ts().abE(this, this.adA.SQ());
        alA().Tr().IK(this.aUO);
    }

    protected void alr() {
        super.alr();
        if (this.aUM != null) {
            this.aUM.setVisibility(8);
        }
    }

    protected void alz() {
        super.alz();
        if (this.aUM != null) {
            this.aUM.setVisibility(0);
        }
    }
}
