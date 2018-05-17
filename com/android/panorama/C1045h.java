package com.android.panorama;

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
import com.android.common.ui.RotateImageView;
import java.util.ArrayList;
import java.util.List;

public class C1045h extends C0117j {
    private C1047i aUD;

    public C1045h(int i) {
        super(i);
    }

    protected void ajq() {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(bkU());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        this.aUD = C1047i.bkW();
        beginTransaction.add(R.id.family_member_content, this.aUD);
        this.abT = C0659a.ahB(this.aUD, null, null);
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        ((C0659a) this.abT).ahC(this);
        beginTransaction.commitAllowingStateLoss();
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.aUD.all((C0112h) this.abS);
            this.aUD.all((C0112h) this.abT);
            this.aUD.all(this);
        }
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
            this.aUD.alm((C0112h) this.abS);
            this.aUD.alm((C0112h) this.abT);
            this.aUD.alm(this);
        }
    }

    protected List aiK() {
        return null;
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.abS, this.abT, this.aUD};
    }

    public static C1045h bkV() {
        return new C1045h(1);
    }

    public void Sf() {
        if (this.aUD == null || !this.aUD.bkX()) {
            super.Sf();
        }
    }

    public void Sh() {
        if (this.aUD == null || !this.aUD.bkX()) {
            super.Sf();
        }
    }

    protected void ajG(boolean z) {
        if (this.aUD != null) {
            this.aUD.bkY(z);
        }
    }

    public boolean RK() {
        return false;
    }

    private ArrayList bkU() {
        ArrayList arrayList = new ArrayList();
        View rotateImageView = new RotateImageView(getActivity());
        rotateImageView.setImageResource(R.drawable.setting_icon);
        rotateImageView.setOnClickListener(new C0362k(this.adA.SU()));
        arrayList.add(new C0667i(R.id.setting, rotateImageView));
        return arrayList;
    }
}
