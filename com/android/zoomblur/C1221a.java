package com.android.zoomblur;

import android.app.FragmentTransaction;
import android.view.View;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.p014n.C0111p;
import com.android.common.p014n.C0117j;
import com.android.common.p014n.C0659a;
import com.android.common.p014n.C0666h;
import com.android.common.p014n.C0667i;
import com.android.common.p023b.C0362k;
import com.android.common.ui.C0743w;
import com.android.common.ui.RotateImageView;
import java.util.ArrayList;

public class C1221a extends C0117j {
    private C1222b aOZ = null;

    public C1221a(int i) {
        super(i);
    }

    public static C1221a bfo() {
        return new C1221a(1);
    }

    protected void ajq() {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(bfn());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        this.aOZ = C1222b.bfp();
        beginTransaction.add(R.id.family_member_content, this.aOZ);
        this.abT = C0659a.ahB(null, null, null);
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        beginTransaction.commitAllowingStateLoss();
    }

    private ArrayList bfn() {
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

    protected C0111p[] ajd() {
        return new C0111p[]{this.abS, this.abT, this.aOZ};
    }

    public void acG() {
        super.acG();
        if (this.aOZ != null) {
            this.aOZ.bfq(false);
        }
    }

    public void acD() {
        super.acD();
        if (this.aOZ != null) {
            this.aOZ.bfq(true);
        }
    }
}
