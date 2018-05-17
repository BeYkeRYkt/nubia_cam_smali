package com.android.slowshutter;

import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
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
import com.android.common.p014n.C0111p;
import com.android.common.p014n.C0117j;
import com.android.common.p014n.C0659a;
import com.android.common.p015f.C0112h;
import com.android.common.ui.MultiFunctionImageView;
import com.android.common.ui.MultiFunctionImageView.Function;
import com.android.common.ui.RotateImageView;
import com.android.common.ui.RotateLayout;
import com.p010a.C0090a;

public class C1095b extends C0111p implements C0116o, C0727u {
    private final int bbV = Color.argb(255, 198, 203, 209);
    private final int bbW = Color.argb(255, 255, 255, 255);
    private boolean bbX = false;
    private RelativeLayout bbY;
    private RotateImageView bbZ;
    private ImageView bca;
    private C0636m bcb = null;
    private C0726t bcc = null;
    private boolean bcd = true;
    private boolean bce = false;
    private int bcf = C0616j.aoT(14);
    private int bcg = C0616j.aoT(9);
    private C1097d bch;
    private int bci = 0;
    private MultiFunctionImageView bcj;
    private RelativeLayout bck = null;
    private RotateLayout bcl;
    private C0339n bcm;
    private C1096c bcn = new C1096c(this);

    public C1095b(int i) {
        super(i);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        View inflate = layoutInflater.inflate(R.layout.slow_shutter_fragment, viewGroup, false);
        btf(inflate);
        return inflate;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!this.adB) {
            this.bcm = new C0339n(getActivity());
            this.bcf = getActivity().getResources().getDimensionPixelSize(R.dimen.progress_num_size);
            this.bcg = getActivity().getResources().getDimensionPixelSize(R.dimen.progress_text_size);
        }
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            ail(true);
            this.bce = false;
            this.bbX = false;
            btl();
            btg();
        }
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        btl();
        this.bce = true;
        this.bcn.removeMessages(1);
        super.onPause();
    }

    private void btf(View view) {
        this.bcc = new C0726t(view, als(), this);
        bte(view);
        this.bcj = (MultiFunctionImageView) view.findViewById(R.id.stopButtonView);
        this.bca = (ImageView) view.findViewById(R.id.image_view);
        this.bcl = (RotateLayout) view.findViewById(R.id.tripod_tips);
        this.bcl.setVisibility(0);
    }

    private void bte(View view) {
        this.bck = (RelativeLayout) view.findViewById(R.id.stopBottombarLayout);
        this.bck.setVisibility(8);
        this.bbY = (RelativeLayout) view.findViewById(R.id.btn_cancel);
        this.bbZ = (RotateImageView) view.findViewById(R.id.btn_cancel_icon);
        this.bbY.setOnClickListener(new C1100g(this));
    }

    private void btc() {
        btb();
    }

    public static C1095b bth() {
        return new C1095b(1);
    }

    protected void ain(int i, boolean z) {
        super.ain(i, z);
        this.bci = i;
    }

    private void btn() {
        if (this.bch != null) {
            this.bch.btz();
            try {
                this.bch.join();
            } catch (InterruptedException e) {
                C0090a.m1e("SlowShutterFragment", "InterruptedException when mProgressThread.join() " + e.getMessage());
            }
            this.bcn.removeMessages(1);
            this.bch = null;
        }
    }

    public boolean onBackPressed() {
        if (this.bbX || this.bch == null || alt() != DeviceState.SNAPSHOT_IN_PROGRESS) {
            return super.onBackPressed();
        }
        if (this.bcm.Yx(1)) {
            btb();
        }
        return true;
    }

    public boolean Sc() {
        this.adA.Tj(true);
        float parseFloat = Float.parseFloat(this.adA.SY().tB());
        int Ty = this.adA.Ty();
        if (btd(parseFloat, Ty)) {
            btk(parseFloat, Ty);
            if (this.adA.SX().JZ() != FunctionState.INTERVAL) {
                this.adA.Wb(2);
            }
        }
        C0616j.apa(getActivity(), "slowshutter_1", "SlowShutterFragment");
        return false;
    }

    private boolean btd(float f, int i) {
        int i2;
        int i3 = 1;
        if (f > -1.0f) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (i <= 0) {
            i3 = 0;
        }
        return i3 | i2;
    }

    public void bti(C0636m c0636m) {
        this.bcb = c0636m;
    }

    private void btb() {
        btn();
        this.adA.Un(new C1101h(this));
    }

    private void btk(float f, int i) {
        this.bca.setVisibility(0);
        this.bcl.setVisibility(8);
        this.bck.setVisibility(0);
        this.bcj.setVisibility(0);
        this.bcj.lw(Function.PROGRESS);
        alz();
        this.bch = new C1097d(this, f, i);
        this.bch.start();
    }

    void btl() {
        if (!this.bce && alq() != UIState.CAMERA_FAMILY) {
            btn();
            btj(false);
            this.bca.setVisibility(8);
            this.bck.setVisibility(8);
            this.bcj.setVisibility(8);
            this.bcj.lx(0, false);
            alr();
        }
    }

    public void btj(boolean z) {
        if (this.bcj != null) {
            if (z) {
                this.bcn.removeMessages(1);
                this.bcj.setVisibility(0);
                this.bcj.lw(Function.WAIT);
            } else {
                this.bcj.setVisibility(8);
            }
        }
    }

    public boolean RU(byte[] bArr) {
        btl();
        if (this.adA.SX().JZ() != FunctionState.INTERVAL) {
            this.adA.Tj(false);
        }
        return false;
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.bcl.getVisibility() == 0) {
            this.bcl.setVisibility(8);
            this.bcd = false;
        }
        return false;
    }

    public void btg() {
        Object obj = 1;
        if (!(this.adA.SX().JZ() == FunctionState.SPEED_MULTISHOOTING || this.adA.SX().JZ() == FunctionState.QUALITY_MULTISHOOTING)) {
            obj = null;
        }
        if (this.adA.SY().ty() || r0 != null) {
            this.bcc.aro();
        } else {
            this.bcc.show();
        }
    }

    public void arx() {
        this.adA.SU().Rr();
    }

    public void ahE() {
        if (!this.adC) {
            this.bbX = true;
            if (this.bcc != null) {
                this.bcc.aro();
            }
        }
    }

    public void ahF() {
        this.bbX = false;
        if (this.bcc != null) {
            this.bcc.show();
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

    private void btm() {
        if (this.bcb != null && this.adA.SX().JZ() == FunctionState.INTERVAL) {
            this.bcb.stop();
        }
    }
}
