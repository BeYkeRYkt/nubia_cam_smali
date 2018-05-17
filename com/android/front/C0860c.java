package com.android.front;

import android.app.FragmentTransaction;
import android.hardware.Camera.Size;
import android.view.View;
import com.android.camera.R;
import com.android.common.custom.C0421M;
import com.android.common.p014n.C0111p;
import com.android.common.p014n.C0117j;
import com.android.common.p014n.C0659a;
import com.android.common.p014n.C0666h;
import com.android.common.p014n.C0667i;
import com.android.common.p023b.C0362k;
import com.android.common.p027g.C0535a;
import com.android.common.setting.IconListPreference;
import com.android.common.ui.C0743w;
import com.android.common.ui.C0744T;
import com.android.common.ui.RotateImageView;
import com.android.common.ui.aa;
import com.android.common.ui.ai;
import java.util.ArrayList;
import java.util.List;

public class C0860c extends C0117j {
    C0535a aNK;

    public C0860c(int i) {
        super(i);
    }

    protected void ajq() {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        this.abS = C0666h.aiE(bdX());
        beginTransaction.add(R.id.family_member_top_bar, this.abS);
        this.abT = C0659a.ahB(null, null, null);
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        ((C0659a) this.abT).ahC(this);
        beginTransaction.commitAllowingStateLoss();
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.abS, this.abT};
    }

    public static C0860c bdW() {
        return new C0860c(1);
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            bdY();
        }
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        if (this.aNK != null) {
            this.aNK.release();
            this.aNK = null;
        }
        super.onPause();
    }

    protected List aiK() {
        return null;
    }

    protected List aiS() {
        return null;
    }

    private ArrayList bdX() {
        View c0744t;
        ArrayList arrayList = new ArrayList();
        View rotateImageView = new RotateImageView(getActivity());
        rotateImageView.setImageResource(R.drawable.setting_icon);
        rotateImageView.setOnClickListener(new C0362k(this.adA.SU()));
        arrayList.add(new C0667i(R.id.setting, rotateImageView));
        IconListPreference aln = aln("pref_camera_front_flashmode_key");
        if (aln != null) {
            c0744t = new C0744T(getActivity());
            c0744t.lX(aln, this.adD);
            c0744t.lY(alo().KL());
            arrayList.add(new C0667i(R.id.flash, c0744t));
        } else {
            aln = aln("pref_camera_backlight_flashmode_key");
            if (aln != null) {
                c0744t = new C0744T(getActivity());
                c0744t.lX(aln, this.adD);
                c0744t.lY(alo().KL());
                arrayList.add(new C0667i(R.id.flash, c0744t));
            }
        }
        if (C0421M.dC().dD().cG()) {
            c0744t = new ai(getActivity(), null);
            if (C0421M.dC().dD().cv()) {
                aln = aln("pref_camera_zk_pretty");
            } else {
                aln = aln("pref_camera_doc_pretty");
            }
            c0744t.sd(aln);
            c0744t.se(new C0861d(this));
            arrayList.add(new C0667i(-1, c0744t));
        }
        rotateImageView = new C0743w(getActivity());
        rotateImageView.lX(aln("pref_camera_delay_shoot_key"), this.adD);
        rotateImageView.lY(alo().KM());
        arrayList.add(new C0667i(R.id.delay_shoot, rotateImageView));
        List ZM = this.adA.TJ().ZM(this.adA.SP());
        if (ZM != null && ZM.size() > 1) {
            c0744t = new aa(getActivity());
            c0744t.rz(ZM, R.drawable.ic_camera_picker, this.adA, "pref_camera_id_key");
            c0744t.rA(alo().KN());
            arrayList.add(new C0667i(R.id.camera_picker, c0744t));
        }
        return arrayList;
    }

    private void bdY() {
        if (this.adA.SY().tS()) {
            if (this.aNK == null) {
                Size Gv = this.adA.Tn().Gv();
                this.aNK = new C0535a(Gv.width, Gv.height, true, true);
                this.adA.UR().m26a(this.aNK);
            }
        } else if (this.aNK != null) {
            this.aNK.release();
            this.aNK = null;
        }
    }
}
