package com.android.camera;

import android.app.Activity;
import android.app.FragmentTransaction;
import com.android.common.appService.C0105L;
import com.android.common.appService.C0170a;
import com.android.common.appService.C0327b;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.p010a.C0090a;

public class C0171b extends C0170a {
    public C0171b(Activity activity, C0105L c0105l) {
        super(activity, c0105l);
    }

    public void aXu(int i, CameraMember cameraMember, CameraMember cameraMember2, C0329e c0329e) {
        CameraMember cameraMember3 = null;
        FragmentTransaction beginTransaction = this.OA.getFragmentManager().beginTransaction();
        if (this.OB != null) {
            cameraMember3 = this.OB.OF;
            if (this.OB.OF == cameraMember && this.OB.OD == i) {
                C0090a.bvo("CameraFamilyManager", "Member need to be show equals to Current display memeber. Do nothing, just return.");
                this.OB.OE.aiV(cameraMember2, cameraMember3, cameraMember);
                return;
            }
            this.OB.OE.aib();
            beginTransaction.remove(this.OB.OE);
        }
        if (this.OB != null) {
            C0090a.bvo("CameraFamilyManager", "switch member: (" + this.OB.OF + ", " + this.OB.OD + ") -> (" + cameraMember + ", " + i + ")");
        } else {
            C0090a.bvo("CameraFamilyManager", "switch member: (-1, -1) -> (" + cameraMember + ", " + i + ")");
        }
        c0329e.TE().Ls();
        c0329e.UV().uo(c0329e.SN(), i, cameraMember, c0329e.SM() != null ? c0329e.SM().arE() : false);
        c0329e.UV().ul(c0329e.SN(), i, cameraMember);
        c0329e.SM().asd();
        this.OB = new C0327b(this, i, cameraMember, this.OC.abA(i, cameraMember));
        if (this.OB != null) {
            beginTransaction.add(R.id.camera_fragment, this.OB.OE, "currentFragment");
        }
        beginTransaction.commitAllowingStateLoss();
        this.OB.OE.aiV(cameraMember2, cameraMember3, cameraMember);
        if (c0329e.SM().ary() != null) {
            c0329e.SM().ary().acL();
        }
        c0329e.UQ().XD(cameraMember3, cameraMember);
    }
}
