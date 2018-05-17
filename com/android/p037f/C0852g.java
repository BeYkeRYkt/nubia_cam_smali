package com.android.p037f;

import android.app.FragmentTransaction;
import android.os.Bundle;
import android.view.View;
import com.android.camera.R;
import com.android.common.appService.C0002Q;
import com.android.common.p014n.C0111p;
import com.android.common.p014n.C0117j;
import com.android.common.p014n.C0659a;
import com.android.common.p014n.C0666h;
import com.android.common.p014n.C0667i;
import com.android.common.p015f.C0112h;
import com.android.common.p023b.C0362k;
import com.android.common.ui.C0743w;
import com.android.common.ui.RotateImageView;
import com.p010a.C0090a;
import java.util.ArrayList;

public class C0852g extends C0117j {
    private C0846a ban;
    private C0850e bao;
    private C0847b bap;

    public C0852g(int i) {
        super(i);
    }

    protected void ajq() {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(bre());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        this.ban = new C0846a(1);
        beginTransaction.add(R.id.family_member_content, this.ban);
        this.abT = C0659a.ahB(new C0854i(this), null, null);
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        beginTransaction.commitAllowingStateLoss();
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.abS, this.ban, this.abT};
    }

    public C0002Q Rv() {
        if (this.bao == null) {
            this.bao = new C0850e(this.adA, this.bap);
        }
        return this.bao;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!this.adB) {
            this.bap = new C0847b(this.adA, new C0853h(this));
            this.bap.start();
        }
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            all((C0112h) this.abS);
            all((C0112h) this.abT);
        }
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        alm((C0112h) this.abS);
        alm((C0112h) this.abT);
        super.onPause();
    }

    public void onDestroy() {
        if (this.adB) {
            super.onDestroy();
            return;
        }
        try {
            this.bap.bqT();
            this.bap.join();
        } catch (InterruptedException e) {
            C0090a.m0d("Photo3DMemberFragment", "Photo3DThread " + e.getMessage());
        }
        super.onDestroy();
    }

    private ArrayList bre() {
        ArrayList arrayList = new ArrayList();
        View rotateImageView = new RotateImageView(getActivity());
        rotateImageView.setImageResource(R.drawable.setting_icon);
        rotateImageView.setOnClickListener(new C0362k(this.adA.SU()));
        arrayList.add(new C0667i(R.id.setting, rotateImageView));
        rotateImageView = new C0743w(getActivity());
        rotateImageView.lX(aln("pref_camera_delay_shoot_key"), this.adD);
        rotateImageView.lY(alo().KM());
        arrayList.add(new C0667i(R.id.delay_shoot, rotateImageView));
        return arrayList;
    }
}
