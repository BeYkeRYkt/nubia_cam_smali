package com.android.startrack;

import android.graphics.Bitmap;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.ui.C0366P;
import com.android.common.ui.C0474A;
import com.android.common.ui.C0764t;
import com.android.common.ui.MultiFunctionImageView;
import com.android.common.ui.MultiFunctionImageView.Function;
import com.android.common.ui.NubiaProgressWheel;
import com.android.common.ui.RotateImageView;
import com.android.common.ui.RotateLayout;
import com.android.common.ui.ZtemtShutterButton;
import com.p010a.C0090a;

public class C1112a {
    private ImageView aKA;
    private View aKB = null;
    private RotateLayout aKC;
    private RelativeLayout aKD = null;
    private ZtemtShutterButton aKE = null;
    private C0764t aKF;
    private RotateLayout aKG = null;
    private RelativeLayout aKq;
    private RotateImageView aKr;
    private TextView aKs = null;
    private RotateLayout aKt = null;
    private TextView aKu = null;
    private C1117f aKv;
    private Handler aKw;
    public boolean aKx = false;
    private MultiFunctionImageView aKy;
    private NubiaProgressWheel aKz;

    public C1112a(C1117f c1117f, Handler handler, C0329e c0329e) {
        this.aKv = c1117f;
        this.aKw = handler;
    }

    public void baL(C0366P c0366p) {
        this.aKE.pZ(c0366p);
    }

    public void baP(Bitmap bitmap) {
        this.aKA.setImageBitmap(bitmap);
    }

    public void baS() {
        this.aKt.setVisibility(0);
        this.aKu.setText("");
    }

    public void baO(CharSequence charSequence) {
        this.aKu.setText(charSequence);
    }

    public void baI() {
        this.aKt.setVisibility(8);
        this.aKu.setText("");
    }

    public void baQ(boolean z, C0329e c0329e) {
        baL(this.aKv);
    }

    public void baV(long j) {
        if (!this.aKF.lm()) {
            this.aKF.ln();
        }
        this.aKF.lo(C0616j.aoV(System.currentTimeMillis() - j, false));
    }

    public void baH() {
        this.aKF.stop();
    }

    public void baF(View view) {
        this.aKF = new C0764t(view);
        this.aKG = (RotateLayout) view.findViewById(R.id.tripod_tips);
        this.aKs = (TextView) view.findViewById(R.id.capturing_time);
        this.aKu = (TextView) view.findViewById(R.id.countdown_text);
        this.aKt = (RotateLayout) view.findViewById(R.id.countdown_layout);
        this.aKA = (ImageView) view.findViewById(R.id.startrack_preview_image);
        this.aKD = (RelativeLayout) view.findViewById(R.id.stopBottombarLayout);
        this.aKD.setVisibility(8);
        this.aKC = (RotateLayout) view.findViewById(R.id.startrack_tip_layout);
        this.aKE = (ZtemtShutterButton) view.findViewById(R.id.stopShutterButton);
        this.aKE.setVisibility(0);
        this.aKq = (RelativeLayout) view.findViewById(R.id.btn_cancel);
        this.aKr = (RotateImageView) view.findViewById(R.id.btn_cancel_icon);
        this.aKz = (NubiaProgressWheel) view.findViewById(R.id.shutter_button_progress_wheel);
        this.aKy = (MultiFunctionImageView) view.findViewById(R.id.stopButtonView);
        this.aKB = view.findViewById(R.id.starTraclPreviewRelativePage);
    }

    public void baK(OnClickListener onClickListener) {
        this.aKq.setOnClickListener(onClickListener);
    }

    public C0474A[] baG() {
        return new C0474A[0];
    }

    public void baR(View view) {
        this.aKD.setVisibility(0);
        baJ();
        this.aKy.setVisibility(0);
        this.aKy.ly(true);
        this.aKz.setVisibility(0);
        this.aKz.start();
        if (this.aKA != null) {
            this.aKA.setImageBitmap(null);
            this.aKA.setVisibility(0);
        }
    }

    public void baT(View view) {
        this.aKD.setVisibility(8);
        if (this.aKA != null) {
            this.aKA.setImageBitmap(null);
            this.aKA.setVisibility(8);
        }
    }

    public void baU(boolean z) {
        C0090a.m1e("StarTrackViewsManager", "==startrack==showWaitIndicator: " + z);
        if (this.aKz == null) {
            return;
        }
        if (z) {
            this.aKz.stop();
            this.aKz.setVisibility(8);
            this.aKy.lz(null);
            this.aKy.lw(Function.WAIT);
            return;
        }
        this.aKz.stop();
        this.aKz.setVisibility(8);
        this.aKy.lA();
        this.aKy.lB(Function.WAIT);
        this.aKy.setVisibility(8);
    }

    public void baJ() {
        if (this.aKG != null && this.aKG.getVisibility() == 0) {
            this.aKG.setVisibility(8);
        }
    }

    public void baN() {
        if (this.aKE != null && this.aKD != null && this.aKD.getVisibility() == 0) {
            this.aKE.performClick();
        }
    }

    public void baM(int i, int i2, int i3, int i4) {
        if (this.aKB.getWidth() != i3 - i || this.aKB.getHeight() != i4 - i2) {
            C0090a.bvo("StarTrackViewsManager", "relayout mPreviewRelativeContent");
            LayoutParams layoutParams = (LayoutParams) this.aKB.getLayoutParams();
            layoutParams.width = i3 - i;
            layoutParams.height = i4 - i2;
            layoutParams.topMargin = i2;
            layoutParams.setMarginStart(i);
            this.aKB.requestLayout();
        }
    }
}
