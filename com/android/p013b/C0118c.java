package com.android.p013b;

import android.app.FragmentTransaction;
import android.view.View;
import com.android.camera.R;
import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0384o;
import com.android.common.p014n.C0111p;
import com.android.common.p014n.C0117j;
import com.android.common.p014n.C0659a;
import com.android.common.p014n.C0666h;
import com.android.common.p014n.C0667i;
import com.android.common.p015f.C0112h;
import com.android.common.setting.IconListPreference;
import com.android.common.ui.C0744T;
import com.android.common.ui.aa;
import java.util.ArrayList;
import java.util.List;

public class C0118c extends C0117j {
    private C0120e aLu = null;

    public C0118c(int i) {
        super(i);
    }

    protected void ajq() {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        if (bcd().size() > 0) {
            this.abS = C0666h.aiE(bcd());
            beginTransaction.add(R.id.family_member_top_bar, this.abS);
        }
        this.abT = C0659a.ahB(null, null, null);
        beginTransaction.add(R.id.family_member_bottom_bar, this.abT);
        this.aLu = C0120e.bcf();
        beginTransaction.add(R.id.family_member_content, this.aLu);
        beginTransaction.commitAllowingStateLoss();
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.aLu.all(this);
            this.aLu.all((C0112h) this.abS);
            this.aLu.all((C0112h) this.abT);
        }
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
            this.aLu.alm(this);
            this.aLu.alm((C0112h) this.abS);
            this.aLu.alm((C0112h) this.abT);
        }
    }

    protected C0111p[] ajd() {
        return new C0111p[]{this.aLu, this.abS, this.abT};
    }

    public void Se() {
        if (this.aLu != null) {
            this.aLu.bcg();
        }
    }

    public static C0118c bce() {
        return new C0118c(1);
    }

    private ArrayList bcd() {
        View c0744t;
        ArrayList arrayList = new ArrayList();
        if (this.adA.SP() != CameraMember.FACTORYTEST) {
            IconListPreference aln = aln(C0384o.Jr().Ju()[this.adA.SQ()].facing == 1 ? "pref_camera_front_flashmode_key" : "pref_camera_flashmode_key");
            if (aln != null) {
                c0744t = new C0744T(getActivity());
                c0744t.lX(aln, this.adD);
                c0744t.lY(alo().KL());
                arrayList.add(new C0667i(R.id.flash, c0744t));
            } else if (C0384o.Jr().Ju()[this.adA.SQ()].facing == 1) {
                aln = aln("pref_camera_backlight_flashmode_key");
                if (aln != null) {
                    c0744t = new C0744T(getActivity());
                    c0744t.lX(aln, this.adD);
                    c0744t.lY(alo().KL());
                    arrayList.add(new C0667i(R.id.flash, c0744t));
                }
            }
        }
        if (this.adA.SP() != CameraMember.FACTORYTEST) {
            List ZM = this.adA.TJ().ZM(this.adA.SP());
            if (ZM != null && ZM.size() > 1) {
                c0744t = new aa(getActivity());
                c0744t.rz(ZM, R.drawable.ic_camera_picker, this.adA, "pref_camera_id_key");
                c0744t.rA(alo().KN());
                arrayList.add(new C0667i(R.id.camera_picker, c0744t));
            }
        }
        return arrayList;
    }

    public boolean RM() {
        if (super.RM()) {
            return true;
        }
        return this.aLu != null ? this.aLu.bch() : false;
    }
}
