package com.android.lightpainting;

import android.app.FragmentTransaction;
import android.view.View;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.p014n.C0111p;
import com.android.common.p014n.C0117j;
import com.android.common.p014n.C0659a;
import com.android.common.p014n.C0666h;
import com.android.common.p014n.C0667i;
import com.android.common.p015f.C0112h;
import com.android.common.p023b.C0362k;
import com.android.common.ui.C0743w;
import com.android.common.ui.C0744T;
import com.android.common.ui.RotateImageView;
import java.util.ArrayList;
import java.util.List;

public class C0942c extends C0117j {
    C0943d aYj;

    protected void ajq() {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(boK());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        this.aYj = C0943d.boM();
        beginTransaction.add(R.id.family_member_content, this.aYj);
        this.abT = C0659a.ahB(null, aiK(), aiS());
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        ((C0659a) this.abT).ahC(this);
        beginTransaction.commitAllowingStateLoss();
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.aYj.all((C0112h) this.abS);
            this.aYj.all((C0112h) this.abT);
            this.aYj.all(this);
        }
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
            this.aYj.alm((C0112h) this.abS);
            this.aYj.alm((C0112h) this.abT);
            this.aYj.alm(this);
        }
    }

    public C0942c(int i) {
        super(i);
    }

    public static C0942c boL() {
        return new C0942c(1);
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.abS, this.abT, this.aYj};
    }

    public boolean Sc() {
        if (this.aYj != null) {
            return this.aYj.Sc();
        }
        return false;
    }

    public void Sf() {
        if (this.aYj != null) {
            this.aYj.boN();
        }
        super.Sf();
    }

    public void Sh() {
        if (this.aYj != null) {
            this.aYj.boN();
        }
        super.Sf();
    }

    public void Si(String str) {
        if (this.aYj != null && "stop".equals(str)) {
            this.aYj.boN();
        }
        super.Si(str);
    }

    public void acG() {
        super.acG();
        this.aYj.boO(false);
    }

    public void acD() {
        super.acD();
        this.aYj.boO(true);
    }

    protected List aiK() {
        return null;
    }

    private ArrayList boK() {
        ArrayList arrayList = new ArrayList();
        View rotateImageView = new RotateImageView(getActivity());
        rotateImageView.setImageResource(R.drawable.setting_icon);
        rotateImageView.setOnClickListener(new C0362k(this.adA.SU()));
        arrayList.add(new C0667i(R.id.setting, rotateImageView));
        rotateImageView = new C0744T(getActivity());
        rotateImageView.lX(aln("pref_camera_flashmode_for_lightpainting_key"), this.adD);
        rotateImageView.lY(alo().KL());
        arrayList.add(new C0667i(R.id.flash, rotateImageView));
        rotateImageView = new C0743w(getActivity());
        rotateImageView.lX(aln("pref_camera_delay_shoot_key"), this.adD);
        rotateImageView.lY(alo().KM());
        arrayList.add(new C0667i(R.id.delay_shoot, rotateImageView));
        rotateImageView = C0616j.apb(getActivity(), this.adA.SP().aan());
        if (rotateImageView != null) {
            arrayList.add(new C0667i(-1, rotateImageView));
        }
        return arrayList;
    }
}
