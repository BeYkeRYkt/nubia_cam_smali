package com.android.objectclear;

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

public class C1027e extends C0117j {
    C1031i aJF;

    protected void ajq() {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(aZN());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        this.aJF = C1031i.aZP();
        beginTransaction.add(R.id.family_member_content, this.aJF);
        this.abT = C0659a.ahB(this.aJF, null, null);
        ((C0659a) this.abT).ahC(this);
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        beginTransaction.commitAllowingStateLoss();
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.aJF.all((C0112h) this.abS);
            this.aJF.all((C0112h) this.abT);
            this.aJF.all(this);
        }
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
            this.aJF.alm(this);
            this.aJF.alm((C0112h) this.abS);
            this.aJF.alm((C0112h) this.abT);
        }
    }

    public C1027e(int i) {
        super(i);
    }

    public static C1027e aZO() {
        return new C1027e(1);
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.abS, this.abT, this.aJF};
    }

    protected List aiK() {
        return null;
    }

    private ArrayList aZN() {
        ArrayList arrayList = new ArrayList();
        View rotateImageView = new RotateImageView(getActivity());
        rotateImageView.setImageResource(R.drawable.setting_icon);
        rotateImageView.setOnClickListener(new C0362k(this.adA.SU()));
        arrayList.add(new C0667i(R.id.setting, rotateImageView));
        return arrayList;
    }
}
