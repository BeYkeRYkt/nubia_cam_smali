package com.android.clone;

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
import com.p010a.C0090a;
import java.util.ArrayList;
import java.util.List;

public class C0240b extends C0117j {
    private C0247i amM = null;

    protected void ajq() {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(axW());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        this.amM = C0247i.aAk();
        beginTransaction.add(R.id.family_member_content, this.amM);
        this.abT = C0659a.ahB(null, null, null);
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        ((C0659a) this.abT).ahC(this);
        beginTransaction.commitAllowingStateLoss();
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.amM.all(this);
            this.amM.all((C0659a) this.abT);
            this.amM.all((C0112h) this.abS);
        }
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        this.amM.alm(this);
        this.amM.alm((C0659a) this.abT);
        this.amM.alm((C0112h) this.abS);
        super.onPause();
    }

    public C0240b(int i) {
        super(i);
    }

    public static C0240b axX() {
        return new C0240b(1);
    }

    public boolean RU(byte[] bArr) {
        return this.amM.RU(bArr);
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.abS, this.abT, this.amM};
    }

    public void Sf() {
        if (this.adC) {
            C0090a.m1e("CloneMemberFragment", "ignore performShutterButtonClick because fragment is pause");
            return;
        }
        if (this.abT != null && this.abT.isVisible()) {
            super.Sf();
        } else if (this.amM != null && this.amM.isVisible()) {
            this.amM.aAl();
        }
    }

    public void Sh() {
        if (this.adC) {
            C0090a.m1e("CloneMemberFragment", "ignore performShutterButtonLongClick because fragment is pause");
            return;
        }
        if (this.abT != null && this.abT.isVisible()) {
            super.Sf();
        } else if (this.amM != null && this.amM.isVisible()) {
            this.amM.aAl();
        }
    }

    public void RT() {
        if (this.abT != null && this.abT.isVisible()) {
            this.adA.TE().Lq(true);
            if (this.amM != null) {
                this.amM.aAm();
            }
        }
        super.RT();
    }

    public void Si(String str) {
        if (this.adC) {
            C0090a.m1e("CloneMemberFragment", "ignore performShutterButtonClick because fragment is pause");
            return;
        }
        if (this.abT != null && this.abT.isVisible()) {
            super.Si(str);
        }
    }

    protected List aiK() {
        return null;
    }

    private ArrayList axW() {
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

    public boolean Sc() {
        if (this.amM != null) {
            return this.amM.Sc();
        }
        return super.Sc();
    }
}
