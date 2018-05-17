package com.android.funeffect;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.android.camera.R;
import com.android.common.appService.C0341p;
import com.android.common.p014n.C0111p;
import com.p010a.C0090a;

public class C0864c extends C0111p {
    private static String TAG = "FunEffectListFragment";
    private C0341p aZJ = null;
    private boolean aZK = false;
    private boolean aZL = false;

    public C0864c(int i) {
        super(i);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        View inflate = layoutInflater.inflate(R.layout.fun_lists, viewGroup, false);
        bqG(inflate);
        this.aZK = false;
        return inflate;
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            if (this.aZK) {
                this.aZJ.YC(this.aZL);
            } else {
                this.aZJ.YC(true);
            }
            this.aZK = true;
        }
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
            boolean z;
            if (this.aZJ.YH()) {
                z = true;
            } else {
                z = this.aZJ.YZ();
            }
            this.aZL = z;
            this.aZJ.YD();
        }
    }

    private void bqG(View view) {
        this.aZJ = new C0341p(this.adA, alv().tp("pref_camera_ztemt_fun_effect"), view, R.id.effect_page, R.id.effect_grid_switch);
        this.aZJ.YE(new C0868g(this));
    }

    public static C0864c bqH() {
        return new C0864c(1);
    }

    protected void ajH(int i, int i2, int i3, int i4) {
        if (this.aZJ != null) {
            this.aZJ.YI(aly());
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.adC) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (this.aZJ == null || !this.aZJ.YH()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        C0090a.bvo(TAG, "Grid effect anim is Running, just consume the dipatch event");
        return true;
    }

    public boolean onBackPressed() {
        if (this.adC) {
            return super.onBackPressed();
        }
        if (this.aZJ != null) {
            return this.aZJ.onBackPressed();
        }
        return super.onBackPressed();
    }
}
