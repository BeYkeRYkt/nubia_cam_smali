package com.android.pretty;

import android.app.FragmentTransaction;
import android.hardware.Camera.PictureCallback;
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
import java.util.ArrayList;
import java.util.List;

public class C1073b extends C0117j {
    private C1084p asj = null;
    private C1083m ask;
    private PictureCallback asl;
    private PictureCallback asm;

    public C1073b(int i) {
        super(i);
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
            this.ask.alm((C0112h) this.abS);
            this.ask.alm((C0112h) this.abT);
            this.ask.alm(this);
            alm((C0112h) this.abS);
            alm((C0112h) this.abT);
        }
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            if (this.abU == null) {
                aiL(2);
            }
            this.ask.all((C0112h) this.abS);
            this.ask.all((C0112h) this.abT);
            this.ask.all(this);
            all((C0112h) this.abS);
            all((C0112h) this.abT);
        }
    }

    protected void ajq() {
        this.asj = new C1084p(this.adA);
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(aFZ());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        this.ask = C1083m.aHU(this.asj);
        beginTransaction.add(R.id.family_member_content, this.ask);
        this.abT = C0659a.ahB(null, null, null);
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        ((C0659a) this.abT).ahC(this);
        beginTransaction.commitAllowingStateLoss();
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.abS, this.abT, this.ask};
    }

    public static C1073b aFX() {
        return new C1073b(1);
    }

    public void RT() {
        if (this.asj != null) {
            this.asj.aIt();
        }
    }

    public PictureCallback Ry() {
        if (this.asj == null || !this.asj.aIu()) {
            return null;
        }
        if (this.asm == null) {
            this.asm = new C1089v(this.asj);
        }
        return this.asm;
    }

    public PictureCallback Rx() {
        if (this.asj == null || !this.asj.aIu()) {
            return null;
        }
        if (this.asl == null) {
            this.asl = new C1081l(this.adA, this.asj);
        }
        return this.asl;
    }

    public boolean RU(byte[] bArr) {
        aiM(bArr);
        return super.RU(bArr);
    }

    public void Sf() {
        if (this.ask != null) {
            this.ask.aHV();
        }
        super.Sf();
    }

    private ArrayList aFZ() {
        ArrayList arrayList = new ArrayList();
        View rotateImageView = new RotateImageView(getActivity());
        rotateImageView.setImageResource(R.drawable.setting_icon);
        rotateImageView.setOnClickListener(new C0362k(this.adA.SU()));
        arrayList.add(new C0667i(R.id.setting, rotateImageView));
        aGb(arrayList);
        aGa(arrayList);
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
        return arrayList;
    }

    private void aGa(ArrayList arrayList) {
        if (C0421M.dC().dD().cE() && this.adA.ST().Fy()) {
            View c0743w = new C0743w(getActivity());
            c0743w.lX(aln("pref_pretty_switch"), this.adD);
            c0743w.lY(new C1091x(this));
            arrayList.add(new C0667i(-1, c0743w));
        }
    }

    private void aGb(ArrayList arrayList) {
        if (!C0616j.aoM(this.adA.SP(), this.adA.ST())) {
            IconListPreference aln = aln("pref_camera_backlight_flashmode_key");
            View c0744t;
            if (aln != null) {
                c0744t = new C0744T(getActivity());
                c0744t.lX(aln, this.adD);
                c0744t.lY(alo().KL());
                arrayList.add(new C0667i(R.id.flash, c0744t));
            } else {
                String str;
                if (this.adA.SQ() == C0384o.Jr().Js()) {
                    str = "pref_camera_flashmode_key";
                } else {
                    str = "pref_camera_front_flashmode_key";
                }
                aln = aln(str);
                if (aln != null) {
                    c0744t = new C0744T(getActivity());
                    c0744t.lX(aln, this.adD);
                    c0744t.lY(alo().KL());
                    arrayList.add(new C0667i(R.id.flash, c0744t));
                }
            }
        }
    }

    public boolean Sd(int i, int i2) {
        if (this.ask != null) {
            return this.ask.Sd(i, i2);
        }
        return false;
    }

    public C0002Q Rv() {
        if (aFY().Sz() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE) {
            return aFY().SA();
        }
        return super.Rv();
    }

    private C0000c aFY() {
        return ((ActivityBase) getActivity()).arD();
    }

    protected void aiN(boolean z) {
        super.aiN(z);
        if (this.ask != null) {
            this.ask.aHX(z);
        }
    }
}
