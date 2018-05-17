package com.android.video;

import android.app.FragmentTransaction;
import android.view.View;
import com.android.camera.R;
import com.android.common.p014n.C0111p;
import com.android.common.p014n.C0117j;
import com.android.common.p014n.C0659a;
import com.android.common.p014n.C0666h;
import com.android.common.p014n.C0667i;
import com.android.common.p015f.C0112h;
import com.android.common.p023b.C0362k;
import com.android.common.setting.IconListPreference;
import com.android.common.ui.C0744T;
import com.android.common.ui.RotateImageView;
import com.android.common.ui.aa;
import java.util.ArrayList;
import java.util.List;

public class C1150c extends C0117j {
    private C1161n aPg;
    private boolean aPh = false;

    public C1150c(int i, boolean z) {
        super(i);
        this.aPh = z;
    }

    protected void ajq() {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(bfy());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        this.aPg = C1161n.bhc();
        beginTransaction.add(R.id.family_member_content, this.aPg);
        this.abT = C0659a.ahB(this.aPg, null, null);
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        ((C0659a) this.abT).ahC(this);
        beginTransaction.commitAllowingStateLoss();
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.aPg.all((C0112h) this.abS);
            this.aPg.all((C0112h) this.abT);
            this.aPg.all(this);
        }
    }

    protected List aiK() {
        return null;
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.abS, this.abT, this.aPg};
    }

    public static C1150c bfx(boolean z) {
        return new C1150c(1, z);
    }

    public void Sf() {
        if (this.aPg == null || !this.aPg.bhd()) {
            super.Sf();
        }
    }

    public void Sh() {
        if (this.aPg == null || !this.aPg.bhd()) {
            super.Sf();
        }
    }

    protected void aiN(boolean z) {
        this.aPg.bhe(z);
    }

    private ArrayList bfy() {
        ArrayList arrayList = new ArrayList();
        if (!this.adA.VN()) {
            View rotateImageView = new RotateImageView(getActivity());
            rotateImageView.setImageResource(R.drawable.setting_icon);
            rotateImageView.setOnClickListener(new C0362k(this.adA.SU()));
            arrayList.add(new C0667i(R.id.setting, rotateImageView));
        }
        IconListPreference aln = aln("pref_camera_video_flashmode_key");
        if (aln != null) {
            View c0744t = new C0744T(getActivity());
            c0744t.lX(aln, this.adD);
            c0744t.lY(alo().KL());
            arrayList.add(new C0667i(R.id.flash, c0744t));
        }
        List ZM = this.adA.TJ().ZM(this.adA.SP());
        if (ZM != null && ZM.size() > 1) {
            c0744t = new aa(getActivity());
            c0744t.rz(ZM, R.drawable.ic_camera_picker, this.adA, "pref_camera_id_key");
            c0744t.rA(alo().KN());
            arrayList.add(new C0667i(R.id.camera_picker, c0744t));
        }
        return arrayList;
    }

    public void RB() {
        if (this.aPg != null) {
            this.aPg.bhf();
        }
    }

    public void Sm() {
    }
}
