package com.android.normal;

import android.app.FragmentTransaction;
import android.view.View;
import com.android.camera.R;
import com.android.common.ActivityBase;
import com.android.common.C0616j;
import com.android.common.appService.C0000c;
import com.android.common.appService.C0002Q;
import com.android.common.appService.IDualCameraControl$DualCameraMode;
import com.android.common.cameradevice.C0384o;
import com.android.common.custom.C0421M;
import com.android.common.p014n.C0111p;
import com.android.common.p014n.C0117j;
import com.android.common.p014n.C0659a;
import com.android.common.p014n.C0666h;
import com.android.common.p014n.C0667i;
import com.android.common.p015f.C0112h;
import com.android.common.p023b.C0362k;
import com.android.common.setting.IconListPreference;
import com.android.common.ui.C0743w;
import com.android.common.ui.C0744T;
import com.android.common.ui.RotateImageView;
import com.android.common.ui.aa;
import com.android.common.ui.ai;
import com.p010a.C0090a;
import java.util.ArrayList;
import java.util.List;

public class C1009f extends C0117j {
    private static String TAG = "NormalMemberFragment";
    private C1005b aCA = null;
    private boolean aCB = false;
    private ai aCy = null;
    private ai aCz = null;

    public C1009f(int i, boolean z) {
        super(i);
        this.aCB = z;
    }

    protected void ajq() {
        List aiK;
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(aSS());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        if (this.aCB) {
            aiK = aiK();
        } else {
            aiK = null;
        }
        this.abT = C0659a.ahB(null, aiK, aiS());
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        this.aCA = C1005b.aSi(new C1021r(this));
        beginTransaction.add(R.id.family_member_content, this.aCA);
        ((C0659a) this.abT).ahC(this);
        beginTransaction.commitAllowingStateLoss();
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.abS, this.abT, this.aCA};
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.aCA.all(this);
            this.aCA.all((C0112h) this.abS);
            this.aCA.all((C0112h) this.abT);
            aiL(2);
            aiO();
            aSV();
        }
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
            this.aCA.alm(this);
            this.aCA.alm((C0112h) this.abS);
            this.aCA.alm((C0112h) this.abT);
            aiT();
            aSR().Su(true);
        }
    }

    public void Sk() {
        super.Sk();
        if (this.aCA != null) {
            this.aCA.Sk();
        }
    }

    public boolean RU(byte[] bArr) {
        aiM(bArr);
        if (this.aCA != null) {
            this.aCA.RU(bArr);
        }
        return super.RU(bArr);
    }

    public static C1009f aSQ(boolean z) {
        return new C1009f(1, z);
    }

    private ArrayList aSS() {
        ArrayList arrayList = new ArrayList();
        View rotateImageView = new RotateImageView(getActivity());
        rotateImageView.setImageResource(R.drawable.setting_icon);
        rotateImageView.setOnClickListener(new C0362k(this.adA.SU()));
        arrayList.add(new C0667i(R.id.setting, rotateImageView));
        if (this.adA.SQ() == C0384o.Jr().Js()) {
            rotateImageView = new C0743w(getActivity());
            rotateImageView.lX(aln(C0616j.apA()), this.adD);
            rotateImageView.lY(alo().KR());
            arrayList.add(new C0667i(R.id.hdr, rotateImageView));
        }
        aST(arrayList);
        if (!this.aCB && C0421M.dC().dD().ck() && C0421M.dC().dD().cj() && this.adA.SQ() == C0384o.Jr().Js()) {
            this.aCy = new ai(getActivity(), null);
            this.aCy.sd(aln("pref_live_photo_key"));
            this.aCy.se(new C1022s(this));
            arrayList.add(new C0667i(R.id.live_photo, this.aCy));
            Sp();
        }
        rotateImageView = new C0743w(getActivity());
        rotateImageView.lX(aln("pref_camera_delay_shoot_key"), this.adD);
        rotateImageView.lY(alo().KM());
        arrayList.add(new C0667i(R.id.delay_shoot, rotateImageView));
        List ZM = this.adA.TJ().ZM(this.adA.SP());
        if (ZM != null && ZM.size() > 1) {
            View aaVar = new aa(getActivity());
            aaVar.rz(ZM, R.drawable.ic_camera_picker, this.adA, "pref_camera_id_key");
            aaVar.rA(alo().KN());
            arrayList.add(new C0667i(R.id.camera_picker, aaVar));
        }
        if (this.aCB) {
            rotateImageView = C0616j.apb(getActivity(), this.adA.SP().aan());
            if (rotateImageView != null) {
                arrayList.add(new C0667i(-1, rotateImageView));
            }
        }
        return arrayList;
    }

    private void aST(ArrayList arrayList) {
        String str;
        if (this.adA.SQ() == C0384o.Jr().Js()) {
            str = "pref_camera_flashmode_key";
        } else {
            str = "pref_camera_front_flashmode_key";
        }
        IconListPreference aln = aln(str);
        if (aln != null) {
            View c0744t = new C0744T(getActivity());
            c0744t.lX(aln, this.adD);
            c0744t.lY(alo().KL());
            arrayList.add(new C0667i(R.id.flash, c0744t));
            return;
        }
        aln = aln("pref_camera_backlight_flashmode_key");
        if (aln != null) {
            c0744t = new C0744T(getActivity());
            c0744t.lX(aln, this.adD);
            c0744t.lY(alo().KL());
            arrayList.add(new C0667i(R.id.flash, c0744t));
        }
    }

    public void Sp() {
        if (this.aCy != null) {
            if (this.adA.SY().ty()) {
                this.aCy.setClickable(true);
                this.aCy.setEnabled(true);
            } else {
                this.aCy.setClickable(false);
                this.aCy.setEnabled(false);
            }
        }
    }

    public void alp(String str) {
        if (this.aCA != null && this.adA.Tu()) {
            this.aCA.alp(str);
        }
    }

    public boolean Sc() {
        C0090a.bvo(TAG, "onShutterBottonClicked");
        if (this.aCA != null && this.adA.Tu()) {
            return this.aCA.Sc();
        }
        float parseFloat = Float.parseFloat(this.adA.SY().tB());
        if (!this.aCB || this.aCA == null || parseFloat < 1.0f) {
            return false;
        }
        return this.aCA.Sc();
    }

    public void RB() {
    }

    public void RG() {
        if (this.aCA != null) {
            this.aCA.aSg();
        }
    }

    public void RY() {
        if (this.aCA != null) {
            this.aCA.aSl();
        }
    }

    protected void ajG(boolean z) {
        if (!z) {
            this.aCA.aSq();
        }
    }

    public void RA(boolean z) {
        if (this.aCA != null) {
            this.aCA.aRU(z);
        }
    }

    protected void aiN(boolean z) {
        super.aiN(z);
        if (!z) {
            if (this.adA.Tv()) {
                aSR().SH(true);
                this.aCA.aSt();
                return;
            }
            aSR().SH(false);
            this.aCA.aRW();
        }
    }

    private void aSV() {
        if (this.aCz != null) {
            if (this.adA.SY().tx() || !"-1".equals(this.adA.SY().tB())) {
                if ("on".equals(this.adA.SS().getString("pref_big_aperature_key", "off"))) {
                    aln("pref_big_aperature_key").va("off");
                    this.aCz.sf(this.adA);
                }
                this.aCz.setClickable(false);
                this.aCz.setEnabled(false);
            } else {
                this.aCz.setClickable(true);
                this.aCz.setEnabled(true);
            }
            ajO();
        }
    }

    protected void ajg() {
        super.ajg();
        aSV();
    }

    protected void ajZ() {
        super.ajZ();
        aSV();
    }

    public boolean Sd(int i, int i2) {
        if (this.aCA != null) {
            return this.aCA.Sd(i, i2);
        }
        return false;
    }

    public C0002Q Rv() {
        if (aSR() != null) {
            IDualCameraControl$DualCameraMode Sz = aSR().Sz();
            if ((Sz == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE || Sz == IDualCameraControl$DualCameraMode.DUAL_CAMERA_FUSION_MODE) && aSU()) {
                return aSR().SA();
            }
        }
        return super.Rv();
    }

    private boolean aSU() {
        String string = this.adA.SS().getString("pref_camera_ztemt_fun_effect", this.adA.Tb(R.string.pref_camera_ztemt_fun_effect_default));
        String string2 = this.adA.SS().getString("pref_camera_pretty_effect_key", this.adA.Tb(R.string.pref_camera_ztemt_fun_effect_default));
        if ("none".equals(string)) {
            return "none".equals(string2);
        }
        return false;
    }

    private C0000c aSR() {
        if (getActivity() != null) {
            return ((ActivityBase) getActivity()).arD();
        }
        return null;
    }
}
