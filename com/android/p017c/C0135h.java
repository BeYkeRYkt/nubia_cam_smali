package com.android.p017c;

import android.app.FragmentTransaction;
import android.view.View;
import com.android.camera.R;
import com.android.common.independentutil.IndependenceUtil;
import com.android.common.p014n.C0111p;
import com.android.common.p014n.C0117j;
import com.android.common.p014n.C0659a;
import com.android.common.p014n.C0666h;
import com.android.common.p014n.C0667i;
import com.android.common.p023b.C0362k;
import com.android.common.setting.IconListPreference;
import com.android.common.ui.C0744T;
import com.android.common.ui.C0748X;
import com.android.common.ui.C0749Z;
import com.android.common.ui.RotateImageView;
import java.util.ArrayList;
import java.util.List;

public class C0135h extends C0117j {
    C0131d aWT;

    public C0135h(int i) {
        super(i);
    }

    public static C0135h bnh() {
        return new C0135h(1);
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            aiL(2);
            aiO();
        }
    }

    protected void ajq() {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(bni());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        this.aWT = C0131d.bmg();
        beginTransaction.add(R.id.family_member_content, this.aWT);
        this.abT = C0659a.ahB(null, aiK(), aiS());
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        ((C0659a) this.abT).ahC(this);
        beginTransaction.commitAllowingStateLoss();
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.abS, this.abT, this.aWT};
    }

    protected List aiK() {
        List arrayList = new ArrayList();
        if (!IndependenceUtil.afZ) {
            return null;
        }
        arrayList.add(new C0749Z(this.adA));
        arrayList.add(new C0748X(this.adA));
        aiX(arrayList);
        return arrayList;
    }

    protected void ajG(boolean z) {
        if (this.aWT != null) {
            this.aWT.bmj(z);
        }
    }

    public void RT() {
        this.aWT.bmh();
        super.RT();
    }

    public void RG() {
        if (this.aWT != null) {
            this.aWT.bma();
        }
    }

    public void ov(boolean z, boolean z2) {
        super.ov(z, z2);
        this.aWT.bmi(z, z2);
    }

    public boolean RU(byte[] bArr) {
        aiM(bArr);
        return super.RU(bArr);
    }

    private ArrayList bni() {
        ArrayList arrayList = new ArrayList();
        View rotateImageView = new RotateImageView(getActivity());
        rotateImageView.setImageResource(R.drawable.setting_icon);
        rotateImageView.setOnClickListener(new C0362k(this.adA.SU()));
        arrayList.add(new C0667i(R.id.setting, rotateImageView));
        IconListPreference aln = aln("pref_camera_flashmode_key");
        if (aln != null) {
            View c0744t = new C0744T(getActivity());
            c0744t.lX(aln, this.adD);
            c0744t.lY(alo().KL());
            arrayList.add(new C0667i(R.id.flash, c0744t));
        }
        return arrayList;
    }
}
