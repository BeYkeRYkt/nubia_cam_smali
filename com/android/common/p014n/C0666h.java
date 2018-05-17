package com.android.common.p014n;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AnimationUtils;
import android.widget.RelativeLayout;
import com.android.camera.R;
import com.android.common.C0116o;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.appService.IDualCameraControl$DualCameraMode;
import com.android.common.appService.aa;
import com.android.common.camerastate.UIState;
import com.android.common.p015f.C0112h;
import com.android.common.ui.C0474A;
import com.android.common.ui.C0743w;
import com.android.common.ui.C0744T;
import com.android.common.ui.RotateImageView;
import com.android.common.ui.ai;
import java.util.ArrayList;
import java.util.Iterator;

public class C0666h extends C0111p implements C0112h, C0116o, aa {
    private ai abG = null;
    private com.android.common.ui.aa abH = null;
    private C0743w abI = null;
    private C0744T abJ = null;
    private C0743w abK = null;
    private ai abL = null;
    private RotateImageView abM = null;
    private RelativeLayout abN = null;
    private RelativeLayout abO = null;
    private ArrayList abP = null;

    public C0666h(int i, ArrayList arrayList) {
        super(i);
        this.abP = arrayList;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.adB) {
            return null;
        }
        View inflate = layoutInflater.inflate(R.layout.family_member_top_bar, viewGroup, false);
        aiH(inflate);
        return inflate;
    }

    private void aiH(View view) {
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.dimens_16);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.dimens_16);
        int dimensionPixelOffset3 = getResources().getDimensionPixelOffset(R.dimen.dimens_36);
        int size = this.abP.size();
        C0474A[] c0474aArr = new C0474A[size];
        if (size != 1) {
            size = (((C0616j.apG() - (dimensionPixelOffset3 * size)) - dimensionPixelOffset) - dimensionPixelOffset2) / (size - 1);
            dimensionPixelOffset2 = dimensionPixelOffset;
            dimensionPixelOffset = size;
        } else if (((C0667i) this.abP.get(0)).aiI() instanceof com.android.common.ui.aa) {
            dimensionPixelOffset = 0;
            dimensionPixelOffset2 = (C0616j.apG() - dimensionPixelOffset2) - dimensionPixelOffset3;
        } else {
            dimensionPixelOffset2 = dimensionPixelOffset;
            dimensionPixelOffset = 0;
        }
        this.abO = (RelativeLayout) view.findViewById(R.id.topbar);
        this.abN = (RelativeLayout) view.findViewById(R.id.topbarContent);
        Iterator it = this.abP.iterator();
        int i = 0;
        while (it.hasNext()) {
            C0667i c0667i = (C0667i) it.next();
            View aiI = c0667i.aiI();
            LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            if (i == 0) {
                layoutParams.setMarginStart(dimensionPixelOffset2);
            } else {
                layoutParams.setMarginStart(((dimensionPixelOffset + dimensionPixelOffset3) * i) + dimensionPixelOffset2);
            }
            layoutParams.addRule(15);
            aiI.setLayoutParams(layoutParams);
            if (c0667i.aiJ() != -1) {
                aiI.setId(c0667i.aiJ());
            }
            if (aiI instanceof C0743w) {
                ((C0743w) aiI).me(this.abP);
            }
            this.abN.addView(aiI);
            c0474aArr[i] = (C0474A) aiI;
            i++;
        }
        this.adE = c0474aArr;
        this.abM = (RotateImageView) this.abN.findViewById(R.id.setting);
        this.abJ = (C0744T) this.abN.findViewById(R.id.flash);
        if (this.abJ != null) {
            this.abJ.qu(this.adA);
        }
        this.abL = (ai) this.abN.findViewById(R.id.live_photo);
        this.abG = (ai) this.abN.findViewById(R.id.anti_shake);
        this.abI = (C0743w) this.abN.findViewById(R.id.delay_shoot);
        com.android.common.ui.aa aaVar = (com.android.common.ui.aa) this.abN.findViewById(R.id.camera_picker);
        if (aaVar != null) {
            this.adA.Ws(aaVar);
        }
        this.abK = (C0743w) this.abN.findViewById(R.id.hdr);
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            if (this.abJ != null) {
                this.abJ.qv(als());
            }
            if (this.abI != null) {
                this.abI.mn();
            }
            ail(true);
        }
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        if (this.abJ != null) {
            this.abJ.qw();
        }
        super.onPause();
    }

    public static C0666h aiE(ArrayList arrayList) {
        return new C0666h(1, arrayList);
    }

    public void aer(boolean z, long j, long j2) {
        if (getView() != null) {
            this.abO.clearAnimation();
            if (!z || j < 0) {
                alC();
                getView().setVisibility(0);
            } else {
                alD();
                if (!this.adF.isRunning()) {
                    if (this.adG != null) {
                        this.adG.cancel();
                    }
                    this.adF.cancel();
                    if (j2 > 0) {
                        this.adF.setStartDelay(j2);
                    }
                    this.adF.setDuration(j);
                    this.adF.start();
                }
            }
        }
    }

    public void aes(boolean z, long j, long j2) {
        if (getView() != null) {
            this.abO.clearAnimation();
            if (!z || j < 0) {
                alC();
                getView().setVisibility(4);
            } else {
                alE();
                if (!this.adG.isRunning()) {
                    if (this.adF != null) {
                        this.adF.cancel();
                    }
                    this.adG.cancel();
                    if (j2 > 0) {
                        this.adG.setStartDelay(j2);
                    }
                    this.adG.setDuration(j);
                    this.adG.start();
                }
            }
        }
    }

    public void aet() {
        ail(true);
    }

    public void aeu() {
        ail(false);
    }

    public void ahE() {
        if (getView() != null) {
            getView().setVisibility(8);
        }
    }

    public void ahF() {
        if (getView() != null) {
            getView().setVisibility(0);
        }
    }

    public void add(C0329e c0329e) {
        if (!(c0329e == null || this.abI == null)) {
            this.abI.mn();
        }
    }

    public void adh() {
        if (this.abM != null && this.abM.isClickable()) {
            this.abM.callOnClick();
        }
    }

    public void adg() {
        if (this.adA != null && this.abI != null) {
            if (this.adA.SY().ty()) {
                this.abI.setEnabled(true);
                this.abI.setClickable(true);
            } else {
                this.abI.setEnabled(false);
                this.abI.setClickable(false);
            }
            this.abI.mm(this.adA);
        }
    }

    public void ade() {
        if (this.adA != null && this.abJ != null) {
            if (!"-1".equals(this.adA.SY().tB()) || this.adA.SY().tx() || alA().Td().NY() || "point-measure".equals(this.adA.SY().tR()) || this.adA.SM().arD().Sz() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE || this.adA.Tv()) {
                this.abJ.setClickable(false);
                this.abJ.setEnabled(false);
            } else {
                this.abJ.setClickable(true);
                this.abJ.setEnabled(true);
            }
        }
    }

    public void adf() {
        if (this.adA != null && this.abK != null) {
            if ("off".equals(this.adA.SY().tQ()) && "-1".equals(this.adA.SY().tB()) && !this.adA.Tu() && !this.adA.Tv() && this.adA.SY().ty()) {
                this.abK.setClickable(true);
                this.abK.setEnabled(true);
            } else {
                this.abK.setClickable(false);
                this.abK.setEnabled(false);
            }
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (alq() == UIState.TOPBAR_SETTING_POPUP) {
            int i = 0;
            while (i < motionEvent.getPointerCount()) {
                if (C0616j.aqa(motionEvent.getX(i), motionEvent.getY(i), this.abO)) {
                    i++;
                } else {
                    aiG();
                    return true;
                }
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void aiG() {
        for (C0667i c0667i : this.abP) {
            if (c0667i.aiI() != null && (c0667i.aiI() instanceof C0743w)) {
                ((C0743w) c0667i.aiI()).mb();
            }
        }
    }

    public void ail(boolean z) {
        if (this.abP != null) {
            for (C0667i aiI : this.abP) {
                aiI.aiI().setClickable(z);
            }
        }
        if (z) {
            ade();
            adg();
            adf();
        }
    }

    public void Sk() {
        int i = 0;
        for (C0743w c0743w : new C0743w[]{this.abJ, this.abI, this.abK}) {
            if (c0743w != null) {
                c0743w.mm(this.adA);
            }
        }
        ai[] aiVarArr = new ai[]{this.abL};
        int length = aiVarArr.length;
        while (i < length) {
            ai aiVar = aiVarArr[i];
            if (aiVar != null) {
                aiVar.sf(this.adA);
            }
            i++;
        }
    }

    public void aiF(int i) {
        this.abO.startAnimation(AnimationUtils.loadAnimation(getActivity(), i));
    }

    public void aib() {
        ail(false);
    }

    public void ahS(boolean z, boolean z2) {
        if (z) {
            aes(z2, 100, -1);
            ail(false);
            return;
        }
        aer(z2, 150, 100);
        ail(true);
    }
}
