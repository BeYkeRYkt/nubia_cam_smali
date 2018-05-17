package com.android.p036e;

import android.app.FragmentTransaction;
import android.view.View;
import com.android.camera.R;
import com.android.common.ActivityBase;
import com.android.common.appService.C0000c;
import com.android.common.appService.C0002Q;
import com.android.common.p014n.C0111p;
import com.android.common.p014n.C0117j;
import com.android.common.p014n.C0659a;
import com.android.common.p014n.C0666h;
import com.android.common.p014n.C0667i;
import com.android.common.p023b.C0362k;
import com.android.common.ui.C0743w;
import com.android.common.ui.RotateImageView;
import java.util.ArrayList;

public class C0826d extends C0117j {
    private C0825c aZG = null;

    public C0826d(int i) {
        super(i);
    }

    protected void ajq() {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(bqF());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        this.abT = C0659a.ahB(null, null, null);
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        this.aZG = C0825c.bqA();
        beginTransaction.add(R.id.family_member_content, this.aZG);
        beginTransaction.commitAllowingStateLoss();
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.abS, this.abT, this.aZG};
    }

    private ArrayList bqF() {
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

    public C0002Q Rv() {
        if (bqE() != null) {
            return bqE().SA();
        }
        return super.Rv();
    }

    private C0000c bqE() {
        if (getActivity() != null) {
            return ((ActivityBase) getActivity()).arD();
        }
        return null;
    }

    public boolean Sd(int i, int i2) {
        if (this.aZG != null) {
            return this.aZG.Sd(i, i2);
        }
        return false;
    }

    public static C0826d bqD() {
        return new C0826d(1);
    }
}
