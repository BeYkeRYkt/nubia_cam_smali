package com.android.p013b;

import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.hardware.Camera.Size;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.ActivityBase;
import com.android.common.appService.C0304F;
import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0378d;
import com.android.common.cameradevice.C0384o;
import com.android.common.p012e.C0458b;
import com.android.common.p014n.C0111p;
import com.android.common.ui.C0474A;
import com.android.common.ui.RotateImageView;
import com.android.common.ui.RotateLayout;
import com.p010a.C0090a;

public class C0120e extends C0111p implements OnClickListener {
    private static int aLE = C0384o.Jr().Jt();
    private static int aLG = C0384o.Jr().Jx();
    private static int aLv = -1;
    private static int aLw = C0384o.Jr().Js();
    private final String TAG = "ThirdPartyFragment";
    private RotateImageView aLA = null;
    private RotateImageView aLB = null;
    private int aLC = 0;
    private TextView aLD = null;
    private ImageView aLF = null;
    private View aLH = null;
    private RelativeLayout aLI = null;
    private SharedPreferences aLJ = null;
    private View aLx = null;
    private RotateImageView aLy = null;
    private Bitmap aLz;

    public C0120e(int i) {
        super(i);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        this.aLJ = this.adA.SS();
        View inflate = layoutInflater.inflate(R.layout.thirdparty_fragment, viewGroup, false);
        bcn(inflate);
        return inflate;
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.aLC = 0;
        }
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
        }
    }

    private void bck() {
        if (this.aLz != null) {
            C0090a.bvo("ThirdPartyFragment", "onPause recycle the capture bitmap");
            this.aLz.recycle();
            this.aLz = null;
            return;
        }
        C0090a.bvo("ThirdPartyFragment", "onPause capture bitmap is null");
    }

    private void bcn(View view) {
        this.aLF = (ImageView) view.findViewById(R.id.image_capture_view);
        this.aLB = (RotateImageView) view.findViewById(R.id.exitCamera);
        this.aLI = (RelativeLayout) view.findViewById(R.id.thirdparty_cancel_done_layout);
        this.aLy = (RotateImageView) view.findViewById(R.id.btn_cancel);
        this.aLA = (RotateImageView) view.findViewById(R.id.btn_done);
        this.aLD = (TextView) view.findViewById(R.id.factorytest_hint);
        this.aLH = view.findViewById(R.id.thirdPartyPreviewRelativePage);
        if (this.adA.SP() == CameraMember.BUSINESSCARD) {
            bcj(view);
        }
        bcl();
        bcm();
        this.adE = new C0474A[]{this.aLA, this.aLy, this.aLB};
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!this.adA.SM().getIntent().getBooleanExtra("autotest", false)) {
            return false;
        }
        switch (i) {
            case 101:
                int dimension = (int) getActivity().getResources().getDimension(R.dimen.phone_height);
                int dimension2 = (int) getActivity().getResources().getDimension(R.dimen.phone_width);
                int dimension3 = (int) getActivity().getResources().getDimension(R.dimen.topbar_height);
                int dimension4 = (int) getActivity().getResources().getDimension(R.dimen.bottombar_height);
                this.aLJ.edit().putInt("auto_steps", 0).apply();
                this.adA.SY().tE(8);
                this.adA.SM().ase(dimension2 / 2, ((dimension + dimension3) - dimension4) / 2);
                break;
            case 102:
                this.aLJ.edit().putInt("auto_steps", 1).apply();
                this.adA.SY().tE(8);
                break;
            case 103:
                this.aLJ.edit().putInt("auto_steps", 2).apply();
                this.adA.SY().tE(8);
                break;
            case 104:
                if (!this.adA.ST().equals(new C0378d(aLw, aLv))) {
                    this.adA.VV(new C0378d(aLw, aLv));
                    break;
                }
                break;
            case 105:
                if (!this.adA.ST().equals(new C0378d(aLG, aLv))) {
                    this.adA.VV(new C0378d(aLG, aLv));
                    break;
                }
                break;
            case 106:
                if (!this.adA.ST().equals(new C0378d(aLE, aLv))) {
                    this.adA.VV(new C0378d(aLE, aLv));
                    break;
                }
                break;
            case 107:
                this.adA.TU();
                break;
            case 108:
                this.adA.SM().finish();
                break;
        }
        return true;
    }

    private void bcj(View view) {
        View inflate = ((LayoutInflater) getActivity().getSystemService("layout_inflater")).inflate(R.layout.businesscard_hint, (ViewGroup) view.findViewById(R.id.thirdparty_fragment), true);
        ((RotateLayout) inflate.findViewById(R.id.businesscardHintText)).fc(270, false);
        this.aLx = inflate.findViewById(R.id.businesscardHint);
        this.aLx.setVisibility(0);
    }

    private void bcm() {
        this.aLA.setOnClickListener(this);
        this.aLy.setOnClickListener(this);
    }

    private void bcl() {
        this.aLB.setOnClickListener(new C0125k(this));
    }

    private void onReviewCancelClicked() {
        if (!alA().SO() && (this.aLF == null || this.aLF.getVisibility() != 8)) {
            bcp(false);
            alA().TB();
            ((ActivityBase) getActivity()).arZ(0);
        }
    }

    private void bcp(boolean z) {
        if (getView() != null) {
            if (z) {
                this.aLF.setVisibility(0);
                this.aLy.setVisibility(0);
                this.aLA.setVisibility(0);
                this.aLB.setVisibility(8);
                this.aLD.setVisibility(8);
                if (this.aLx != null) {
                    this.aLx.setVisibility(8);
                }
                alG();
                alz();
            } else {
                this.aLF.setVisibility(8);
                this.aLy.setVisibility(8);
                this.aLA.setVisibility(8);
                this.aLB.setVisibility(0);
                if (this.aLx != null) {
                    this.aLx.setVisibility(0);
                }
                alF();
                alr();
                if (this.adA.SP() == CameraMember.FACTORYTEST && this.adA.SQ() == C0384o.Jr().Js()) {
                    String string;
                    if (this.aLC == 0) {
                        string = getActivity().getString(R.string.setting_is_off);
                    } else {
                        string = getActivity().getString(R.string.setting_is_on);
                    }
                    this.aLD.setText(String.format(string, new Object[]{getActivity().getString(R.string.pref_camera_flashmode_title)}));
                    this.aLD.setVisibility(0);
                }
            }
            this.adA.SZ(8);
        }
    }

    private void bco() {
        if (this.adA.SP() == CameraMember.FACTORYTEST && this.adA.SQ() == C0384o.Jr().Js()) {
            this.aLC++;
            if (this.aLC < 2) {
                this.adA.Wz();
                onReviewCancelClicked();
                return;
            }
            alA().Ur();
            return;
        }
        alA().Ur();
    }

    private void bci() {
        int i = 270;
        if (alA().Vc() != null) {
            bck();
            this.aLF.setVisibility(0);
            Size Gv = this.adA.Tn().Gv();
            this.aLz = C0304F.aaR(alA().Vc(), Gv.width, Gv.height);
            if (this.aLz != null) {
                Matrix matrix = new Matrix();
                if (alA().Tp() != 90) {
                    if (alA().Tp() == 270) {
                        i = 90;
                    } else {
                        i = 0;
                    }
                }
                matrix.setRotate((float) i, ((float) this.aLz.getWidth()) * 0.5f, ((float) this.aLz.getHeight()) * 0.5f);
                this.aLz = Bitmap.createBitmap(this.aLz, 0, 0, this.aLz.getWidth(), this.aLz.getHeight(), matrix, true);
                this.aLF.setImageBitmap(this.aLz);
                this.aLF.setScaleType(ScaleType.CENTER_CROP);
            }
        }
    }

    public boolean onBackPressed() {
        if (this.aLF == null || this.aLF.getVisibility() != 0) {
            return super.onBackPressed();
        }
        onReviewCancelClicked();
        return true;
    }

    public void onClick(View view) {
        if (this.aLA == view) {
            bco();
        } else if (this.aLy == view) {
            onReviewCancelClicked();
        }
    }

    public void bcg() {
        if (this.adA.SM().getIntent().getBooleanExtra("autotest", false)) {
            this.adA.SZ(8);
        } else {
            bcp(true);
            bci();
        }
        C0458b.adi().adk();
    }

    protected void ajH(int i, int i2, int i3, int i4) {
        if (this.aLH.getWidth() != i3 - i || this.aLH.getHeight() != i4 - i2) {
            C0090a.bvo("ThirdPartyFragment", "relayout mPreviewRelativeContent");
            LayoutParams layoutParams = (LayoutParams) this.aLH.getLayoutParams();
            layoutParams.width = i3 - i;
            layoutParams.height = i4 - i2;
            layoutParams.topMargin = i2;
            layoutParams.setMarginStart(i);
            this.aLH.requestLayout();
        }
    }

    public static C0120e bcf() {
        return new C0120e(1);
    }

    protected void alr() {
        super.alr();
        if (this.aLI != null) {
            this.aLI.setVisibility(8);
        }
    }

    protected void alz() {
        super.alz();
        if (this.aLI != null) {
            this.aLI.setVisibility(0);
        }
    }

    public boolean bch() {
        if (this.aLF == null || this.aLF.getVisibility() != 0) {
            return false;
        }
        return true;
    }
}
