package com.android.multiexposure;

import android.graphics.Bitmap;
import android.hardware.Camera.Size;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.C0472e;
import com.android.common.C0616j;
import com.android.common.appService.C0304F;
import com.android.common.appService.C0329e;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.p012e.C0458b;
import com.android.common.p014n.C0111p;
import com.android.common.setting.IconListPreference;
import com.android.common.ui.C0366P;
import com.android.common.ui.C0474A;
import com.android.common.ui.MultiFunctionImageView;
import com.android.common.ui.MultiFunctionImageView.Function;
import com.android.common.ui.RotateImageView;
import com.android.common.ui.ZtemtShutterButton;
import com.android.common.ui.ZtemtSlidingDrawer;
import com.android.common.ui.ad;
import com.android.common.ui.ag;
import com.android.multiexposure.ui.MyImageView;
import com.p010a.C0090a;
import com.umeng.analytics.ReportPolicy;
import java.util.Vector;

public class C0974i extends C0111p {
    private ZtemtShutterButton alA = null;
    private MultiFunctionImageView alB = null;
    private C0979n alC = null;
    private ad alD = null;
    private ImageView alE = null;
    private ImageView alF = null;
    private ImageView alG = null;
    private ImageView alH = null;
    private LinearLayout alI = null;
    private IconListPreference alJ = null;
    private View alK = null;
    private Vector alL = new Vector();
    private RelativeLayout alM = null;
    private LinearLayout alN = null;
    private ImageView alO = null;
    public C0366P alP;
    private ZtemtSlidingDrawer alQ = null;
    private MyImageView alR = null;
    private ImageView alS = null;
    private LinearLayout alT = null;
    private boolean alU = false;
    private int alV = 1;
    public TextView all = null;
    public MyImageView alm = null;
    public SeekBar aln = null;
    public C0968o alo = null;
    private final int alp = 2001;
    private boolean alq = true;
    private LinearLayout alr = null;
    private ImageView als = null;
    private TextView alt = null;
    private C0975j alu = new C0975j();
    private LinearLayout alv = null;
    private RelativeLayout alw = null;
    private RotateImageView alx = null;
    private RotateImageView aly = null;
    C0977l alz = new C0985u(this);

    public C0974i(int i) {
        super(i);
    }

    public static C0974i awk() {
        return new C0974i(1);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        View inflate = layoutInflater.inflate(R.layout.back_fun_multi_exposure_fragment, viewGroup, false);
        awz(inflate);
        return inflate;
    }

    private void awz(View view) {
        C0090a.m1e("MultiExposureFragment", "==wq== initViews: " + view.toString());
        awt(view);
        awr(view);
        awy(view);
        awv(view);
        aww(view);
        this.alK = view.findViewById(R.id.multiexposurePreviewRelativePage);
        awH();
    }

    private void aww(View view) {
        this.alM = (RelativeLayout) view.findViewById(R.id.progress_bar_layout);
        this.alM.setVisibility(0);
        this.all = (TextView) view.findViewById(R.id.process_text);
        this.alN = (LinearLayout) view.findViewById(R.id.seekbar_handler);
        this.alN.setOnClickListener(new C0986v(this));
        this.alv = (LinearLayout) view.findViewById(R.id.inner_seekbar_layout);
        this.als = (ImageView) view.findViewById(R.id.seekbar_handler_arrow);
        this.aln = (SeekBar) view.findViewById(R.id.seek_bar);
        OnSeekBarChangeListener c0966b = new C0966b(this);
        this.alv.setOnTouchListener(new ag(this.alv, this.aln, c0966b));
        this.aln.setOnSeekBarChangeListener(c0966b);
    }

    private void awy(View view) {
        this.alQ = (ZtemtSlidingDrawer) view.findViewById(R.id.drawer);
        this.alJ = (IconListPreference) alv().tp("pref_camera_multi_exposure");
        this.alQ.iF(this.alJ, getActivity(), true);
        this.alQ.iI(new C0987w(this));
        this.alQ.iJ(new C0988x(this));
    }

    private void awv(View view) {
        this.alI = (LinearLayout) view.findViewById(R.id.back_fun_multi_exposure_num_info_layout);
        this.alE = (ImageView) view.findViewById(R.id.back_fun_multi_exposure_num_info_icon1);
        this.alF = (ImageView) view.findViewById(R.id.back_fun_multi_exposure_num_info_icon2);
        this.alG = (ImageView) view.findViewById(R.id.back_fun_multi_exposure_num_info_icon4);
        this.alH = (ImageView) view.findViewById(R.id.back_fun_multi_exposure_num_info_icon5);
        this.alt = (TextView) view.findViewById(R.id.back_fun_multi_exposure_text);
    }

    private void awt(View view) {
        this.alr = (LinearLayout) view.findViewById(R.id.back_fun_multi_exposure_view2);
        this.alm = (MyImageView) view.findViewById(R.id.back_fun_multi_exposure_imageview2);
        this.alT = (LinearLayout) view.findViewById(R.id.back_fun_multi_exposure_view1);
        this.alR = (MyImageView) view.findViewById(R.id.back_fun_multi_exposure_imageview1);
        this.alS = (ImageView) view.findViewById(R.id.back_fun_multi_exposure_imageview_cover);
    }

    private void awr(View view) {
        this.alw = (RelativeLayout) view.findViewById(R.id.multi_exposure_bottom_bar);
        this.alA = (ZtemtShutterButton) view.findViewById(R.id.multi_exposure_shutter_button);
        this.alB = (MultiFunctionImageView) view.findViewById(R.id.multi_exposure_shutter_button_icon);
        this.alx = (RotateImageView) view.findViewById(R.id.multi_exposure_cancel);
        this.aly = (RotateImageView) view.findViewById(R.id.multi_exposure_done);
        this.alO = (ImageView) view.findViewById(R.id.show_third_view);
    }

    private void awH() {
        this.adE = new C0474A[]{this.alx, this.aly};
    }

    private void awL() {
        if (this.alw != null) {
            this.alw.setVisibility(8);
        }
    }

    private boolean awC() {
        return getActivity().getResources().getConfiguration().orientation == 1;
    }

    public void awK() {
        C0090a.m1e("MultiExposureFragment", "showMultiExposureBottomBar");
        this.alM.setVisibility(8);
        if (this.alw != null) {
            this.alw.setVisibility(0);
        }
        if (this.alV != 2) {
            this.alx.setVisibility(8);
            this.aly.setVisibility(8);
            LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            this.alA.setLayoutParams(layoutParams);
            return;
        }
        if (awC()) {
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            layoutParams.setMarginStart(C0616j.aoT(88));
        } else {
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            layoutParams.bottomMargin = C0616j.aoT(88);
        }
        this.alx.setVisibility(0);
        this.alx.setEnabled(false);
        this.aly.setVisibility(0);
        this.aly.setEnabled(false);
        this.alA.setLayoutParams(layoutParams);
    }

    protected void ain(int i, boolean z) {
        super.ain(i, z);
        this.alQ.iL(i, z);
    }

    private void awn(int i) {
        if (this.alJ.tw() != null) {
            int parseInt = Integer.parseInt(this.alJ.tw());
            if (this.alV != parseInt) {
                this.alV = parseInt;
            } else {
                return;
            }
        }
        this.alV = 1;
        C0090a.m1e("MultiExposureFragment", "wq changeTypeByGridView : " + this.alV);
        this.alo = C0970e.awg(alA(), this.alV, this.alz);
        awQ(this.alV);
        awF();
    }

    public C0329e awm() {
        return this.adA;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!this.adB) {
        }
    }

    public void onDestroy() {
        if (this.adB) {
            super.onDestroy();
        } else {
            super.onDestroy();
        }
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        if (this.alo != null) {
            this.alo.axx();
            this.alo.axz();
            this.alo.axA();
            this.alo.release();
            this.alo = null;
        }
        awF();
        this.alu.removeCallbacksAndMessages(null);
        super.onPause();
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            awp();
            this.alC = new C0979n(this);
            if (this.adA.SM() != null) {
                awF();
                this.alQ.notifyDataSetChanged();
            }
        }
    }

    private void awp() {
        awu();
        if (this.alO.getVisibility() != 0) {
            aws();
            awQ(this.alV);
            awM();
            awx();
            awL();
        }
    }

    private void awM() {
        if (this.alo != null) {
            switch (this.alV) {
                case 1:
                case 4:
                case 5:
                case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                case 7:
                case 8:
                case 9:
                    this.alI.setVisibility(0);
                    if (this.alo.axB() != 0) {
                        if (this.alo.axB() == 1) {
                            this.alE.setVisibility(0);
                            this.alF.setVisibility(8);
                            this.alG.setVisibility(0);
                            this.alH.setVisibility(8);
                            break;
                        }
                    }
                    this.alE.setVisibility(8);
                    this.alF.setVisibility(8);
                    this.alG.setVisibility(0);
                    this.alH.setVisibility(0);
                    break;
                    break;
                case 2:
                    this.alI.setVisibility(4);
                    break;
            }
        }
    }

    private void awu() {
        if (this.alJ.tw() != null) {
            this.alV = Integer.parseInt(this.alJ.tw());
        } else {
            this.alV = 1;
        }
        this.alo = C0970e.awg(alA(), this.alV, this.alz);
        awQ(this.alV);
    }

    private void awQ(int i) {
        if (this.alo != null) {
            switch (i) {
                case 1:
                    if (this.alo.axB() != 0) {
                        this.alt.setText(R.string.common_2);
                        break;
                    } else {
                        this.alt.setText(R.string.simple_1);
                        break;
                    }
                case 2:
                    if (this.alo.axB() != 0) {
                        this.alt.setText(String.format(getString(R.string.multi_exposure_taken_num_text), new Object[]{Integer.valueOf(this.alo.axB())}));
                        break;
                    }
                    this.alt.setText(R.string.multi_exposure_alpha_info);
                    break;
                case 4:
                    if (this.alo.axB() != 0) {
                        this.alt.setText(R.string.common_2);
                        break;
                    } else {
                        this.alt.setText(R.string.multi_exposure_brightness_info);
                        break;
                    }
                case 5:
                    if (this.alo.axB() != 0) {
                        this.alt.setText(R.string.common_2);
                        break;
                    } else {
                        this.alt.setText(R.string.multi_exposure_darkness_info);
                        break;
                    }
                case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                case 7:
                case 8:
                case 9:
                    if (this.alo.axB() != 0) {
                        this.alt.setText(R.string.common_2);
                        break;
                    } else {
                        this.alt.setText(R.string.multi_exposure_symmetry_info);
                        break;
                    }
            }
        }
    }

    private void awx() {
        this.alP = new C0978m(this.adA, this);
        this.alA.pZ(this.alP);
    }

    private void aws() {
        this.alx.setOnClickListener(new C0989y(this));
        this.aly.setOnClickListener(new C0990z(this));
    }

    private void awR(byte[] bArr) {
        int i = 270;
        awm().TA();
        awm().TE().Lz(8);
        this.alI.setVisibility(4);
        this.alA.setVisibility(8);
        this.aly.setVisibility(0);
        this.aly.setEnabled(true);
        this.aly.setOnClickListener(new C0959A(this));
        this.alx.setVisibility(0);
        this.alx.setEnabled(true);
        this.alx.setOnClickListener(new C0960B(this));
        Size Gv = this.adA.Tn().Gv();
        Bitmap aaP = C0304F.aaP(alA().Vc(), Gv.height * Gv.width);
        int axD = this.alo.axD();
        if (axD != 90) {
            if (axD == 270) {
                i = 90;
            } else {
                i = 0;
            }
        }
        Bitmap aaQ = C0304F.aaQ(aaP, i);
        this.alO.setVisibility(0);
        this.alO.setImageBitmap(aaQ);
        this.alO.setScaleType(ScaleType.CENTER_CROP);
    }

    private void awG() {
        awm().TB();
        awm().TE().Lz(0);
        this.alI.setVisibility(0);
        this.alA.setVisibility(0);
        this.aly.setVisibility(8);
        this.aly.setEnabled(false);
        this.aly.setOnClickListener(null);
        this.alx.setVisibility(8);
        this.alx.setEnabled(false);
        this.alx.setOnClickListener(null);
        alr();
        this.alO.setVisibility(8);
        awF();
        aws();
    }

    private void awF() {
        if (this.adA == null) {
            C0090a.bvo("MultiExposureFragment", "resetFragment mAppService == null return");
        } else if (alq() != UIState.CAMERA_FAMILY) {
            if (this.alO.getVisibility() == 0) {
                this.alr.setVisibility(8);
                this.alT.setVisibility(8);
                return;
            }
            awo(false);
            alr();
            try {
                awS(false);
                awQ(this.alV);
                awM();
                this.alr.setVisibility(8);
                this.alM.setVisibility(8);
                this.alQ.setVisibility(0);
                this.alQ.iK(false);
                awL();
                if (!(this.alV == 6 || this.alV == 7)) {
                    if (!(this.alV == 8 || this.alV == 9)) {
                        this.alT.setVisibility(4);
                        this.alS.setVisibility(4);
                        alA().WL(true);
                    }
                }
                this.alT.setVisibility(0);
                this.alS.setVisibility(0);
                this.alR.setVisibility(4);
            } catch (NullPointerException e) {
                e.printStackTrace();
            }
            alA().WL(true);
        }
    }

    private void awO(int i, Bitmap bitmap) {
        switch (i) {
            case 1:
            case 4:
            case 5:
                awJ(bitmap);
                return;
            case 2:
                awI(bitmap);
                return;
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
            case 7:
            case 8:
            case 9:
                awP(bitmap);
                return;
            default:
                return;
        }
    }

    private void awJ(Bitmap bitmap) {
        this.alr.setVisibility(0);
        this.alm.setImageAlpha(127);
        this.alm.setImageBitmap(bitmap);
    }

    private void awI(Bitmap bitmap) {
        this.alr.setVisibility(0);
        this.alM.setVisibility(0);
        this.aln.setProgress(als().getInt("multi_exposure_parameter", 50));
        this.alm.setImageAlpha(((100 - this.aln.getProgress()) * 255) / 100);
        this.alm.setImageBitmap(bitmap);
    }

    private void awP(Bitmap bitmap) {
        this.alT.setVisibility(0);
        this.alS.setVisibility(4);
        this.alR.setVisibility(0);
        this.alR.setImageBitmap(bitmap);
    }

    public boolean onBackPressed() {
        C0090a.bvm("MultiExposureFragment", "onBackPressed");
        if (this.alo == null || this.alo.axB() == 0) {
            return super.onBackPressed();
        }
        if (awD()) {
            return true;
        }
        this.alo.axE();
        this.alo.axx();
        this.alo.axz();
        this.alo.axA();
        this.alo = C0970e.awg(alA(), this.alV, this.alz);
        awF();
        return true;
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (alA() == null) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (!awD()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        C0090a.m1e("MultiExposureFragment", "dispatchTouchEvent return true 1");
        return true;
    }

    public void awo(boolean z) {
        this.alU = z;
        if (z) {
            alG();
            this.adD.Kb(UIState.NORMAL, FunctionState.NORMAL, DeviceState.IDLE, DeviceState.PREVIEW_STOPPED, DeviceState.SNAPSHOT_IN_PROGRESS);
            return;
        }
        alF();
        this.adD.Ka();
    }

    private boolean awD() {
        return this.alU;
    }

    public boolean RU(byte[] bArr) {
        if (isHidden()) {
            C0090a.m0d("MultiExposureFragment", "MultiExposureFragment is hidden just intercept the jpegData");
            return true;
        } else if (this.alo.axF()) {
            C0090a.m1e("MultiExposureFragment", "previewData is null, intercept this jpegData");
            C0458b.adi().adk();
            return true;
        } else {
            if (awA()) {
                this.alo.axG(C0472e.aoA(bArr));
            }
            if (awB()) {
                awN();
            }
            this.alo.awf(bArr);
            return true;
        }
    }

    private boolean awB() {
        return this.alo.axH() == 1;
    }

    private boolean awA() {
        return this.alo.axB() == 0;
    }

    public void awS(boolean z) {
        if (z) {
            this.alB.lw(Function.WAIT);
            this.alS.setVisibility(4);
            return;
        }
        this.alB.lB(Function.WAIT);
    }

    private void awN() {
        if (this.alo != null) {
            switch (this.alV) {
                case 1:
                case 4:
                case 5:
                case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                case 7:
                case 8:
                case 9:
                    this.alI.setVisibility(0);
                    this.alE.setVisibility(0);
                    this.alF.setVisibility(0);
                    this.alG.setVisibility(8);
                    this.alH.setVisibility(8);
                    break;
                case 2:
                    this.alI.setVisibility(4);
                    break;
            }
        }
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    public void awl() {
        if (this.adC) {
            C0090a.m1e("MultiExposureFragment", "ignore performShutterButtonClick because fragment is pause");
            return;
        }
        if (this.alA != null && this.alA.getVisibility() == 0) {
            this.alA.performClick();
        }
    }

    protected void ajH(int i, int i2, int i3, int i4) {
        if (this.alK.getWidth() != i3 - i || this.alK.getHeight() != i4 - i2) {
            C0090a.bvo("MultiExposureFragment", "relayout mPreviewRelativeContent");
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.alK.getLayoutParams();
            layoutParams.width = i3 - i;
            layoutParams.height = i4 - i2;
            layoutParams.topMargin = i2;
            layoutParams.setMarginStart(i);
            this.alK.requestLayout();
        }
    }

    private void awE() {
        awq();
        this.alD.rE();
    }

    private void close() {
        awq();
        this.alD.start();
    }

    private void awq() {
        if (this.alD == null) {
            int height = this.alv.getHeight();
            C0090a.m1e("MultiExposureFragment", "translateHeight = " + height);
            this.alD = new ad(new Object[]{this.alM}, "translationY", 0.0f, (float) height, 500);
            this.alD.rF(new C0961C(this));
        }
    }
}
