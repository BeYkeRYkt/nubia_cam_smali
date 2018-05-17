package com.android.camera.cameraFamily;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings.Global;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.camera.R;
import com.android.camera.p020b.C0165c;
import com.android.common.appService.CameraMember;
import com.android.common.p014n.C0111p;
import com.android.common.ui.C0474A;
import com.android.common.ui.RotateImageView;
import com.android.common.ui.RotateLayout;
import com.p010a.C0090a;
import com.umeng.analytics.ReportPolicy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class C0181h extends C0111p implements C0175c {
    private static final /* synthetic */ int[] aGb = null;
    private boolean aFC = false;
    private C0178k aFD = null;
    private ArrayList aFE = new ArrayList();
    private RotateLayout aFF = null;
    private C0184l aFG = null;
    private ViewGroup aFH = null;
    private boolean aFI = true;
    private ImageView aFJ = null;
    private View aFK = null;
    private C0174b aFL = null;
    private Handler aFM = new C0187o(this);
    private AnimatorSet aFN = null;
    private Thread aFO = new C0188p(this);
    private C0184l aFP = null;
    private List aFQ = null;
    private C0180g aFR = null;
    private C0165c aFS = null;
    private int aFT = -1;
    private RotateImageView aFU = null;
    private AnimatorSet aFV = null;
    private AnimatorSet aFW = null;
    private AnimatorSet aFX = null;
    private RotateImageView aFY = null;
    private AnimatorSet aFZ = null;
    private View[] aGa = null;

    private static /* synthetic */ int[] aWg() {
        if (aGb != null) {
            return aGb;
        }
        int[] iArr = new int[CameraMember.values().length];
        try {
            iArr[CameraMember.BIG_APERTURE.ordinal()] = 19;
        } catch (NoSuchFieldError e) {
        }
        try {
            iArr[CameraMember.BUSINESSCARD.ordinal()] = 20;
        } catch (NoSuchFieldError e2) {
        }
        try {
            iArr[CameraMember.CLONE.ordinal()] = 1;
        } catch (NoSuchFieldError e3) {
        }
        try {
            iArr[CameraMember.CRYSTAL.ordinal()] = 21;
        } catch (NoSuchFieldError e4) {
        }
        try {
            iArr[CameraMember.DEMISTER.ordinal()] = 22;
        } catch (NoSuchFieldError e5) {
        }
        try {
            iArr[CameraMember.DNG.ordinal()] = 2;
        } catch (NoSuchFieldError e6) {
        }
        try {
            iArr[CameraMember.DUALCAMERACALIBRATION.ordinal()] = 23;
        } catch (NoSuchFieldError e7) {
        }
        try {
            iArr[CameraMember.ELETRONIC.ordinal()] = 3;
        } catch (NoSuchFieldError e8) {
        }
        try {
            iArr[CameraMember.FACTORYTEST.ordinal()] = 24;
        } catch (NoSuchFieldError e9) {
        }
        try {
            iArr[CameraMember.FRONT.ordinal()] = 25;
        } catch (NoSuchFieldError e10) {
        }
        try {
            iArr[CameraMember.FUNEFFECT.ordinal()] = 26;
        } catch (NoSuchFieldError e11) {
        }
        try {
            iArr[CameraMember.INTERVALOMETER.ordinal()] = 4;
        } catch (NoSuchFieldError e12) {
        }
        try {
            iArr[CameraMember.LIGHTDRAW.ordinal()] = 5;
        } catch (NoSuchFieldError e13) {
        }
        try {
            iArr[CameraMember.MICROSPUR.ordinal()] = 6;
        } catch (NoSuchFieldError e14) {
        }
        try {
            iArr[CameraMember.MONO.ordinal()] = 7;
        } catch (NoSuchFieldError e15) {
        }
        try {
            iArr[CameraMember.MULTIEXPOSURE.ordinal()] = 8;
        } catch (NoSuchFieldError e16) {
        }
        try {
            iArr[CameraMember.NONE.ordinal()] = 27;
        } catch (NoSuchFieldError e17) {
        }
        try {
            iArr[CameraMember.NORMAL.ordinal()] = 28;
        } catch (NoSuchFieldError e18) {
        }
        try {
            iArr[CameraMember.OBJECTCLEAR.ordinal()] = 29;
        } catch (NoSuchFieldError e19) {
        }
        try {
            iArr[CameraMember.PANORAMA.ordinal()] = 9;
        } catch (NoSuchFieldError e20) {
        }
        try {
            iArr[CameraMember.PHOTO3D.ordinal()] = 10;
        } catch (NoSuchFieldError e21) {
        }
        try {
            iArr[CameraMember.PINTU.ordinal()] = 30;
        } catch (NoSuchFieldError e22) {
        }
        try {
            iArr[CameraMember.PIP.ordinal()] = 31;
        } catch (NoSuchFieldError e23) {
        }
        try {
            iArr[CameraMember.PRAGUE.ordinal()] = 32;
        } catch (NoSuchFieldError e24) {
        }
        try {
            iArr[CameraMember.PRETTYCAMERA.ordinal()] = 33;
        } catch (NoSuchFieldError e25) {
        }
        try {
            iArr[CameraMember.PRO.ordinal()] = 34;
        } catch (NoSuchFieldError e26) {
        }
        try {
            iArr[CameraMember.SLOWSHUTTER.ordinal()] = 11;
        } catch (NoSuchFieldError e27) {
        }
        try {
            iArr[CameraMember.STARCLOUD.ordinal()] = 35;
        } catch (NoSuchFieldError e28) {
        }
        try {
            iArr[CameraMember.STARTRACK.ordinal()] = 12;
        } catch (NoSuchFieldError e29) {
        }
        try {
            iArr[CameraMember.SUPERNIGHT.ordinal()] = 36;
        } catch (NoSuchFieldError e30) {
        }
        try {
            iArr[CameraMember.THIRDPARTY_CAMERA.ordinal()] = 37;
        } catch (NoSuchFieldError e31) {
        }
        try {
            iArr[CameraMember.TRAJECTORY.ordinal()] = 13;
        } catch (NoSuchFieldError e32) {
        }
        try {
            iArr[CameraMember.TRIAXIAL.ordinal()] = 14;
        } catch (NoSuchFieldError e33) {
        }
        try {
            iArr[CameraMember.VIDEOMAKER.ordinal()] = 15;
        } catch (NoSuchFieldError e34) {
        }
        try {
            iArr[CameraMember.VIDEO_RECORD.ordinal()] = 38;
        } catch (NoSuchFieldError e35) {
        }
        try {
            iArr[CameraMember.VIDEO_SLOMO.ordinal()] = 16;
        } catch (NoSuchFieldError e36) {
        }
        try {
            iArr[CameraMember.VR_CAMERA.ordinal()] = 17;
        } catch (NoSuchFieldError e37) {
        }
        try {
            iArr[CameraMember.WLAN_CAMERA.ordinal()] = 39;
        } catch (NoSuchFieldError e38) {
        }
        try {
            iArr[CameraMember.ZOOMBLUR.ordinal()] = 18;
        } catch (NoSuchFieldError e39) {
        }
        aGb = iArr;
        return iArr;
    }

    public C0181h(int i) {
        super(i);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.adB) {
            return null;
        }
        View inflate = layoutInflater.inflate(R.layout.camera_family_main_layout, viewGroup, false);
        aVv(inflate);
        return inflate;
    }

    public void onResume() {
        C0090a.m0d("yuweiwei", "CameraFamilyFragment onResume");
        super.onResume();
        if (!this.adB) {
            this.aFL.aUu(new C0189q(this));
            this.aFC = false;
        }
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
            try {
                this.aFO.join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            this.aFL.aUt();
            this.aFM.removeCallbacksAndMessages(null);
            aVm();
        }
    }

    public void onDestroy() {
        if (this.adB) {
            super.onDestroy();
            return;
        }
        this.aFL.aUs(this);
        super.onDestroy();
    }

    public void aVe(C0174b c0174b) {
        this.aFL = c0174b;
    }

    private void aVv(View view) {
        this.aFH = (ViewGroup) view.findViewById(R.id.family_content);
        this.aFF = (RotateLayout) view.findViewById(R.id.family_content_rotate);
        this.aFJ = (ImageView) view.findViewById(R.id.family_bg);
        this.aFK = view.findViewById(R.id.camera_family_select);
        this.aFY = (RotateImageView) view.findViewById(R.id.select_icon_top);
        this.aFU = (RotateImageView) view.findViewById(R.id.select_icon_bottom);
        this.aFH.setOnTouchListener(new C0182i());
        aVu();
        this.adE = new C0474A[]{this.aFF, this.aFU, this.aFY};
    }

    private void aVu() {
        this.aFK.setOnClickListener(new C0190r(this));
        this.aFK.setEnabled(false);
    }

    private View[] aVy() {
        int i;
        LayoutInflater from = LayoutInflater.from(alA().SN().getApplicationContext());
        this.aFQ = this.aFL.aUn();
        View[] viewArr = new View[this.aFQ.size()];
        int aVn = aVn();
        if (C0174b.aUm(aVn, getActivity())) {
            i = aVn;
        } else {
            aVn = CameraMember.ELETRONIC.aan();
            aVB(aVn);
            i = aVn;
        }
        for (int i2 = 0; i2 < this.aFQ.size(); i2++) {
            viewArr[i2] = (RelativeLayout) from.inflate(R.layout.camera_family_mydraggrid_item, null);
            TextView textView = (TextView) viewArr[i2].findViewById(R.id.item_text);
            textView.setText((String) ((HashMap) this.aFQ.get(i2)).get("family_member_name"));
            Drawable drawable = getResources().getDrawable(((Integer) ((HashMap) this.aFQ.get(i2)).get("family_member_icon_id")).intValue());
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
            textView.setCompoundDrawables(null, drawable, null, null);
            C0184l c0184l = new C0184l();
            c0184l.aGh = ((Integer) ((HashMap) this.aFQ.get(i2)).get("family_member_type")).intValue();
            c0184l.mName = (String) ((HashMap) this.aFQ.get(i2)).get("family_member_name");
            c0184l.aGi = (ImageView) viewArr[i2].findViewById(R.id.item_select_icon);
            if (c0184l.aGh == i) {
                c0184l.aGi.setVisibility(0);
                this.aFP = c0184l;
                this.aFG = c0184l;
            } else {
                c0184l.aGi.setVisibility(8);
            }
            viewArr[i2].setTag(c0184l);
        }
        return viewArr;
    }

    private void aVC() {
        if (this.adA != null && this.aGa != null && this.aGa.length != 0) {
            int i;
            C0184l c0184l;
            boolean z = Global.getInt(this.adA.SM().getContentResolver(), "wlancamera", 0) == 1;
            C0184l c0184l2 = null;
            for (int i2 = 0; i2 < this.aGa.length; i2++) {
                c0184l2 = (C0184l) this.aGa[i2].getTag();
                if (c0184l2.aGh == CameraMember.WLAN_CAMERA.aan()) {
                    C0184l c0184l3 = c0184l2;
                    i = i2;
                    c0184l = c0184l3;
                    break;
                }
            }
            c0184l = c0184l2;
            i = -1;
            if (i != -1) {
                Drawable drawable;
                TextView textView = (TextView) this.aGa[i].findViewById(R.id.item_text);
                if (z) {
                    C0090a.m0d("yuweiwei", "isShowGray");
                    drawable = getResources().getDrawable(R.drawable.camera_family_wlancamera_name_gray);
                    textView.setTextColor(Color.argb(51, 255, 255, 255));
                    c0184l.aGj = false;
                } else {
                    C0090a.m0d("yuweiwei", "not showgray");
                    drawable = getResources().getDrawable(R.drawable.camera_family_wlancamera_name);
                    textView.setTextColor(Color.argb(137, 255, 255, 255));
                    c0184l.aGj = true;
                }
                drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
                textView.setCompoundDrawables(null, drawable, null, null);
            }
        }
    }

    private void aVw() {
        aVC();
        aVt(this.aGa);
        aVA();
        this.aFY.setImageResource(aVo(CameraMember.aap(this.aFP.aGh)));
        this.aFK.setEnabled(true);
    }

    private void aVt(View[] viewArr) {
        if (this.aFS == null) {
            this.aFS = new C0165c(getActivity(), viewArr, this.adA, alN());
            this.aFS.aWw(new C0191s(this));
        }
        this.aFS.setLayoutParams(new LayoutParams(-1, -1));
        this.aFH.addView(this.aFS);
    }

    private void aVq() {
        if (this.adA != null && this.adA.SM() != null) {
            this.adA.SM().asU();
        }
    }

    private void aVr() {
        if (this.adA != null && this.adA.SM() != null) {
            this.adA.SM().asV();
        }
    }

    private int aVn() {
        return als().getInt("scroll_switcher_seleleted_family", CameraMember.MULTIEXPOSURE.aan());
    }

    private void aVB(int i) {
        als().edit().putInt("scroll_switcher_seleleted_family", i).apply();
    }

    public static C0181h aVd() {
        return new C0181h(1);
    }

    public void aVj() {
        if (!(this.adC || this.aFS == null || !isVisible())) {
            this.aFL.aUu(new C0192t(this));
        }
    }

    public void setEnabled(boolean z) {
        this.aFI = z;
        this.aFH.setEnabled(z);
        this.aFS.setEnabled(z);
        this.aFS.setClickable(z);
    }

    protected void ain(int i, boolean z) {
        super.ain(i, z);
        if (this.aFS != null) {
            this.aFS.setOrientation(i);
        }
    }

    public int aVo(CameraMember cameraMember) {
        switch (C0181h.aWg()[cameraMember.ordinal()]) {
            case 1:
                return R.drawable.camera_family_clone_sub;
            case 2:
                return R.drawable.camera_family_dng_sub;
            case 3:
                return R.drawable.camera_family_electronic_sub;
            case 4:
                return R.drawable.camera_family_intervalometer_sub;
            case 5:
                return R.drawable.camera_family_lightpainting_sub;
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                return R.drawable.camera_family_microspur_sub;
            case 7:
                return R.drawable.camera_family_mono_sub;
            case 9:
                return R.drawable.camera_family_panoroma_sub;
            case 10:
                return R.drawable.camera_family_photo3d_sub;
            case 11:
                return R.drawable.camera_family_slowshutter_sub;
            case 12:
                return R.drawable.camera_family_startrack_sub;
            case 13:
                return R.drawable.camera_family_trajectory_sub;
            case 14:
                return R.drawable.camera_family_triaxial_sub;
            case 15:
                return R.drawable.camera_family_videomaker_sub;
            case 16:
                return R.drawable.camera_family_videoslomo_sub;
            case 17:
                return R.drawable.camera_family_panorama_360_sub;
            case 18:
                return R.drawable.camera_family_zoomblur_sub;
            default:
                return R.drawable.camera_family_mutiexposure_sub;
        }
    }

    public void aVk(C0183j c0183j) {
        if (!this.aFE.contains(c0183j)) {
            this.aFE.add(c0183j);
        }
    }

    private void aVA() {
        for (C0183j c0183j : this.aFE) {
            if (c0183j != null) {
                c0183j.aWh();
            }
        }
    }

    private void aVz() {
        for (C0183j c0183j : this.aFE) {
            if (c0183j != null) {
                c0183j.aWi();
            }
        }
    }

    public void aVf(C0178k c0178k) {
        this.aFD = c0178k;
    }

    public void aVh(boolean z) {
        aVs();
        if (!this.aFZ.isRunning() && !this.aFN.isRunning() && !this.aFV.isRunning() && !this.aFW.isRunning() && !this.aFX.isRunning()) {
            C0090a.bvo("CameraFamilyFragment", "showFamilyGrid");
            aVm();
            this.aFZ.start();
            if (z) {
                this.aFX.start();
            }
        }
    }

    public void aVi(boolean z) {
        aVs();
        if (!this.aFN.isRunning() && !this.aFZ.isRunning() && !this.aFV.isRunning() && !this.aFW.isRunning() && !this.aFX.isRunning()) {
            C0090a.bvo("CameraFamilyFragment", "hideFamilyGrid");
            aVm();
            if (this.aFF.getVisibility() == 0) {
                this.aFN.start();
            }
            if (z) {
                this.aFW.start();
            }
        }
    }

    private void aVs() {
        if (this.aFZ == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.aFF, View.SCALE_X, new float[]{0.8f, 1.0f});
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.aFF, View.SCALE_Y, new float[]{0.8f, 1.0f});
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.aFF, View.ALPHA, new float[]{0.0f, 1.0f});
            ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.aFJ, View.ALPHA, new float[]{0.0f, 1.0f});
            ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.aFK, View.SCALE_X, new float[]{0.8f, 1.0f});
            ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(this.aFK, View.SCALE_Y, new float[]{0.8f, 1.0f});
            ObjectAnimator ofFloat7 = ObjectAnimator.ofFloat(this.aFK, View.ALPHA, new float[]{0.0f, 1.0f});
            TimeInterpolator pathInterpolator = new PathInterpolator(0.24f, 0.09f, 0.3f, 1.0f);
            TimeInterpolator linearInterpolator = new LinearInterpolator();
            ofFloat.setDuration(250);
            ofFloat.setInterpolator(pathInterpolator);
            ofFloat2.setDuration(250);
            ofFloat2.setInterpolator(pathInterpolator);
            ofFloat3.setDuration(250);
            ofFloat3.setInterpolator(linearInterpolator);
            ofFloat4.setDuration(150);
            ofFloat4.setInterpolator(linearInterpolator);
            ofFloat5.setDuration(250);
            ofFloat5.setInterpolator(pathInterpolator);
            ofFloat6.setDuration(250);
            ofFloat6.setInterpolator(pathInterpolator);
            ofFloat7.setDuration(250);
            ofFloat7.setInterpolator(linearInterpolator);
            this.aFX = new AnimatorSet();
            this.aFX.playTogether(new Animator[]{ofFloat5, ofFloat6, ofFloat7});
            this.aFZ = new AnimatorSet();
            this.aFZ.playTogether(new Animator[]{ofFloat, ofFloat2, ofFloat3, ofFloat4});
            this.aFZ.addListener(new C0193u(this));
        }
        if (this.aFN == null) {
            ofFloat = ObjectAnimator.ofFloat(this.aFF, View.SCALE_X, new float[]{1.0f, 0.8f});
            ofFloat2 = ObjectAnimator.ofFloat(this.aFF, View.SCALE_Y, new float[]{1.0f, 0.8f});
            ofFloat3 = ObjectAnimator.ofFloat(this.aFF, View.ALPHA, new float[]{1.0f, 0.0f});
            ofFloat4 = ObjectAnimator.ofFloat(this.aFJ, View.ALPHA, new float[]{1.0f, 0.0f});
            ofFloat5 = ObjectAnimator.ofFloat(this.aFK, View.SCALE_X, new float[]{1.0f, 0.8f});
            ofFloat6 = ObjectAnimator.ofFloat(this.aFK, View.SCALE_Y, new float[]{1.0f, 0.8f});
            ofFloat7 = ObjectAnimator.ofFloat(this.aFK, View.ALPHA, new float[]{1.0f, 0.0f});
            ObjectAnimator ofFloat8 = ObjectAnimator.ofFloat(this.aFK, View.SCALE_X, new float[]{1.0f, 1.3f});
            ObjectAnimator ofFloat9 = ObjectAnimator.ofFloat(this.aFK, View.SCALE_Y, new float[]{1.0f, 1.3f});
            ObjectAnimator ofFloat10 = ObjectAnimator.ofFloat(this.aFY, View.ALPHA, new float[]{0.0f, 1.0f});
            float[] fArr = new float[2];
            ObjectAnimator ofFloat11 = ObjectAnimator.ofFloat(this.aFK, View.SCALE_X, new float[]{1.3f, 1.0f});
            float[] fArr2 = new float[2];
            ObjectAnimator ofFloat12 = ObjectAnimator.ofFloat(this.aFK, View.SCALE_Y, new float[]{1.3f, 1.0f});
            PathInterpolator pathInterpolator2 = new PathInterpolator(0.24f, 0.09f, 0.3f, 1.0f);
            LinearInterpolator linearInterpolator2 = new LinearInterpolator();
            ofFloat.setDuration(100);
            ofFloat.setInterpolator(pathInterpolator2);
            ofFloat2.setDuration(100);
            ofFloat2.setInterpolator(pathInterpolator2);
            ofFloat3.setDuration(100);
            ofFloat3.setInterpolator(linearInterpolator2);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setStartDelay(10);
            animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2, ofFloat3});
            ofFloat4.setDuration(250);
            ofFloat4.setInterpolator(linearInterpolator2);
            ofFloat5.setDuration(100);
            ofFloat5.setInterpolator(pathInterpolator2);
            ofFloat6.setDuration(100);
            ofFloat6.setInterpolator(pathInterpolator2);
            ofFloat7.setDuration(100);
            ofFloat7.setInterpolator(linearInterpolator2);
            TimeInterpolator pathInterpolator3 = new PathInterpolator(0.25f, 0.46f, 0.45f, 0.94f);
            TimeInterpolator pathInterpolator4 = new PathInterpolator(0.55f, 0.085f, 0.68f, 0.53f);
            ofFloat8.setInterpolator(pathInterpolator3);
            ofFloat8.setDuration(50);
            ofFloat9.setInterpolator(pathInterpolator3);
            ofFloat9.setDuration(50);
            ofFloat8.addListener(new C0194v(this));
            ofFloat10.setInterpolator(linearInterpolator2);
            ofFloat10.setDuration(50);
            ofFloat8.setStartDelay(50);
            ofFloat8.setDuration(200);
            ofFloat8.setInterpolator(pathInterpolator4);
            ofFloat9.setStartDelay(50);
            ofFloat9.setDuration(200);
            ofFloat9.setInterpolator(pathInterpolator4);
            this.aFW = new AnimatorSet();
            this.aFW.setStartDelay(10);
            this.aFW.playTogether(new Animator[]{ofFloat5, ofFloat6, ofFloat7});
            this.aFW.addListener(new C0195w(this));
            this.aFV = new AnimatorSet();
            this.aFV.playTogether(new Animator[]{ofFloat10, ofFloat11, ofFloat12, ofFloat8, ofFloat9});
            this.aFV.addListener(new C0196x(this));
            this.aFN = new AnimatorSet();
            this.aFN.playTogether(new Animator[]{animatorSet, ofFloat4});
            this.aFN.addListener(new C0197y(this));
        }
    }

    private void aVm() {
        if (this.aFN != null) {
            if (this.aFN.isStarted()) {
                this.aFN.end();
            }
            this.aFN.cancel();
        }
        if (this.aFZ != null) {
            if (this.aFZ.isStarted()) {
                this.aFZ.end();
            }
            this.aFZ.cancel();
        }
        if (this.aFV != null) {
            if (this.aFV.isStarted()) {
                this.aFV.end();
            }
            this.aFV.cancel();
        }
        if (this.aFW != null) {
            if (this.aFW.isStarted()) {
                this.aFW.end();
            }
            this.aFW.cancel();
        }
        if (this.aFX != null) {
            if (this.aFX.isStarted()) {
                this.aFX.end();
            }
            this.aFX.cancel();
        }
    }

    private boolean aVx(Animator animator) {
        if (animator != null) {
            return !animator.isStarted() ? animator.isRunning() : true;
        } else {
            return false;
        }
    }

    public boolean aVg() {
        if (aVx(this.aFN) || aVx(this.aFZ) || aVx(this.aFV) || aVx(this.aFW)) {
            return true;
        }
        return aVx(this.aFX);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!aVg()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        C0090a.bvo("CameraFamilyFragment", "CameraFamily is Animating. Consume MotionEvent");
        return true;
    }

    public void aVl() {
        aVz();
    }

    private C0180g aVp() {
        if (this.aFR == null) {
            this.aFR = new C0180g(this);
        }
        return this.aFR;
    }
}
