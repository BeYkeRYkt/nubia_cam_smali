package com.android.electronicfno;

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
import com.android.common.ui.RotateImageView;
import com.android.common.ui.ai;
import com.android.common.ui.ao;
import java.util.ArrayList;
import java.util.List;

public class C0830b extends C0117j {
    C0833d aXc;

    protected void ajq() {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(bnm());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        this.aXc = C0833d.bns();
        beginTransaction.add(R.id.family_member_content, this.aXc);
        this.abT = C0659a.ahB(null, aiK(), aiS());
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        this.aXc.bnt((C0659a) this.abT);
        ((C0659a) this.abT).ahC(this);
        beginTransaction.commitAllowingStateLoss();
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.aXc.all((C0112h) this.abS);
            this.aXc.all((C0112h) this.abT);
            this.aXc.all(this);
            if (this.abU == null) {
                aiL(2);
            }
            this.aXc.bnu(this.abU);
            this.aXc.bnv(new C0842n(this));
            aiO();
        }
    }

    protected void ajv() {
        super.ajv();
        if (this.acU != null && this.aXc != null && alu() == FunctionState.INTERVAL) {
            this.aXc.bnw(this.acU);
        }
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
            this.aXc.alm((C0112h) this.abS);
            this.aXc.alm((C0112h) this.abT);
            this.aXc.alm(this);
            aiT();
        }
    }

    public C0830b(int i) {
        super(i);
    }

    public static C0830b bnn() {
        return new C0830b(1);
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.abS, this.abT, this.aXc};
    }

    public boolean Sc() {
        if (this.aXc == null) {
            return false;
        }
        this.acv.setVisibility(8);
        return this.aXc.Sc();
    }

    public void Sf() {
        if (this.aXc != null) {
            this.aXc.bnx();
        }
        super.Sf();
    }

    public void Si(String str) {
        if (this.aXc != null && "stop".equals(str)) {
            this.aXc.bnx();
        }
        super.Si(str);
    }

    protected List aiK() {
        List arrayList = new ArrayList();
        if (!IndependenceUtil.afZ) {
            return null;
        }
        C0837h c0837h = new C0837h(this.adA);
        C0829a c0829a = new C0829a(this.adA);
        ao aoVar = new ao(this.adA);
        c0837h.ke(this.aXc);
        c0829a.ke(this.aXc);
        aoVar.ke(this.aXc);
        arrayList.add(c0837h);
        arrayList.add(c0829a);
        arrayList.add(aoVar);
        arrayList.add(new C0731C(this.adA));
        if (!C0421M.dC().dD().bD()) {
            arrayList.add(new C0748X(this.adA));
        }
        return arrayList;
    }

    protected List aiS() {
        return null;
    }

    protected void aka(int i) {
    }

    private ArrayList bnm() {
        ArrayList arrayList = new ArrayList();
        View rotateImageView = new RotateImageView(getActivity());
        rotateImageView.setImageResource(R.drawable.setting_icon);
        rotateImageView.setOnClickListener(new C0362k(this.adA.SU()));
        arrayList.add(new C0667i(R.id.setting, rotateImageView));
        rotateImageView = new C0743w(getActivity());
        rotateImageView.lX(aln("pref_camera_delay_shoot_key"), this.adD);
        rotateImageView.lY(alo().KM());
        arrayList.add(new C0667i(R.id.delay_shoot, rotateImageView));
        if (C0421M.dC().dD().bq() == 2) {
            rotateImageView = new ai(getActivity(), null);
            rotateImageView.sd(aln("pref_camera_anti_shake"));
            rotateImageView.se(alo().KQ());
            arrayList.add(new C0667i(R.id.anti_shake, rotateImageView));
        }
        rotateImageView = C0616j.apb(getActivity(), this.adA.SP().aan());
        if (rotateImageView != null) {
            arrayList.add(new C0667i(-1, rotateImageView));
        }
        return arrayList;
    }

    public void RG() {
        if (this.aXc != null) {
            this.aXc.bny();
        }
    }

    protected void ajH(int i, int i2, int i3, int i4) {
        super.ajH(i, i2, i3, i4);
        if (this.aXc != null) {
            this.aXc.setPreviewSize(i3 - i, i4 - i2);
        }
    }
}
