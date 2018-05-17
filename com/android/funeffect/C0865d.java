package com.android.funeffect;

import android.app.FragmentTransaction;
import android.view.View;
import com.android.camera.R;
import com.android.common.camerastate.FunctionState;
import com.android.common.independentutil.IndependenceUtil;
import com.android.common.p014n.C0111p;
import com.android.common.p014n.C0117j;
import com.android.common.p014n.C0659a;
import com.android.common.p014n.C0666h;
import com.android.common.p014n.C0667i;
import com.android.common.p015f.C0112h;
import com.android.common.p023b.C0362k;
import com.android.common.setting.IconListPreference;
import com.android.common.ui.C0366P;
import com.android.common.ui.C0744T;
import com.android.common.ui.RotateImageView;
import java.util.ArrayList;
import java.util.List;

public class C0865d extends C0117j {
    C0864c aZM;
    private C0366P aZN;

    protected void ajq() {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(bqM());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        this.aZM = C0864c.bqH();
        beginTransaction.add(R.id.family_member_content, this.aZM);
        this.abT = C0659a.ahB(this.aZN, aiK(), aiS());
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        ((C0659a) this.abT).ahC(this);
        beginTransaction.commitAllowingStateLoss();
    }

    public C0865d(int i) {
        super(i);
        if (!IndependenceUtil.afZ) {
            this.aZN = new C0866e(this);
        }
    }

    public static C0865d bqL() {
        return new C0865d(1);
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.aZM.all(this);
            this.aZM.all((C0112h) this.abS);
            this.aZM.all((C0112h) this.abT);
            ((C0112h) this.abS).aer(false, -1, -1);
            ((C0112h) this.abT).aer(false, -1, -1);
            aer(false, -1, -1);
        }
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
            this.aZM.alm(this);
            this.aZM.alm((C0112h) this.abS);
            this.aZM.alm((C0112h) this.abT);
        }
    }

    public boolean RU(byte[] bArr) {
        if (this.adC || alu() != FunctionState.INTERVAL || this.acU == null) {
            return super.RU(bArr);
        }
        this.acU.agw();
        return super.RU(bArr);
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.abS, this.abT, this.aZM};
    }

    protected List aiK() {
        return null;
    }

    private ArrayList bqM() {
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
