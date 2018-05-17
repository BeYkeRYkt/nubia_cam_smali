package com.android.triaxial;

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
import com.android.common.ui.RotateImageView;
import com.android.common.ui.aa;
import java.util.ArrayList;
import java.util.List;

public class C1145d extends C0117j {
    C1144c aOe;

    protected void ajq() {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(bej());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        this.abT = C0659a.ahB(null, aiK(), aiS());
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        this.aOe = C1144c.bef();
        beginTransaction.add(R.id.family_member_content, this.aOe);
        ((C0659a) this.abT).ahC(this);
        beginTransaction.commitAllowingStateLoss();
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.aOe.all((C0112h) this.abS);
            this.aOe.all((C0112h) this.abT);
            this.aOe.all(this);
        }
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
            this.aOe.alm((C0112h) this.abS);
            this.aOe.alm((C0112h) this.abT);
            this.aOe.alm(this);
        }
    }

    public C1145d(int i) {
        super(i);
    }

    public static C1145d bei() {
        return new C1145d(1);
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.abS, this.abT, this.aOe};
    }

    private ArrayList bej() {
        ArrayList arrayList = new ArrayList();
        View rotateImageView = new RotateImageView(getActivity());
        rotateImageView.setImageResource(R.drawable.setting_icon);
        rotateImageView.setOnClickListener(new C0362k(this.adA.SU()));
        arrayList.add(new C0667i(R.id.setting, rotateImageView));
        List ZM = this.adA.TJ().ZM(this.adA.SP());
        if (ZM != null && ZM.size() > 1) {
            View aaVar = new aa(getActivity());
            aaVar.rz(ZM, R.drawable.ic_camera_picker, this.adA, "pref_camera_id_key");
            aaVar.rA(alo().KN());
            arrayList.add(new C0667i(R.id.camera_picker, aaVar));
        }
        rotateImageView = C0616j.apb(getActivity(), this.adA.SP().aan());
        if (rotateImageView != null) {
            arrayList.add(new C0667i(-1, rotateImageView));
        }
        return arrayList;
    }

    protected List aiS() {
        return null;
    }

    protected List aiK() {
        return null;
    }

    public boolean Sc() {
        if (this.aOe != null) {
            return this.aOe.Sc();
        }
        return false;
    }

    public void Sf() {
        if (this.aOe == null || !this.aOe.beg()) {
            super.Sf();
        }
    }
}
