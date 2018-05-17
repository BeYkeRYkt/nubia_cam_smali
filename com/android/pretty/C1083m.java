package com.android.pretty;

import android.hardware.Camera.Size;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.C0772y;
import com.android.common.appService.C0333h;
import com.android.common.appService.C0341p;
import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.custom.C0421M;
import com.android.common.p014n.C0111p;
import com.android.common.p014n.C0117j;
import com.android.common.p015f.C0112h;
import com.android.common.p027g.C0535a;
import com.android.common.setting.ListPreference;
import com.android.common.ui.RotateImageView;
import com.p010a.C0090a;
import java.util.List;

public class C1083m extends C0111p implements C1082r {
    final String TAG = "PrettyFragment";
    private ImageView auk = null;
    private TextView aul = null;
    private TextView aum = null;
    private C1084p aun = null;
    private C0341p auo = null;
    private C0333h aup = new C0333h();
    private C0535a auq = null;
    private ListPreference aur;
    private C0772y aus = null;
    private GalleryFlow aut = null;
    private ImageView auu = null;
    private C1074o auv = null;
    private ProgressBar auw = null;

    public C1083m(int i, C1084p c1084p) {
        super(i);
        this.aun = c1084p;
    }

    public static C1083m aHU(C1084p c1084p) {
        return new C1083m(1, c1084p);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return onCreateView;
        }
        onCreateView = layoutInflater.inflate(R.layout.pretty_layout, viewGroup, false);
        aId(onCreateView);
        return onCreateView;
    }

    private void aId(View view) {
        aIc(view);
        aHZ(view);
        aIb(view);
        aIa(view);
    }

    private void aIa(View view) {
    }

    private void aIc(View view) {
        if (C0616j.aoM(this.adA.SP(), this.adA.ST())) {
            this.auv = new C1075e(this.adA);
        } else {
            this.auv = new C1090w(this.adA);
        }
        this.auv.aGK(new C1062I(this));
        this.auv.aGE((ViewGroup) view);
    }

    private void aIb(View view) {
        if (C0421M.dC().dD().bR() && aHY()) {
            this.auo = new C0341p(this.adA, alv().tp("pref_camera_pretty_effect_key"), view, R.id.effect_page, R.id.effect_grid_switch);
            this.auo.YE(new C1063J(this));
            this.auo.YF(new C1064K(this));
            this.aup.Ye(this.auo);
            return;
        }
        ((RotateImageView) view.findViewById(R.id.effect_grid_switch)).setVisibility(8);
        ((RelativeLayout) view.findViewById(R.id.effect_page)).setVisibility(8);
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            ail(true);
            this.aun.aIw();
            this.aun.aIx(this);
            if (this.auo != null) {
                this.auo.YC(false);
            }
            if (alq() != UIState.CAMERA_FAMILY) {
                alr();
            }
            this.aur = aln("pref_camera_front_flashmode_key");
            if (C0421M.dC().dD().dv()) {
                Size Gv = this.adA.Tn().Gv();
                this.auq = new C0535a(Gv.width, Gv.height, true, true);
                this.adA.UR().m26a(this.auq);
            }
            this.auv.aGI();
        }
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
            if (this.aun.aIy()) {
                this.aun.aIz(false);
            }
            this.aun.aIx(null);
            if (this.auo != null) {
                this.auo.YD();
            }
            this.aun.release();
            if (this.auq != null) {
                this.auq.release();
                this.auq = null;
            }
        }
    }

    private void aHZ(View view) {
        this.aut = (GalleryFlow) view.findViewById(R.id.picture_select_view);
        this.auu = (ImageView) view.findViewById(R.id.picture_selected_view);
        this.auk = (ImageView) view.findViewById(R.id.background_view);
        this.auw = (ProgressBar) view.findViewById(R.id.wait_indicator);
        this.aum = (TextView) view.findViewById(R.id.save_button);
        this.aum.setOnClickListener(new C1065L(this));
        this.aul = (TextView) view.findViewById(R.id.best_photo_cancel_button);
        this.aul.setOnClickListener(new C1066M(this));
        this.aut.aHP(new C1068N(this));
    }

    public void aIh() {
        this.auw.setVisibility(0);
        for (C0112h c0112h : this.adH) {
            if (c0112h instanceof C0117j) {
                c0112h.aes(false, -1, -1);
            }
        }
    }

    public void aIe(List list, int i) {
        alz();
        this.aut.aHO(list, list, i);
        this.aut.setVisibility(0);
        this.auu.setImageBitmap(this.aun.aIB(i));
        this.auu.setVisibility(0);
        this.auw.setVisibility(8);
        this.auk.setVisibility(0);
        this.aum.setVisibility(0);
        this.aul.setVisibility(0);
        this.auv.setVisibility(8);
        if (this.auo != null) {
            this.auo.YG(8);
        }
    }

    public void aIf() {
    }

    public void aIi() {
        alr();
        this.auu.setVisibility(8);
        this.aut.setVisibility(8);
        this.auk.setVisibility(8);
        this.aum.setVisibility(8);
        this.aul.setVisibility(8);
        this.auv.setVisibility(0);
        this.auw.setVisibility(8);
        if (this.auo != null) {
            this.auo.YG(0);
        }
        C0090a.m1e("PrettyFragment", "onSaveBestPhotoDone");
    }

    public void aIj() {
        C0090a.m1e("PrettyFragment", "onSaveBestPhotoStart");
        this.auw.setVisibility(0);
    }

    public void aIg() {
        alr();
        this.auu.setVisibility(8);
        this.aut.setVisibility(8);
        this.auk.setVisibility(8);
        this.aum.setVisibility(8);
        this.aul.setVisibility(8);
        this.auw.setVisibility(8);
        this.auv.setVisibility(0);
        if (this.auo != null) {
            this.auo.YG(0);
        }
    }

    public boolean onBackPressed() {
        if (this.aun.aIy()) {
            if (this.aun.aIC()) {
                return super.onBackPressed();
            }
            this.aun.aIz(true);
            return true;
        } else if (this.auo != null) {
            return this.auo.onBackPressed();
        } else {
            return super.onBackPressed();
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.adC) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (this.aun.aID() || this.aun.aIC()) {
            C0090a.bvo("PrettyFragment", "in isBestPhotoSaving, prettyFrament consume the dispatchTouchEvent");
            return true;
        } else if (this.auo != null && this.auo.YH()) {
            C0090a.bvo("PrettyFragment", "Grid effect anim is Running, just consume the dipatch event");
            return true;
        } else if (isHidden()) {
            return super.dispatchTouchEvent(motionEvent);
        } else {
            if (this.auv == null || !this.auv.dispatchTouchEvent(motionEvent)) {
                return super.dispatchTouchEvent(motionEvent);
            }
            return true;
        }
    }

    protected void ain(int i, boolean z) {
        if (this.auo != null) {
            this.auo.YJ(i, z);
        }
    }

    public void aHV() {
        if (this.aum != null && this.aum.getVisibility() == 0) {
            this.aum.performClick();
        }
    }

    protected void ajH(int i, int i2, int i3, int i4) {
        if (this.auo != null) {
            this.auo.YI(aly());
        }
        if (this.auq != null) {
            Size Gv = this.adA.Tn().Gv();
            this.auq.aeB(Gv.width, Gv.height);
        }
    }

    public void aiV(CameraMember cameraMember, CameraMember cameraMember2, CameraMember cameraMember3) {
        this.aup.Yf(cameraMember, cameraMember2, cameraMember3);
        this.aup.Ye(this.auo);
    }

    public void aib() {
        if (this.auo != null) {
            this.auo.YL(false);
        }
    }

    public void ahS(boolean z, boolean z2) {
        if (this.auo != null) {
            if (z || alu() != FunctionState.SWITCHING_CAMERA) {
                this.auo.YL(!z);
            } else {
                this.auo.YG(8);
            }
        }
    }

    public void ail(boolean z) {
        if (this.auo != null) {
            this.auo.YL(z);
        }
    }

    public void aHW() {
        this.auv.aGI();
    }

    protected void aHX(boolean z) {
        if (!z) {
            this.auv.aGI();
        }
    }

    private boolean aHY() {
        if (this.adA.SQ() == C0384o.Jr().Jt() || !C0616j.aoM(this.adA.SP(), this.adA.ST())) {
            return true;
        }
        return false;
    }
}
