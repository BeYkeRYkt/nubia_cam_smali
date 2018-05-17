package com.android.intervalometer;

import android.app.FragmentTransaction;
import android.view.View;
import com.android.camera.R;
import com.android.common.C0636m;
import com.android.common.p014n.C0111p;
import com.android.common.p014n.C0117j;
import com.android.common.p014n.C0659a;
import com.android.common.p014n.C0666h;
import com.android.common.p014n.C0667i;
import com.android.common.p015f.C0112h;
import com.android.common.p023b.C0362k;
import com.android.common.ui.RotateImageView;
import java.util.ArrayList;
import java.util.List;

public class C0929a extends C0117j {
    C0936h aOf;

    protected void ajq() {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(bek());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        this.aOf = C0936h.beI();
        beginTransaction.add(R.id.family_member_content, this.aOf);
        this.abT = C0659a.ahB(this.aOf, null, null);
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        ((C0659a) this.abT).ahC(this);
        beginTransaction.commitAllowingStateLoss();
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.aOf.all((C0659a) this.abT);
            this.aOf.all((C0112h) this.abS);
            if (this.abU == null) {
                this.abU = new C0636m(this.adA);
                if (this.abT != null && (this.abT instanceof C0659a)) {
                    ((C0659a) this.abT).ahD(this.abU);
                }
            }
            this.aOf.beJ(this.abU, this.adA);
            aiO();
        }
    }

    public void alL() {
        if (this.aOf != null) {
            this.aOf.alL();
        }
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
            this.aOf.alm((C0659a) this.abT);
            this.aOf.alm((C0112h) this.abS);
            this.abU.aqp(this.aOf);
        }
    }

    public C0929a(int i) {
        super(i);
    }

    public static C0929a bel() {
        return new C0929a(1);
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.abS, this.abT, this.aOf};
    }

    protected List aiK() {
        return null;
    }

    protected List aiS() {
        ArrayList arrayList = new ArrayList();
        new C0938j(this.adA).ke(this.aOf);
        return null;
    }

    public void Sf() {
        if (this.aOf == null || !this.aOf.beK()) {
            super.Sf();
        }
    }

    public void Sh() {
        if (this.aOf == null || !this.aOf.beK()) {
            super.Sf();
        }
    }

    public void Si(String str) {
        if (this.aOf == null || !"stop".equals(str) || !this.aOf.beK()) {
            super.Si(str);
        }
    }

    private ArrayList bek() {
        ArrayList arrayList = new ArrayList();
        View rotateImageView = new RotateImageView(getActivity());
        rotateImageView.setImageResource(R.drawable.setting_icon);
        rotateImageView.setOnClickListener(new C0362k(this.adA.SU()));
        arrayList.add(new C0667i(R.id.setting, rotateImageView));
        return arrayList;
    }
}
