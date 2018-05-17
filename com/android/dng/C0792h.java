package com.android.dng;

import android.app.AlertDialog;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.android.camera.R;
import com.android.common.C0116o;
import com.android.common.C0616j;
import com.android.common.C0636m;
import com.android.common.C0726t;
import com.android.common.C0727u;
import com.android.common.appService.C0339n;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.custom.C0421M;
import com.android.common.p012e.C0458b;
import com.android.common.p014n.C0111p;
import com.android.common.p014n.C0117j;
import com.android.common.p014n.C0659a;
import com.android.common.p015f.C0112h;
import com.android.common.ui.MultiFunctionImageView;
import com.android.common.ui.MultiFunctionImageView.Function;
import com.android.common.ui.RotateImageView;
import com.p010a.C0090a;

public class C0792h extends C0111p implements C0116o, C0727u {
    int aMI = 0;
    private final int aMJ = Color.argb(255, 198, 203, 209);
    private final int aMK = Color.argb(255, 255, 255, 255);
    private boolean aML = false;
    private RelativeLayout aMM;
    private RotateImageView aMN;
    private C0789e aMO;
    private ImageView aMP;
    private C0636m aMQ = null;
    private C0726t aMR = null;
    private boolean aMS = true;
    private AlertDialog aMT;
    private boolean aMU = false;
    private int aMV = C0616j.aoT(14);
    private int aMW = C0616j.aoT(9);
    private C0794j aMX;
    private int aMY = 0;
    private MultiFunctionImageView aMZ;
    private RelativeLayout aNa = null;
    private C0339n aNb;
    private C0793i aNc = new C0793i(this);

    public C0792h(int i) {
        super(i);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        View inflate = layoutInflater.inflate(R.layout.dng_fragment, viewGroup, false);
        bdk(inflate);
        return inflate;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!this.adB) {
            this.aNb = new C0339n(getActivity());
            this.aMV = getActivity().getResources().getDimensionPixelSize(R.dimen.progress_num_size);
            this.aMW = getActivity().getResources().getDimensionPixelSize(R.dimen.progress_text_size);
        }
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            ail(true);
            this.aMU = false;
            this.aML = false;
            this.adA.Wi();
            bdo();
            bde();
            if (this.aMO != null) {
                this.aMO.bcF();
            }
        }
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        bdo();
        this.aMU = true;
        this.aNc.removeMessages(1);
        if (this.aMT != null) {
            this.aMT.dismiss();
            this.aMT = null;
        }
        if (this.aMO != null) {
            this.aMO.bcK();
        }
        super.onPause();
    }

    private void bdk(View view) {
        bdi(view);
        this.aMZ = (MultiFunctionImageView) view.findViewById(R.id.stopButtonView);
        this.aMP = (ImageView) view.findViewById(R.id.image_view);
        bdj(view);
    }

    private void bdj(View view) {
        if (C0421M.dC().dD().bd()) {
            ((ViewStub) view.findViewById(R.id.drawer_view_stub)).inflate();
            this.aMO = new C0789e(view, this.adA, new C0809y(this));
            return;
        }
        this.aMR = new C0726t(view, als(), this);
    }

    private void bdp() {
        C0458b.adi().adl();
        this.adD.JY(FunctionState.SWITCHING_CAMERA);
        this.adA.WY(this.adA.UN().FF(), new C0810z(this));
    }

    private void bdl() {
        SharedPreferences als = als();
        alv().tp("pref_camera_iso_key").va("auto");
        if (als.getInt("maf_key", -1) != -1) {
            als.edit().putInt("maf_key", -1).apply();
        }
        this.adA.SU().Sj();
    }

    private void bdi(View view) {
        this.aNa = (RelativeLayout) view.findViewById(R.id.stopBottombarLayout);
        this.aNa.setVisibility(8);
        this.aMM = (RelativeLayout) view.findViewById(R.id.btn_cancel);
        this.aMN = (RotateImageView) view.findViewById(R.id.btn_cancel_icon);
        this.aMM.setOnClickListener(new C0783C(this));
    }

    private void bdh() {
        bdg();
    }

    public static C0792h bdc() {
        return new C0792h(1);
    }

    protected void ain(int i, boolean z) {
        super.ain(i, z);
        this.aMY = i;
        if (this.aMO != null) {
            this.aMO.fc(i, z);
        }
    }

    private void bdr() {
        if (this.aMX != null) {
            this.aMX.bdH();
            try {
                this.aMX.join();
            } catch (InterruptedException e) {
                C0090a.m1e("DngFragment", "InterruptedException when mProgressThread.join() " + e.getMessage());
            }
            this.aNc.removeMessages(1);
            this.aMX = null;
        }
    }

    public boolean onBackPressed() {
        if (this.aML || this.aMX == null || alt() != DeviceState.SNAPSHOT_IN_PROGRESS) {
            return super.onBackPressed();
        }
        if (this.aNb.Yx(1)) {
            bdg();
        }
        return true;
    }

    public boolean Sc() {
        this.adA.Tj(true);
        if (!"-1".equals(this.adA.SY().tB())) {
            bdn();
            if (this.adA.SX().JZ() != FunctionState.INTERVAL) {
                this.adA.Wb(2);
            }
        }
        C0616j.apa(getActivity(), "slowshutter_1", "DngFragment");
        return false;
    }

    public void bdd(C0636m c0636m) {
        this.aMQ = c0636m;
    }

    private void bdg() {
        bdr();
        this.adA.Un(new C0784D(this));
    }

    private void bdn() {
        this.aMP.setVisibility(0);
        this.aNa.setVisibility(0);
        this.aMZ.setVisibility(0);
        this.aMZ.lw(Function.PROGRESS);
        alz();
        this.aMX = new C0794j();
        this.aMX.start();
        if (this.aMO != null) {
            this.aMO.bcE();
        }
    }

    void bdo() {
        if (!this.aMU && alq() != UIState.CAMERA_FAMILY) {
            bdr();
            bdm(false);
            this.aMP.setVisibility(8);
            this.aNa.setVisibility(8);
            this.aMZ.setVisibility(8);
            this.aMZ.lx(0, false);
            alr();
            if (!(this.aMO == null || this.aML)) {
                this.aMO.bcM();
            }
        }
    }

    public void bdm(boolean z) {
        if (this.aMZ != null) {
            if (z) {
                this.aNc.removeMessages(1);
                this.aMZ.setVisibility(0);
                this.aMZ.lw(Function.WAIT);
            } else {
                this.aMZ.setVisibility(8);
            }
        }
    }

    public boolean RU(byte[] bArr) {
        bdo();
        if (this.adA.SX().JZ() != FunctionState.INTERVAL) {
            this.adA.Tj(false);
        }
        if (this.aML) {
            this.aMI++;
        }
        return false;
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public void bde() {
        Object obj = 1;
        if (!(this.adA.SX().JZ() == FunctionState.SPEED_MULTISHOOTING || this.adA.SX().JZ() == FunctionState.QUALITY_MULTISHOOTING)) {
            obj = null;
        }
        if (this.adA.SY().ty() || r0 != null) {
            if (this.aMO != null) {
                this.aMO.bcD();
            } else if (this.aMQ != null) {
                this.aMR.aro();
            }
        } else if (this.aMO != null) {
            this.aMO.bcL();
        } else if (this.aMQ != null) {
            this.aMR.show();
        }
    }

    public void arx() {
        this.adA.SU().Rr();
    }

    public void ahE() {
        if (!this.adC) {
            this.aML = true;
            if (this.aMR != null) {
                this.aMR.aro();
            }
            this.aMI = 0;
            if (this.aMO != null) {
                this.aMO.setEnabled(false);
                this.aMO.bcE();
            }
        }
    }

    public void ahF() {
        this.aML = false;
        if (this.aMR != null) {
            this.aMR.show();
        }
        if (this.aMO != null) {
            this.aMO.setEnabled(true);
            this.aMO.bcM();
        }
    }

    protected void alr() {
        if (this.adA.SX().JZ() == FunctionState.INTERVAL) {
            for (C0112h c0112h : this.adH) {
                if (((c0112h instanceof C0659a) || (c0112h instanceof C0117j)) && c0112h != null) {
                    c0112h.aer(false, -1, -1);
                }
            }
            return;
        }
        super.alr();
    }

    private void bdq() {
        if (this.aMQ != null && this.adA.SX().JZ() == FunctionState.INTERVAL) {
            this.aMQ.stop();
        }
    }

    public void bdf(boolean z) {
        if (this.aMO == null) {
            return;
        }
        if (z) {
            this.aMO.bcE();
            this.aMO.setEnabled(false);
            return;
        }
        this.aMO.bcM();
        this.aMO.setEnabled(true);
    }
}
