package com.android.clone;

import android.content.ContentValues;
import android.graphics.Bitmap;
import android.hardware.Camera.Size;
import android.location.Location;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.camerastate.UIState;
import com.android.common.custom.C0421M;
import com.android.common.exif.C0513e;
import com.android.common.exif.C0523o;
import com.android.common.p001l.C0623b;
import com.android.common.p001l.C0624c;
import com.android.common.p012e.C0458b;
import com.android.common.p014n.C0111p;
import com.p010a.C0090a;

public class C0247i extends C0111p implements C0245g {
    private C0241c aor = null;
    private C0244f aos = null;
    private int aot = 0;
    private int aou = 0;
    private int aov = 0;

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        C0090a.bvo("CloneFragment", "onCreateView");
        View inflate = layoutInflater.inflate(R.layout.clone_main_layout, viewGroup, false);
        if (inflate == null) {
            C0090a.bvo("CloneFragment", "view == null");
        }
        aAp(inflate);
        return inflate;
    }

    public C0247i(int i) {
        super(i);
    }

    public void aAl() {
        if (this.aos != null) {
            this.aos.ayK();
        }
    }

    private void aAp(View view) {
        aAo();
        this.aos = new C0244f(getActivity(), view, this, alo().KS());
        Size Gr = this.adA.Tn().Gr();
        this.aos.ayT(Gr.width, Gr.height, this.aov, this.aou);
        this.adE = this.aos.ayu();
    }

    public static C0247i aAk() {
        return new C0247i(1);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    private void aAo() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getActivity().getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.aov = displayMetrics.widthPixels;
        this.aou = displayMetrics.heightPixels;
    }

    public void onResume() {
        if (this.adB) {
            super.onResume();
            return;
        }
        if (this.aos != null) {
            this.aos.onResume();
        }
        super.onResume();
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        if (this.aor != null) {
            this.aor.cancel();
        }
        if (this.aos != null) {
            this.aos.onPause();
        }
        super.onPause();
    }

    public void onDestroy() {
        if (this.adB) {
            super.onDestroy();
            return;
        }
        super.onDestroy();
        if (this.aos != null) {
            this.aos.onDestroy();
        }
    }

    public void azX() {
    }

    public void aAa() {
        if (this.aor == null) {
            this.aor = new C0241c(getActivity(), R.layout.clone_specification_dialog, R.color.clone_dialog_bg);
        }
        this.aor.show();
    }

    public void azW() {
        this.adA.TA();
    }

    public void azZ(byte[] bArr, int i, int i2) {
        aAq(bArr, i, i2);
    }

    public void azY(boolean z) {
        if (alq() != UIState.CAMERA_FAMILY) {
            alr();
            alF();
            if (!z) {
                this.adA.TB();
                this.adA.TE().Lq(false);
            }
        }
    }

    public boolean RU(byte[] bArr) {
        C0458b.adi().adk();
        alz();
        alG();
        if (this.aos != null) {
            this.aos.ayJ(bArr);
        }
        return true;
    }

    public void aAm() {
        if (this.adA != null) {
            this.aot = this.adA.Tp();
        }
    }

    private void aAq(byte[] bArr, int i, int i2) {
        long currentTimeMillis = System.currentTimeMillis();
        String aoP = C0616j.aoP(currentTimeMillis);
        String ara = C0701s.ara(this.adA.UW());
        Location age = this.adA.Tq().age();
        ContentValues aAn = aAn(aoP, ara, currentTimeMillis, i, i2, age);
        if (C0616j.apd(this.adA) != 0) {
            Bitmap ape = C0616j.ape(bArr);
            this.adA.Ti().alX(new C0623b(this.adA, ape, aAr(age, i, i2), ara + "/", aoP + ".jpg", aAn, this.aot, new C0248j()));
        } else {
            this.adA.Ti().alX(new C0624c(this.adA, bArr, aAr(age, i, i2), ara + "/", aoP + ".jpg", aAn, this.aot, new C0248j()));
        }
        C0616j.apa(getActivity(), "clone", "clone");
    }

    private SparseArray aAr(Location location, int i, int i2) {
        if (this.adA == null || this.adA.Tn() == null) {
            return null;
        }
        float Gd = this.adA.Tn().Gd();
        float UU = this.adA.UU();
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(C0523o.BW, Short.valueOf(C0523o.BW(this.aot)));
        sparseArray.put(C0523o.BY, C0421M.dC().dD().br());
        sparseArray.put(C0523o.BZ, C0421M.dC().dD().bs());
        sparseArray.put(C0523o.Cc, new C0513e(UU, 0.01f));
        sparseArray.put(C0523o.Cs, new C0513e(Gd, 0.01f));
        if (this.aot == 0 || this.aot == 180) {
            sparseArray.put(C0523o.Cp, Integer.valueOf(i2));
            sparseArray.put(C0523o.Cq, Integer.valueOf(i));
        } else {
            sparseArray.put(C0523o.Cp, Integer.valueOf(i));
            sparseArray.put(C0523o.Cq, Integer.valueOf(i2));
        }
        if (location != null) {
            C0616j.apc(location.getLatitude(), location.getLongitude(), sparseArray);
        }
        return sparseArray;
    }

    private ContentValues aAn(String str, String str2, long j, int i, int i2, Location location) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("title", str);
        contentValues.put("datetaken", Long.valueOf(j));
        contentValues.put("_data", str2 + "/" + str + ".jpg");
        contentValues.put("orientation", Integer.valueOf(this.aot));
        if (this.aot == 0 || this.aot == 180) {
            contentValues.put("width", Integer.valueOf(i2));
            contentValues.put("height", Integer.valueOf(i));
        } else {
            contentValues.put("width", Integer.valueOf(i));
            contentValues.put("height", Integer.valueOf(i2));
        }
        if (location != null) {
            contentValues.put("latitude", Double.valueOf(location.getLatitude()));
            contentValues.put("longitude", Double.valueOf(location.getLongitude()));
        }
        return contentValues;
    }

    public boolean onBackPressed() {
        if (this.aos == null || !this.aos.onBackPressed()) {
            return super.onBackPressed();
        }
        return true;
    }

    protected void ahM() {
        super.ahM();
        if (this.aos != null) {
            C0090a.bvo("CloneFragment", "isNeedOpenPreview = " + this.aos.ayH());
            if (!this.aos.ayH()) {
                this.adA.TA();
            }
        }
    }

    public boolean Sc() {
        if (C0250l.aAx().aAz() != CloneStatus$Status.IDLE) {
            return true;
        }
        return super.Sc();
    }
}
