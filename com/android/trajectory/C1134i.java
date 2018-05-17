package com.android.trajectory;

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

public class C1134i extends C0117j {
    C1127b bbN;

    protected void ajq() {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(bta());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        this.bbN = C1127b.brE();
        beginTransaction.add(R.id.family_member_content, this.bbN);
        this.abT = C0659a.ahB(this.bbN, null, null);
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        ((C0659a) this.abT).ahC(this);
        beginTransaction.commitAllowingStateLoss();
    }

    public C1134i(int i) {
        super(i);
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.bbN.all((C0112h) this.abS);
            this.bbN.all((C0112h) this.abT);
            this.bbN.all(this);
        }
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
            this.bbN.alm((C0112h) this.abS);
            this.bbN.alm((C0112h) this.abT);
            this.bbN.alm(this);
        }
    }

    public static C1134i bsZ() {
        return new C1134i(1);
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.abS, this.abT, this.bbN};
    }

    protected List aiK() {
        return null;
    }

    public boolean RP() {
        return super.RP();
    }

    public void Sf() {
        if (this.bbN == null || !this.bbN.brI()) {
            super.Sf();
        }
    }

    private ArrayList bta() {
        ArrayList arrayList = new ArrayList();
        View rotateImageView = new RotateImageView(getActivity());
        rotateImageView.setImageResource(R.drawable.setting_icon);
        rotateImageView.setOnClickListener(new C0362k(this.adA.SU()));
        arrayList.add(new C0667i(R.id.setting, rotateImageView));
        return arrayList;
    }
}
