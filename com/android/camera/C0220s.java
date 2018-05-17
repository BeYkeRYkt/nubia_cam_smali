package com.android.camera;

import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0378d;
import com.android.common.camerastate.UIState;
import com.android.common.p027g.C0537c;
import com.android.common.ui.C0219n;
import com.p010a.C0090a;

final class C0220s implements C0219n {
    final /* synthetic */ C0199e aIZ;

    C0220s(C0199e c0199e) {
        this.aIZ = c0199e;
    }

    public void jI(int i, int i2) {
        if (i != i2) {
            long j;
            this.aIZ.aXS();
            CameraMember cameraMember = ((C0201g) this.aIZ.aIp.get(this.aIZ.aIe)).aIs;
            if (cameraMember == CameraMember.NONE && this.aIZ.aIb.aUS()) {
                j = 250;
            } else {
                j = C0537c.WG;
            }
            this.aIZ.aIe = i2;
            CameraMember cameraMember2 = ((C0201g) this.aIZ.aIp.get(this.aIZ.aIe)).aIs;
            CameraMember aZz = aZz(i2);
            C0090a.bvo("MemberScrollerManager", "onPageChange index: " + i2 + "; nextMember: " + aZz);
            if (cameraMember2 == CameraMember.NONE) {
                this.aIZ.aXZ();
                this.aIZ.aIg.sendEmptyMessage(3);
                this.aIZ.aXN(aZz);
                return;
            }
            this.aIZ.aIg.removeMessages(3);
            this.aIZ.aXX(false);
            boolean z = this.aIZ.aIa.SX().Kc() == UIState.CAMERA_FAMILY;
            this.aIZ.aIb.aUO();
            C0378d aYq = this.aIZ.aXE(aZz, this.aIZ.aIa.ST());
            if (this.aIZ.aXL(aYq, this.aIZ.aIa.ST(), aZz, this.aIZ.aIa.SP())) {
                this.aIZ.aXO(aZz, aYq, cameraMember);
            } else {
                this.aIZ.aXO(aZz, aYq, cameraMember);
                this.aIZ.aIm.m40r(false);
                this.aIZ.aIg.sendEmptyMessageDelayed(1, j);
            }
            if (z) {
                this.aIZ.aXM(true);
            }
        }
    }

    public void jH() {
    }

    public void jJ() {
    }

    private CameraMember aZz(int i) {
        if (i < 0 || i >= this.aIZ.aIp.size()) {
            throw new RuntimeException("Index is illegal");
        }
        CameraMember cameraMember = ((C0201g) this.aIZ.aIp.get(i)).aIs;
        if (cameraMember == CameraMember.NONE) {
            return CameraMember.aap(this.aIZ.aXD().getInt("scroll_switcher_seleleted_family", CameraMember.MULTIEXPOSURE.aan()));
        }
        return cameraMember;
    }

    public void jL(int i) {
    }

    public void jK(int i) {
    }

    public void jG(int i) {
        if (((C0201g) this.aIZ.aIp.get(i)).aIs == CameraMember.NONE) {
            this.aIZ.aWi();
        }
    }
}
