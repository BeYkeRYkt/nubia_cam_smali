package com.android.videomaker;

import android.content.Intent;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.android.camera.R;
import com.android.common.ActivityBase;
import com.android.common.C0616j;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.p014n.C0111p;
import com.android.common.p015f.C0112h;
import com.android.common.ui.C0366P;
import com.android.common.ui.C0474A;
import com.android.common.ui.RotateImageView;
import com.android.common.ui.RotateLayout;
import com.android.common.ui.ZtemtShutterButton;
import com.p010a.C0090a;

public class C1201o extends C0111p implements C1188b, C0366P {
    private RotateLayout aAA;
    private RotateLayout aAB;
    private RotateImageView aAC = null;
    private RelativeLayout aAD = null;
    private ZtemtShutterButton aAE = null;
    private RotateImageView aAF = null;
    private RotateImageView aAG = null;
    private C1179a aAH = null;
    private C0112h aAI = null;
    private LinearLayout aAJ;
    private AudioManager aAu = null;
    private ActivityBase aAv = null;
    private boolean aAw = false;
    private ProgressBar aAx;
    private int aAy = 0;
    private RotateLayout aAz;

    public C1201o(int i) {
        super(i);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        View inflate = layoutInflater.inflate(R.layout.ztemt_videomaker_layout, viewGroup, false);
        if (inflate == null) {
            C0090a.bvj("VideoMakerFragment", "view == null");
        }
        aQa(inflate);
        return inflate;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getActivity() != null && (getActivity() instanceof ActivityBase)) {
            this.aAv = (ActivityBase) getActivity();
        }
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.aAu = (AudioManager) getActivity().getSystemService("audio");
            if (aPZ().aMB()) {
                alA().Tk(true);
            } else {
                aQc();
            }
        }
    }

    private void aQc() {
        if (alq() != UIState.CAMERA_FAMILY) {
            this.aAB.setVisibility(0);
            this.aAz.setVisibility(8);
            this.aAA.setVisibility(8);
            this.aAJ.setVisibility(8);
            this.aAx.setMax(100);
            this.aAx.setProgress(0);
            this.aAy = 0;
            this.aAC.setVisibility(8);
            this.aAG.setVisibility(8);
            this.aAE.setVisibility(8);
            alr();
        }
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        aQd();
        release();
        super.onPause();
    }

    private void release() {
        if (aPZ().aMB()) {
            if (aPZ().aMz().getState() == 0) {
                aPZ().aMz().aON();
            }
            alA().Tk(false);
            return;
        }
        if (aPZ().aMz() != null) {
            aPZ().aMz().aNR();
        }
        aPZ().aMo();
    }

    public void aPT(C1179a c1179a) {
        this.aAH = c1179a;
    }

    private C1179a aPZ() {
        return this.aAH;
    }

    private void aPW(Uri uri) {
        if (aPZ() != null) {
            aPZ().aMz().aNL(uri);
        }
    }

    private void aQe() {
        this.aAy++;
        this.aAx.setProgress(this.aAy);
    }

    private void aQa(View view) {
        this.aAB = (RotateLayout) view.findViewById(R.id.videomaker_tip_layout);
        this.aAB.setVisibility(0);
        this.aAz = (RotateLayout) view.findViewById(R.id.videomaker_continue_tip_layout);
        this.aAA = (RotateLayout) view.findViewById(R.id.videomaker_saving_tip_layout);
        this.aAJ = (LinearLayout) view.findViewById(R.id.ztemt_videomaker_progress_bar);
        this.aAx = (ProgressBar) view.findViewById(R.id.videomaker_progress_bar);
        this.aAD = (RelativeLayout) view.findViewById(R.id.videomaker_cancel_done_layout);
        this.aAG = (RotateImageView) view.findViewById(R.id.btn_done);
        this.aAC = (RotateImageView) view.findViewById(R.id.btn_cancel);
        this.aAE = (ZtemtShutterButton) view.findViewById(R.id.maker_continue);
        this.aAF = (RotateImageView) view.findViewById(R.id.maker_continue_icon);
        this.aAG.setOnClickListener(new C1220z(this));
        this.aAC.setOnClickListener(new C1173A(this));
        this.aAE.pZ(this);
        this.aAE.setLongClickable(true);
        this.aAE.setClickable(true);
        this.adE = new C0474A[]{this.aAG, this.aAC, this.aAF};
    }

    private void aPX() {
        if (aPZ().aMC() && !aQb()) {
            aPZ().aMo();
            this.aAw = false;
        }
    }

    private void aPY() {
        if (aPZ().aMC() && !aQb()) {
            aPZ().aMs();
            this.aAC.setVisibility(8);
            this.aAG.setVisibility(8);
            this.aAE.setVisibility(8);
            this.aAD.setVisibility(8);
            this.aAJ.setVisibility(8);
            C0616j.apa(getActivity(), "videomaker_1", "VideoMakerFragment");
        }
    }

    private void aQd() {
        if (!aPZ().aMB() && this.aAw) {
            aPZ().aML();
            this.aAw = false;
            this.adA.Wb(3);
        }
    }

    private boolean aQb() {
        return aPZ().aMv();
    }

    public static C1201o aPS() {
        return new C1201o(1);
    }

    public void aNt() {
        this.aAB.setVisibility(8);
        this.aAJ.setVisibility(0);
        alz();
        this.aAC.setVisibility(0);
        this.aAG.setVisibility(0);
        this.aAE.setVisibility(0);
    }

    public void aNo() {
        aQe();
    }

    public void aNp() {
        this.aAw = false;
        this.aAC.setVisibility(8);
        this.aAG.setVisibility(8);
        this.aAE.setVisibility(8);
        this.aAD.setVisibility(8);
        this.aAJ.setVisibility(8);
    }

    public void aNn() {
        aQc();
    }

    public void aNq() {
        aQc();
    }

    public void aNr(boolean z) {
        if (z) {
            this.aAz.setVisibility(0);
        } else {
            this.aAz.setVisibility(8);
        }
    }

    public void aNs(boolean z) {
        if (z) {
            this.aAA.setVisibility(0);
        } else {
            this.aAA.setVisibility(8);
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.aAB != null && this.aAB.getVisibility() == 0) {
            this.aAB.setVisibility(8);
        }
        if (this.aAz != null && this.aAz.getVisibility() == 0) {
            this.aAz.setVisibility(8);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        switch (i) {
            case 1001:
                if (i2 == -1 && intent != null) {
                    aPW(intent.getData());
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void qf(boolean z) {
        aQd();
    }

    public void qe() {
    }

    public void qg() {
        if (this.adA != null) {
            if (this.adA.Tl() && !this.adA.SO() && alu() == FunctionState.NORMAL && alt() == DeviceState.IDLE && alq() == UIState.NORMAL) {
                if (!(aPZ().aMB() || this.aAw)) {
                    this.adA.Wb(2);
                    aPZ().aMJ();
                    this.aAw = true;
                }
                return;
            }
            C0090a.bvo("VideoMakerFragment", "Low storage: " + this.adA.Tl() + "; Activity pause: " + this.adA.SO() + "; UIState: " + alq() + "; DeviceState: " + alt() + "; FunctionState: " + alu());
        }
    }

    public boolean onBackPressed() {
        if (this.aAw) {
            aPZ().aML();
            aPZ().aMo();
            this.aAw = false;
            return true;
        } else if (!aPZ().aMB()) {
            return super.onBackPressed();
        } else {
            if (aPZ().aMz().getState() == 0) {
                aPZ().aMz().aON();
            }
            aPZ().aMz().aOm();
            return true;
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        switch (i) {
            case 24:
                if (aPZ().aMB()) {
                    this.aAu.adjustStreamVolume(3, 1, 1);
                    return true;
                }
                break;
            case 25:
                if (aPZ().aMB()) {
                    this.aAu.adjustStreamVolume(3, -1, 1);
                    return true;
                }
                break;
        }
        return super.onKeyDown(i, keyEvent);
    }

    public boolean aPU() {
        if (this.aAE == null || this.aAE.getVisibility() != 0) {
            return false;
        }
        this.aAE.performLongClick();
        return true;
    }

    public boolean aPV(boolean z) {
        if (this.aAE == null || this.aAE.getVisibility() != 0) {
            return false;
        }
        this.aAE.qa(z);
        return true;
    }

    protected void alr() {
        super.alr();
        if (this.aAD != null) {
            this.aAD.setVisibility(8);
        }
    }

    protected void alz() {
        super.alz();
        if (this.aAD != null) {
            this.aAD.setVisibility(0);
        }
    }
}
