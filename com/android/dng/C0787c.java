package com.android.dng;

import android.app.FragmentTransaction;
import android.view.View;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0002Q;
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
import com.android.common.setting.IconListPreference;
import com.android.common.storagemanager.C0722e;
import com.android.common.storagemanager.StorageManager$StorageStatusType;
import com.android.common.ui.C0731C;
import com.android.common.ui.C0743w;
import com.android.common.ui.C0744T;
import com.android.common.ui.C0748X;
import com.android.common.ui.C0749Z;
import com.android.common.ui.RotateImageView;
import com.android.common.ui.ah;
import com.p010a.C0090a;
import java.util.ArrayList;
import java.util.List;

public class C0787c extends C0117j {
    private C0002Q aMb = null;
    private C0792h aMc = null;

    public C0787c(int i) {
        super(i);
    }

    protected void ajq() {
        C0002Q c0785a;
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(bcy());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        this.abT = C0659a.ahB(null, aiK(), aiS());
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        if (C0421M.dC().dD().cf()) {
            this.aMc = C0792h.bdc();
            beginTransaction.add(R.id.family_member_content, this.aMc);
        }
        ((C0659a) this.abT).ahC(this);
        beginTransaction.commitAllowingStateLoss();
        if (C0616j.ahq) {
            c0785a = new C0785a(this.adA);
        } else {
            c0785a = new C0797m(this.adA);
        }
        this.aMb = c0785a;
    }

    protected C0111p[] ajd() {
        if (this.aMc != null) {
            return new C0111p[]{this.abS, this.abT, this.aMc};
        }
        return new C0111p[]{this.abS, this.abT};
    }

    public static C0787c bcA() {
        return new C0787c(1);
    }

    public C0002Q Rv() {
        return this.aMb;
    }

    private ArrayList bcy() {
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

    protected List aiK() {
        if (!C0421M.dC().dD().cf()) {
            return super.aiK();
        }
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

    public void onResume() {
        super.onResume();
        if (!(this.adB || this.aMc == null)) {
            this.aMc.all((C0112h) this.abS);
            this.aMc.all((C0112h) this.abT);
            this.aMc.all(this);
            if (this.abU == null) {
                aiL(2);
            }
            this.aMc.bdd(this.abU);
            aiO();
        }
    }

    public void onPause() {
        super.onPause();
        if (!(this.adB || this.aMc == null)) {
            this.aMc.alm((C0112h) this.abS);
            this.aMc.alm((C0112h) this.abT);
            this.aMc.alm(this);
            aiT();
        }
    }

    public boolean Sc() {
        if (!bcz()) {
            return true;
        }
        if (this.aMc != null) {
            return this.aMc.Sc();
        }
        return false;
    }

    public boolean RU(byte[] bArr) {
        boolean z = false;
        if (this.aMc != null) {
            z = this.aMc.RU(bArr);
        }
        if (alu() == FunctionState.INTERVAL) {
            aiM(bArr);
            aiU(this.aMc.aMI);
        }
        return !z ? super.RU(bArr) : true;
    }

    protected void aka(int i) {
    }

    public void RG() {
        if (this.aMc != null) {
            this.aMc.bde();
        }
    }

    private boolean bcz() {
        if (this.adC) {
            C0090a.m1e("DngMemberFragment", "fragment is paused or not resume");
            return false;
        }
        C0722e Ti = this.adA.Ti();
        if (Ti.alZ()) {
            StorageManager$StorageStatusType ama = Ti.ama(62914560, false);
            if (ama == StorageManager$StorageStatusType.CAN_ADD_REQUEST || (ama == StorageManager$StorageStatusType.OUT_OF_MEMORY && C0616j.aoW(62914560))) {
                return true;
            }
            C0090a.m1e("DngMemberFragment", "fail with " + ama);
            return false;
        }
        C0090a.m1e("DngMemberFragment", "storage queue size > 0");
        return false;
    }

    public boolean RK() {
        return false;
    }

    public void acG() {
        super.acG();
        if (this.aMc != null) {
            this.aMc.bdf(true);
        }
    }

    public void acD() {
        super.acD();
        if (this.aMc != null) {
            this.aMc.bdf(false);
        }
    }
}
