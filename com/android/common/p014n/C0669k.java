package com.android.common.p014n;

import android.app.AlertDialog.Builder;
import com.android.camera.R;
import com.android.common.C0668n;
import com.android.common.appService.CameraMember;
import com.android.common.camerastate.DeviceState;
import com.p010a.C0090a;

class C0669k implements C0668n {
    final /* synthetic */ C0117j acW;

    private C0669k(C0117j c0117j) {
        this.acW = c0117j;
    }

    private void akE(long j) {
        if (this.acW.alt() != DeviceState.SNAPSHOT_IN_PROGRESS) {
            this.acW.acv.setVisibility(0);
            this.acW.acP.setText(((int) (j / 1000)) + "");
        }
    }

    private void akD() {
        Builder builder = new Builder(this.acW.adA.SN());
        builder.setTitle(R.string.spaceIsLow_tip);
        builder.setMessage(R.string.spaceIsLow_content);
        builder.setPositiveButton(R.string.dialog_ok, null);
        builder.show();
    }

    public void akB(long j) {
        C0090a.m0d("AbstractFamilyMemberFragment", "onStart");
        if (this.acW.adA != null && this.acW.adA.SP() == CameraMember.NORMAL) {
            this.acW.Sr();
        }
        akE(j);
        this.acW.aiU(0);
        if (this.acW.ajB()) {
            this.acW.abU.aqB(true);
        } else {
            this.acW.abU.aqB(false);
        }
        this.acW.ajv();
    }

    public void akC(long j, long j2, int i) {
        akE(j);
        this.acW.aka(i);
    }

    public void onFinish() {
        C0090a.m0d("AbstractFamilyMemberFragment", "onFinish");
        if (this.acW.adA != null) {
            if (this.acW.adA.Tl()) {
                if (!(this.acW.acd != 0 || this.acW.acU == null || this.acW.ajB())) {
                    this.acW.acU.agw();
                }
                this.acW.adA.Tt();
                return;
            }
            C0090a.bvm("AbstractFamilyMemberFragment", "Enough storage: " + this.acW.adA.Tl() + "; stop interval");
            if (this.acW.abU != null) {
                this.acW.abU.stop();
            }
            akD();
        }
    }

    public void akA() {
        C0090a.m0d("AbstractFamilyMemberFragment", "onInterrupted");
        if (this.acW.acO == null || this.acW.acv == null) {
            C0090a.m1e("AbstractFamilyMemberFragment", "mShowInformationLayout " + this.acW.acO + " mLastTimeLayout " + this.acW.acv);
            return;
        }
        if (this.acW.abV != null && this.acW.abV.getVisibility() == 0) {
            this.acW.RC();
        }
        if (this.acW.acU != null) {
            this.acW.acU.stop();
        }
        this.acW.acO.setVisibility(8);
        this.acW.acv.setVisibility(8);
    }
}
