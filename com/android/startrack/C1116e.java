package com.android.startrack;

import android.app.FragmentTransaction;
import android.view.View;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.custom.C0421M;
import com.android.common.independentutil.IndependenceUtil;
import com.android.common.p014n.C0111p;
import com.android.common.p014n.C0117j;
import com.android.common.p014n.C0659a;
import com.android.common.p014n.C0666h;
import com.android.common.p014n.C0667i;
import com.android.common.p015f.C0112h;
import com.android.common.p023b.C0362k;
import com.android.common.ui.C0731C;
import com.android.common.ui.C0748X;
import com.android.common.ui.C0749Z;
import com.android.common.ui.RotateImageView;
import com.android.common.ui.ah;
import java.util.ArrayList;
import java.util.List;

public class C1116e extends C0117j {
    C1117f aKX;

    protected void ajq() {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(bbk());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        this.aKX = C1117f.bbn();
        beginTransaction.add(R.id.family_member_content, this.aKX);
        this.abT = C0659a.ahB(this.aKX, aiK(), aiS());
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        ((C0659a) this.abT).ahC(this);
        beginTransaction.commitAllowingStateLoss();
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.aKX.all((C0112h) this.abS);
            this.aKX.all((C0112h) this.abT);
            this.aKX.all(this);
        }
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
            this.aKX.alm((C0112h) this.abS);
            this.aKX.alm((C0112h) this.abT);
            this.aKX.alm(this);
        }
    }

    public C1116e(int i) {
        super(i);
    }

    public static C1116e bbl() {
        return new C1116e(1);
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.abS, this.abT, this.aKX};
    }

    public void Sf() {
        super.Sf();
        if (this.aKX != null) {
            this.aKX.bbo();
        }
    }

    public void Sh() {
        super.Sf();
        if (this.aKX != null) {
            this.aKX.bbo();
        }
    }

    public void Si(String str) {
        if (this.aKX != null && "stop".equals(str)) {
            this.aKX.bbo();
        }
    }

    protected List aiK() {
        List arrayList = new ArrayList();
        if (IndependenceUtil.afZ) {
            if (C0421M.dC().dD().cJ() && !C0421M.dC().dD().bW()) {
                int bv = C0421M.dC().dD().bv();
                if (bv > 60) {
                    ah ahVar = new ah(this.adA, 0, 9);
                    ah ahVar2 = new ah(this.adA, 1, 9);
                    ahVar.rR(ahVar2);
                    ahVar2.rR(ahVar);
                    arrayList.add(ahVar2);
                    arrayList.add(ahVar);
                } else {
                    arrayList.add(new ah(this.adA, 1, 9, bv));
                }
            }
            arrayList.add(new C0731C(this.adA));
            arrayList.add(new C0749Z(this.adA));
            arrayList.add(new C0748X(this.adA));
        } else {
            aiP(arrayList);
            aiQ(arrayList);
            aiR(arrayList);
        }
        return arrayList;
    }

    protected List aiS() {
        return null;
    }

    public boolean RJ() {
        if (this.aKX != null) {
            return this.aKX.bbp();
        }
        return super.RJ();
    }

    public boolean RK() {
        if (this.aKX != null) {
            return this.aKX.bbq();
        }
        return super.RK();
    }

    private ArrayList bbk() {
        ArrayList arrayList = new ArrayList();
        View rotateImageView = new RotateImageView(getActivity());
        rotateImageView.setImageResource(R.drawable.setting_icon);
        rotateImageView.setOnClickListener(new C0362k(this.adA.SU()));
        arrayList.add(new C0667i(R.id.setting, rotateImageView));
        rotateImageView = C0616j.apb(getActivity(), this.adA.SP().aan());
        if (rotateImageView != null) {
            arrayList.add(new C0667i(-1, rotateImageView));
        }
        return arrayList;
    }
}
