package com.android.camera.cameraFamily;

import android.app.Activity;
import android.app.FragmentTransaction;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.android.common.camerastate.C0404b;
import com.android.common.camerastate.UIState;
import com.android.common.p012e.C0458b;
import com.p010a.C0090a;

public class C0179f implements C0178k {
    private boolean aFA = false;
    private Activity aFs = null;
    private C0329e aFt = null;
    private C0181h aFu = null;
    private FrameLayout aFv = null;
    private C0404b aFw = null;
    private C0174b aFx = null;
    private int aFy = 8;
    private boolean aFz = false;

    public C0179f(Activity activity, C0329e c0329e) {
        this.aFs = activity;
        this.aFt = c0329e;
        this.aFw = c0329e.SX();
        aUL();
        aUQ();
    }

    private void aUL() {
        this.aFx = C0174b.aUg();
        this.aFx.aUh(this.aFs);
        this.aFx.aUr();
    }

    private void aUQ() {
        this.aFu = C0181h.aVd();
        this.aFu.aVe(this.aFx);
        this.aFu.aVf(this);
        this.aFx.aUi(this.aFu);
        this.aFv = (FrameLayout) this.aFs.findViewById(R.id.camera_family_manager);
        this.aFv.setVisibility(8);
    }

    public void aUM() {
        if (this.aFu == null || !this.aFu.isAdded()) {
            FragmentTransaction beginTransaction = this.aFs.getFragmentManager().beginTransaction();
            if (!(this.aFu.isAdded() || this.aFz)) {
                beginTransaction.add(R.id.camera_family_manager, this.aFu);
                this.aFz = true;
            }
            beginTransaction.commit();
            return;
        }
        C0090a.m1e("CameraFamily", "showCameraFamily mCameraFamilyFragment is Added()");
    }

    public boolean aUS() {
        return this.aFA;
    }

    public boolean aUR() {
        return this.aFu.aVg();
    }

    public boolean onBackPressed() {
        if (this.aFA && this.aFu.onBackPressed()) {
            return true;
        }
        return false;
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.aFu.dispatchTouchEvent(motionEvent);
    }

    public void aVa() {
        aUT("showFamilyPage");
        this.aFy = 0;
        if (!aUR()) {
            aUT("inner call showFamilyPage");
            this.aFu.aVh(true);
        }
        this.aFt.SU().Sq();
    }

    public void aUO() {
        aUT("hideFamilyPage");
        this.aFy = 8;
        if (!aUR()) {
            this.aFu.aVi(true);
        }
        this.aFt.SU().Sq();
    }

    public void aVb() {
        if (!(this.aFv == null || this.aFA || aUR())) {
            aUT("show CameraFamily IfNeed");
            this.aFu.aVh(false);
        }
        this.aFt.SU().Sq();
    }

    public void aUP() {
        if (!(this.aFv == null || !this.aFA || aUR())) {
            aUT("hideFamilySelectGrid");
            this.aFu.aVi(false);
        }
        this.aFt.SU().Sq();
    }

    public void aUZ(int i) {
        aUT("setFamilyPageVisibility: " + i);
        this.aFy = i;
        if (!aUR()) {
            this.aFv.setVisibility(this.aFy);
        }
    }

    private void aUY() {
        if (this.aFA) {
            this.aFw.Ke(UIState.CAMERA_FAMILY);
        } else {
            this.aFw.Kf(UIState.CAMERA_FAMILY);
        }
    }

    public void aVc() {
        if (this.aFu != null) {
            this.aFu.aVj();
        }
    }

    public void aUN(C0183j c0183j) {
        if (this.aFu != null) {
            this.aFu.aVk(c0183j);
        }
    }

    public void aUX() {
        aUT("onFamilyShowStart");
        this.aFv.setVisibility(0);
        this.aFA = true;
        aUY();
        this.aFu.setEnabled(true);
        C0458b.adi().adk();
    }

    public void aUW() {
        aUT("onFamilyShowEnd");
    }

    public void aUV() {
        aUT("onFamilyHideStart");
        this.aFA = false;
        aUY();
    }

    public void aUU() {
        aUT("onFamilyHideEnd");
        this.aFv.setVisibility(this.aFy);
    }

    private void aUT(String str) {
    }
}
