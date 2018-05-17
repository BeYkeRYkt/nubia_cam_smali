package com.android.slowshutter;

import android.app.FragmentTransaction;
import android.view.View;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.camerastate.FunctionState;
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
import com.android.common.ui.C0743w;
import com.android.common.ui.C0748X;
import com.android.common.ui.C0749Z;
import com.android.common.ui.RotateImageView;
import com.android.common.ui.ah;
import java.util.ArrayList;
import java.util.List;

public class C1098e extends C0117j {
    C1095b bcu;

    protected void ajq() {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(btB());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        this.abT = C0659a.ahB(null, aiK(), aiS());
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        this.bcu = C1095b.bth();
        beginTransaction.add(R.id.family_member_content, this.bcu);
        ((C0659a) this.abT).ahC(this);
        beginTransaction.commitAllowingStateLoss();
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.bcu.all((C0112h) this.abS);
            this.bcu.all((C0112h) this.abT);
            this.bcu.all(this);
            if (this.abU == null) {
                aiL(2);
            }
            this.bcu.bti(this.abU);
            aiO();
        }
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
            this.bcu.alm((C0112h) this.abS);
            this.bcu.alm((C0112h) this.abT);
            this.bcu.alm(this);
            aiT();
        }
    }

    public C1098e(int i) {
        super(i);
    }

    public static C1098e btA() {
        return new C1098e(1);
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.abS, this.abT, this.bcu};
    }

    public boolean Sc() {
        if (this.bcu == null) {
            return false;
        }
        this.acv.setVisibility(8);
        return this.bcu.Sc();
    }

    public boolean RU(byte[] bArr) {
        aiM(bArr);
        if (alu() == FunctionState.INTERVAL) {
            aiU(this.abU.aqy());
        }
        if (this.bcu != null) {
            return this.bcu.RU(bArr);
        }
        return super.RU(bArr);
    }

    protected List aiK() {
        List arrayList = new ArrayList();
        if (IndependenceUtil.afZ) {
            if (C0421M.dC().dD().cJ()) {
                int bv = C0421M.dC().dD().bv();
                String[] bz = C0421M.dC().dD().bz();
                if (bz != null) {
                    arrayList.add(new ah(this.adA, 1, bz));
                } else if (bv > 60) {
                    ah ahVar = new ah(this.adA, 0);
                    ah ahVar2 = new ah(this.adA, 1);
                    ahVar.rR(ahVar2);
                    ahVar2.rR(ahVar);
                    arrayList.add(ahVar2);
                    arrayList.add(ahVar);
                } else {
                    arrayList.add(new ah(this.adA, 1, -1, bv));
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

    protected void aka(int i) {
    }

    private ArrayList btB() {
        ArrayList arrayList = new ArrayList();
        View rotateImageView = new RotateImageView(getActivity());
        rotateImageView.setImageResource(R.drawable.setting_icon);
        rotateImageView.setOnClickListener(new C0362k(this.adA.SU()));
        arrayList.add(new C0667i(R.id.setting, rotateImageView));
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

    public void RG() {
        if (this.bcu != null) {
            this.bcu.btg();
        }
    }
}
