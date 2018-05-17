package com.android.videomaker;

import android.app.FragmentTransaction;
import android.content.Intent;
import android.view.View;
import com.android.camera.R;
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

public class C1197j extends C0117j {
    private final int aAd = 100;
    private C1201o aAe;

    protected void ajq() {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(aPB());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        this.aAe = C1201o.aPS();
        beginTransaction.add(R.id.family_member_content, this.aAe);
        this.abT = C0659a.ahB(this.aAe, null, null);
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        this.aAe.aPT(aPA(this.aAe));
        ((C0659a) this.abT).ahC(this);
        beginTransaction.commitAllowingStateLoss();
    }

    public C1197j(int i) {
        super(i);
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.aAe.all((C0112h) this.abS);
            this.aAe.all((C0112h) this.abT);
            this.aAe.all(this);
        }
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
            this.aAe.alm((C0112h) this.abS);
            this.aAe.alm((C0112h) this.abT);
            this.aAe.alm(this);
        }
    }

    public static C1197j aPC() {
        return new C1197j(1);
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.abS, this.abT, this.aAe};
    }

    protected List aiK() {
        return null;
    }

    private C1179a aPA(C1188b c1188b) {
        C1179a c1179a = new C1179a(alA(), c1188b);
        c1179a.aMG(100);
        c1179a.aMH(100);
        return c1179a;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (this.aAe != null) {
            this.aAe.onActivityResult(i, i2, intent);
        }
    }

    public void Sh() {
        if (this.aAe == null || !this.aAe.aPU()) {
            super.Sh();
        }
    }

    public void Sg(boolean z) {
        if (this.aAe == null || !this.aAe.aPV(z)) {
            super.Sg(z);
        }
    }

    private ArrayList aPB() {
        ArrayList arrayList = new ArrayList();
        View rotateImageView = new RotateImageView(getActivity());
        rotateImageView.setImageResource(R.drawable.setting_icon);
        rotateImageView.setOnClickListener(new C0362k(this.adA.SU()));
        arrayList.add(new C0667i(R.id.setting, rotateImageView));
        return arrayList;
    }
}
