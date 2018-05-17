package com.android.multiexposure;

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
import com.android.common.setting.IconListPreference;
import com.android.common.ui.C0744T;
import com.android.common.ui.RotateImageView;
import com.p010a.C0090a;
import java.util.ArrayList;
import java.util.List;

public class C0965a extends C0117j {
    final String TAG = "MultiExposureMemberFragment";
    C0974i alf;

    protected void ajq() {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(awb());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        this.alf = C0974i.awk();
        beginTransaction.add(R.id.family_member_content, this.alf);
        this.abT = C0659a.ahB(new C0978m(this.adA, this.alf), aiK(), null);
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        ((C0659a) this.abT).ahC(this);
        beginTransaction.commitAllowingStateLoss();
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.alf.all((C0112h) this.abS);
            this.alf.all((C0112h) this.abT);
            this.alf.all(this);
        }
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
            this.alf.alm((C0112h) this.abS);
            this.alf.alm((C0112h) this.abT);
            this.alf.alm(this);
        }
    }

    public C0965a(int i) {
        super(i);
    }

    public static C0965a awc() {
        return new C0965a(1);
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.abS, this.abT, this.alf};
    }

    public boolean RU(byte[] bArr) {
        if (this.alf != null) {
            return this.alf.RU(bArr);
        }
        return super.RU(bArr);
    }

    public void Sf() {
        if (this.adC) {
            C0090a.m1e("MultiExposureMemberFragment", "ignore performShutterButtonClick because fragment is pause");
            return;
        }
        if (this.abT != null && this.abT.isVisible()) {
            super.Sf();
        } else if (this.alf != null) {
            this.alf.awl();
        }
    }

    public void Sh() {
        if (this.adC) {
            C0090a.m1e("MultiExposureMemberFragment", "ignore performShutterButtonLongClick because fragment is pause");
            return;
        }
        if (this.abT != null && this.abT.isVisible()) {
            super.Sf();
        } else if (this.alf != null) {
            this.alf.awl();
        }
    }

    public void Si(String str) {
        if ("takepicture".equals(str)) {
            Sf();
        }
    }

    protected List aiK() {
        return null;
    }

    private ArrayList awb() {
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
