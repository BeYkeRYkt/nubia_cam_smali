package com.android.dualcameracalibration;

import android.app.FragmentTransaction;
import com.android.camera.R;
import com.android.common.appService.C0002Q;
import com.android.common.p014n.C0111p;
import com.android.common.p014n.C0117j;
import com.android.common.p014n.C0659a;
import com.p010a.C0090a;

public class C0812b extends C0117j {
    private C0813c avT = null;
    private DualCameraCalibrationFragment avU = null;

    public C0812b(int i) {
        super(i);
    }

    public static C0812b aJK() {
        return new C0812b(1);
    }

    protected void ajq() {
        C0090a.m1e("DualCameraCalibration", "DualCameraCalibrationMemberFragment");
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abT = C0659a.ahB(null, null, null);
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        ((C0659a) this.abT).ahC(this);
        this.avU = DualCameraCalibrationFragment.aKe();
        beginTransaction.add(R.id.family_member_content, this.avU);
        beginTransaction.commitAllowingStateLoss();
        this.avT = new C0813c(this.adA, this.avU);
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.avU, this.abT};
    }

    public C0002Q Rv() {
        return this.avT;
    }
}
