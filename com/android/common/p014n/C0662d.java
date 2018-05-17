package com.android.common.p014n;

import android.widget.Toast;
import com.android.camera.R;
import com.android.common.C0259A;
import com.android.common.appService.IDualCameraControl$DualCameraMode;
import com.android.common.ui.C0366P;
import com.p010a.C0090a;

class C0662d implements C0366P {
    final /* synthetic */ C0659a abA;

    private C0662d(C0659a c0659a) {
        this.abA = c0659a;
    }

    public void qf(boolean z) {
        this.abA.adA.VY(z);
    }

    public void qe() {
        if (this.abA.adA == null || this.abA.adA.SO()) {
            C0090a.bvo("BaseBottomBarFragment", "Appservice null: " + (this.abA.adA == null));
        } else {
            this.abA.aia();
        }
    }

    public void qg() {
        if (this.abA.adA != null && !this.abA.adA.SO()) {
            if (!this.abA.abm.isLongClickable()) {
                this.abA.aia();
            } else if (this.abA.adA.SY().tx()) {
                if (this.abA.adA.SM().arE()) {
                    C0259A.avE(this.abA.getActivity(), R.string.not_support_long_press);
                } else {
                    Toast.makeText(this.abA.getActivity(), this.abA.getString(R.string.not_support_long_press), 0).show();
                }
            } else if (this.abA.adA.SM().arD().Sz() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE) {
                if (this.abA.adA.SM().arE()) {
                    C0259A.avE(this.abA.getActivity(), R.string.bigaperture_not_support_long_press);
                } else {
                    Toast.makeText(this.abA.getActivity(), this.abA.getString(R.string.bigaperture_not_support_long_press), 0).show();
                }
            } else if (!this.abA.adA.Tv()) {
                this.abA.adA.VZ();
            } else if (this.abA.adA.SM().arE()) {
                C0259A.avE(this.abA.getActivity(), R.string.fusion_not_support_long_press);
            } else {
                Toast.makeText(this.abA.getActivity(), this.abA.getString(R.string.fusion_not_support_long_press), 0).show();
            }
        }
    }
}
