package com.android.electronicfno;

import android.content.ContentValues;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.hardware.Camera.Size;
import android.location.Location;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.C0116o;
import com.android.common.C0616j;
import com.android.common.C0636m;
import com.android.common.C0701s;
import com.android.common.C0726t;
import com.android.common.C0727u;
import com.android.common.appService.C0339n;
import com.android.common.appService.CameraMember;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.custom.C0421M;
import com.android.common.exif.C0513e;
import com.android.common.exif.C0523o;
import com.android.common.independentFocusExposure.CameraFocusService$FocusModeState;
import com.android.common.p001l.C0623b;
import com.android.common.p014n.C0111p;
import com.android.common.p014n.C0117j;
import com.android.common.p014n.C0659a;
import com.android.common.p015f.C0112h;
import com.android.common.p023b.C0364m;
import com.android.common.p030j.C0608b;
import com.android.common.ui.C0763r;
import com.android.common.ui.MultiFunctionImageView;
import com.android.common.ui.MultiFunctionImageView.Function;
import com.android.common.ui.NubiaProgressWheel;
import com.android.common.ui.RotateImageView;
import com.android.common.ui.RotateLayout;
import com.android.common.ui.ZtemtShutterButton;
import com.p010a.C0090a;

public class C0833d extends C0111p implements C0763r, C0832k, C0116o, C0727u {
    public int aXA = 1;
    private ImageView aXB;
    private int aXC = 0;
    public C0836g aXD = new C0836g(this);
    private RelativeLayout aXE;
    private ZtemtShutterButton aXF;
    private RotateLayout aXG;
    private float aXH = 0.0f;
    private C0608b aXI = null;
    private C0339n aXJ;
    private boolean aXd = false;
    private String aXe = "11";
    private long aXf = 0;
    private C0364m aXg;
    private RelativeLayout aXh;
    private RotateImageView aXi;
    private long aXj;
    private long aXk;
    private TextView aXl;
    private int aXm = 0;
    private String aXn = "0";
    private int aXo = 0;
    private C0839j aXp;
    private MultiFunctionImageView aXq;
    private float aXr = 0.0f;
    private long aXs = 0;
    private C0834e aXt = null;
    private C0636m aXu = null;
    private C0726t aXv = null;
    private boolean aXw = false;
    public C0835f aXx = new C0835f(this);
    private NubiaProgressWheel aXy;
    public int aXz = 1;
    private int mState = 0;

    public void bnt(C0364m c0364m) {
        this.aXg = c0364m;
    }

    public void bnv(C0834e c0834e) {
        this.aXt = c0834e;
    }

    public C0833d(int i) {
        super(i);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        View inflate = layoutInflater.inflate(R.layout.electronic_fno_fragment, viewGroup, false);
        bnG(inflate);
        bnW();
        bnU();
        return inflate;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!this.adB) {
            this.aXJ = new C0339n(getActivity());
            Resources resources = getActivity().getResources();
            this.aXe = resources.getString(R.string.pref_electronic_aperture_value_default);
            this.aXn = resources.getString(R.string.pref_electronic_compensation_value_default);
        }
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.aXp = new C0839j();
            this.aXp.bop(this);
            bnI(this.aXe);
            bnJ(this.aXn);
            this.aXd = false;
            bnW();
            bnR();
            bny();
        }
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        bnW();
        boa();
        bnH(false);
        this.aXp.cancel();
        this.aXp.bop(null);
        try {
            this.adA.UR().m29e().m47J(false);
            this.aXx.removeMessages(74);
            this.aXx.removeCallbacksAndMessages(null);
        } catch (NullPointerException e) {
            C0090a.m1e("ElectronicFnoFragment", "onpause openComputeFrameInterval failed");
        }
        super.onPause();
    }

    private void bnW() {
        if (alq() != UIState.CAMERA_FAMILY) {
            bnS();
            bnX(false);
            this.aXB.setImageBitmap(null);
            this.aXB.setVisibility(8);
            this.aXl.setVisibility(8);
            this.aXq.setVisibility(8);
            this.aXq.lw(Function.IDLE);
            this.aXq.lx(0, false);
            this.aXy.stop();
            this.aXy.setVisibility(8);
            alr();
            this.aXE.setVisibility(8);
        }
    }

    private void bnS() {
        if (alt() != DeviceState.SNAPSHOT_IN_PROGRESS) {
            String string = getString(R.string.electronic_apture_manual);
            if (!this.aXw) {
                string = bnD(((((float) this.aXA) * this.aXH) * ((float) (this.aXo + 10))) / 10.0f) + "\"";
            }
            if (this.aXg != null) {
                this.aXg.Lb(string);
            }
        }
    }

    private void bnG(View view) {
        this.aXv = new C0726t(view, als(), this);
        this.aXB = (ImageView) view.findViewById(R.id.Image_preview);
        bnF(view);
        this.aXq = (MultiFunctionImageView) view.findViewById(R.id.stopButtonView);
        this.aXG = (RotateLayout) view.findViewById(R.id.tripod_tips);
        if (2 != C0421M.dC().dD().bq()) {
            this.aXG.setVisibility(0);
        }
        this.aXy = (NubiaProgressWheel) view.findViewById(R.id.shutter_button_progress_wheel);
        this.aXF = (ZtemtShutterButton) view.findViewById(R.id.stopShutterButton);
        this.aXl = (TextView) view.findViewById(R.id.capturing_time);
        this.aXF.pZ(this.adA.UK().KS());
        this.aXE = (RelativeLayout) view.findViewById(R.id.stopBottombarLayout);
    }

    private void bnF(View view) {
        this.aXh = (RelativeLayout) view.findViewById(R.id.btn_cancel);
        this.aXi = (RotateImageView) view.findViewById(R.id.btn_cancel_icon);
        this.aXh.setOnClickListener(new C0843o(this));
    }

    private void bnU() {
    }

    private void bnR() {
        if (this.adA.SP() == CameraMember.ELETRONIC) {
            try {
                this.adA.UR().m29e().m47J(true);
                this.aXs = this.adA.UR().m29e().m46I();
            } catch (NullPointerException e) {
                this.aXs = 0;
            }
            if (this.aXs == 0) {
                this.aXH = 0.1f;
            } else {
                this.aXH = ((float) this.aXs) / 1000.0f;
            }
            this.aXH = bnE(this.aXH, new float[]{0.15f, 0.25f, 0.4f, 0.5f, 1.0f, 1.35f});
            try {
                bnS();
            } catch (NullPointerException e2) {
                e2.printStackTrace();
            }
            this.aXx.removeMessages(74);
            this.aXx.sendEmptyMessageDelayed(74, 800);
        }
    }

    private float bnE(float f, float[] fArr) {
        if (f <= fArr[0]) {
            return fArr[0];
        }
        if (f >= fArr[fArr.length - 1]) {
            return fArr[fArr.length - 1];
        }
        int i = 0;
        while (i < fArr.length - 1) {
            if (f > fArr[i + 1]) {
                i++;
            } else if (f - fArr[i] >= fArr[i + 1] - f) {
                return fArr[i + 1];
            } else {
                return fArr[i];
            }
        }
        return fArr[0];
    }

    private void bnI(String str) {
        this.aXe = str;
        float parseFloat = Float.parseFloat(str);
        if (parseFloat > 0.0f) {
            this.aXw = false;
            this.aXz = (int) Math.round(Math.pow((double) parseFloat, 2.0d) / 4.0d);
            C0090a.m1e("ElectronicFnoFragment", "==del== mNumWanted: " + this.aXz);
            if (this.aXz >= 8) {
                this.aXA = (this.aXz * (this.aXm + 10)) / 10;
                this.aXo = 0;
            } else {
                this.aXo = this.aXm;
                this.aXA = this.aXz;
            }
        } else {
            this.aXw = true;
            this.aXz = -1;
            this.aXo = 0;
            this.aXm = 0;
            this.aXo = 0;
        }
        this.adA.Wr(this.aXw);
        bnR();
    }

    private void bnJ(String str) {
        this.aXn = str;
        bnR();
        this.aXm = Integer.parseInt(str);
        if (this.aXz < 8) {
            this.aXA = this.aXz;
            this.aXo = this.aXm;
        } else {
            this.aXA = (this.aXz * (this.aXm + 10)) / 10;
            this.aXo = 0;
        }
        bnS();
    }

    private float bnD(float f) {
        return ((float) Math.round(f * 100.0f)) / 100.0f;
    }

    public static C0833d bns() {
        return new C0833d(1);
    }

    protected void ain(int i, boolean z) {
        super.ain(i, z);
        this.aXC = i;
    }

    private SparseArray bnB(Location location, int i, int i2) {
        float parseFloat = Float.parseFloat(this.aXe);
        C0090a.bvo("ElectronicFnoFragment", "mCaptureEndTime " + this.aXj + " mCaptureStartTime " + this.aXk);
        float f = ((float) (this.aXj - this.aXk)) / 1000.0f;
        float Gd = this.adA.Tn().Gd();
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(C0523o.Cc, new C0513e(parseFloat, 0.01f));
        sparseArray.put(C0523o.Cb, new C0513e(f, 0.01f));
        sparseArray.put(C0523o.BY, C0421M.dC().dD().br());
        sparseArray.put(C0523o.BZ, C0421M.dC().dD().bs());
        sparseArray.put(C0523o.Cs, new C0513e(Gd, 0.01f));
        sparseArray.put(C0523o.Cp, Integer.valueOf(i));
        sparseArray.put(C0523o.Cq, Integer.valueOf(i2));
        if (location != null) {
            C0616j.apc(location.getLatitude(), location.getLongitude(), sparseArray);
        }
        return sparseArray;
    }

    private ContentValues bnA(String str, String str2, long j, int i, int i2, Location location) {
        ContentValues contentValues = new ContentValues(9);
        contentValues.put("title", str);
        contentValues.put("_display_name", str + ".jpg");
        contentValues.put("datetaken", Long.valueOf(j));
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put("_data", str2 + "/" + str + ".jpg");
        contentValues.put("width", Integer.valueOf(i));
        contentValues.put("height", Integer.valueOf(i2));
        if (location != null) {
            contentValues.put("latitude", Double.valueOf(location.getLatitude()));
            contentValues.put("longitude", Double.valueOf(location.getLongitude()));
        }
        return contentValues;
    }

    private void bnV() {
        alz();
        bnC();
        if (this.aXw) {
            this.aXq.setVisibility(0);
            this.aXq.ly(true);
            this.aXy.setVisibility(0);
            this.aXy.start();
        } else {
            this.aXq.setVisibility(0);
            this.aXq.lw(Function.PROGRESS);
        }
        this.aXG.setVisibility(8);
        this.aXE.setVisibility(0);
    }

    private void bnC() {
        this.aXF.setEnabled(false);
        this.aXx.removeMessages(3);
        this.aXx.sendEmptyMessageDelayed(3, 500);
    }

    private void bnZ() {
        try {
            alA().Ts().abK(this.aXD, this.adA.SQ());
        } catch (NullPointerException e) {
        }
    }

    private void boa() {
        try {
            alA().Ts().abL(this.aXD);
        } catch (NullPointerException e) {
        }
    }

    public void bnX(boolean z) {
        if (z) {
            this.aXF.setEnabled(false);
            this.aXq.setVisibility(0);
            this.aXq.lw(Function.WAIT);
            this.aXx.removeMessages(6);
            this.aXl.setVisibility(8);
            return;
        }
        bnS();
        bnC();
    }

    public boolean onBackPressed() {
        if (this.aXd || this.aXp.boq() == 0) {
            return super.onBackPressed();
        }
        if (this.aXJ.Yx(1)) {
            this.aXp.cancel();
        }
        return true;
    }

    public boolean Sc() {
        C0090a.m1e("ElectronicFnoFragment", "==del== onShutterBottomClicked  B_shutter " + this.aXw);
        switch (this.aXp.boq()) {
            case 0:
                if (!this.aXw) {
                    alH(DeviceState.SNAPSHOT_IN_PROGRESS);
                }
                bnY();
                break;
            case 2:
                if (this.aXw) {
                    boa();
                    this.aXp.stop();
                    break;
                }
                break;
        }
        return true;
    }

    private void bnY() {
        boolean z;
        boolean z2 = false;
        Size Gv = this.adA.Tr().IP().Gv();
        switch (C0421M.dC().dD().bq()) {
            case 0:
                if (Float.parseFloat(this.aXe) < 16.0f && this.aXs < 300) {
                    z2 = true;
                }
                z = z2;
                break;
            case 1:
                z = false;
                break;
            case 2:
                z = als().getString("pref_camera_anti_shake", "on").equals("on");
                break;
            default:
                z = false;
                break;
        }
        this.aXp.bor(Gv.width, Gv.height, this.aXz, this.aXm, 1, z, this.aXC, C0616j.aoU(this.adA.SQ()));
        this.adA.Tk(true);
        C0616j.apa(getActivity(), "eletronic_1", "ElectronicFnoFragment");
    }

    public void bnu(C0636m c0636m) {
        this.aXu = c0636m;
    }

    private void bnQ() {
        if (!this.aXd) {
            this.adA.SZ(4);
        }
        if (this.aXw) {
            this.adA.Wb(3);
        } else {
            this.adA.Wb(0);
        }
    }

    private void boc() {
        C0090a.bvo("0702", "updateBCaptureTime");
        this.aXl.setText(C0616j.aoV(System.currentTimeMillis() - this.aXf, false));
        this.aXl.setVisibility(0);
        this.aXx.sendEmptyMessageDelayed(6, 1000);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.aXG.getVisibility() == 0) {
            this.aXG.setVisibility(8);
        }
        return false;
    }

    public void bnx() {
        if (this.aXF != null && this.aXE != null && this.aXE.getVisibility() == 0) {
            this.aXF.performClick();
        }
    }

    public void kV(String str, String str2) {
        if (C0616j.apu("pref_camera_electronic_compensation_key", str)) {
            bnJ(str2);
        } else if (C0616j.apu("pref_camera_electronic_aperture_key", str)) {
            bnI(str2);
        } else if (C0616j.apu("b_shutter", str)) {
            this.aXw = C0616j.apu("on", str2);
            this.adA.Wr(this.aXw);
            this.aXo = 0;
            this.aXm = 0;
            this.aXo = 0;
            bnS();
        }
    }

    public void bnw(C0608b c0608b) {
        this.aXI = c0608b;
    }

    private void bnz(Bitmap bitmap) {
        Matrix matrix = new Matrix();
        float width = 720.0f / ((float) (bitmap.getWidth() < bitmap.getHeight() ? bitmap.getWidth() : bitmap.getHeight()));
        matrix.setScale(width, width, ((float) bitmap.getWidth()) * 0.5f, ((float) bitmap.getHeight()) * 0.5f);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        if (this.aXI != null && alu() == FunctionState.INTERVAL) {
            this.aXI.agq(createBitmap, C0701s.ara(-1));
        }
    }

    public void bnO(int i) {
        if (i == 1) {
            alH(DeviceState.IDLE);
            return;
        }
        if (this.adA.SX().JZ() != FunctionState.INTERVAL) {
            this.adA.Wb(2);
        }
        this.adA.Tj(true);
        bnV();
        this.aXB.setVisibility(0);
        bnZ();
        this.aXk = System.currentTimeMillis();
        this.aXj = 0;
        bnH(true);
        this.adA.UR().m31h();
    }

    public void bnK() {
        boa();
        bnH(false);
        if (this.aXw) {
            this.aXq.lz(null);
            this.aXy.stop();
            this.aXy.setVisibility(8);
        } else {
            alH(DeviceState.IDLE);
        }
        this.aXq.lw(Function.WAIT);
        bob();
    }

    public void bnL(Bitmap bitmap) {
        alH(DeviceState.IDLE);
        long currentTimeMillis = System.currentTimeMillis();
        String ara = C0701s.ara(this.adA.UW());
        String aoP = C0616j.aoP(currentTimeMillis);
        Location age = this.adA.Tq().age();
        this.adA.Ti().alX(new C0623b(this.adA, bitmap, bnB(age, bitmap.getWidth(), bitmap.getHeight()), ara + "/", aoP + ".jpg", bnA(aoP, ara, currentTimeMillis, bitmap.getWidth(), bitmap.getHeight(), age), 0, null));
        bnH(false);
        bnz(bitmap);
        this.adA.Ti().alY(null);
        this.aXq.lC();
        if (this.aXt != null) {
            this.aXt.bol();
        }
    }

    private void bnT(float f) {
        int dimensionPixelSize;
        int i = 0;
        if (Math.abs(((double) f) - 1.3333333333333333d) < 0.0010000000474974513d) {
            dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.topbar_height);
            i = getResources().getDimensionPixelSize(R.dimen.bottombar_height);
        } else {
            dimensionPixelSize = 0;
        }
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.aXB.getLayoutParams());
        layoutParams.topMargin = dimensionPixelSize;
        layoutParams.bottomMargin = i;
        this.aXB.setLayoutParams(layoutParams);
    }

    public void bnM(int i, Bitmap bitmap) {
        if (!this.adC) {
            this.aXB.setImageBitmap(bitmap);
            if (!this.aXw) {
                if (i == 100 && this.aXj == 0) {
                    this.aXj = System.currentTimeMillis();
                    this.aXq.lw(Function.PROGRESS);
                    this.aXq.lU(i, true, new C0844p(this));
                } else if (i < 100) {
                    this.aXq.lw(Function.PROGRESS);
                    this.aXq.lx(i, true);
                }
            }
        }
    }

    public void bnP(int i) {
        if (this.aXw) {
            this.aXj = System.currentTimeMillis();
            this.aXq.lz(null);
            this.aXq.lw(Function.WAIT);
            this.aXy.stop();
            this.aXy.setVisibility(8);
            bnQ();
        }
        if (this.aXj == 0) {
            this.aXj = System.currentTimeMillis();
        }
    }

    public void bnN() {
        bnW();
        this.aXq.lB(Function.WAIT);
        if (this.adA.SX().JZ() != FunctionState.INTERVAL) {
            this.adA.Tj(false);
        }
        this.adA.UR().m36n();
    }

    private void bnH(boolean z) {
        if (!z && this.adA.Tc().Ml() == CameraFocusService$FocusModeState.AUTO) {
            this.adA.Tc().MX(CameraFocusService$FocusModeState.CAF);
        }
        this.adA.TE().Lq(z);
        this.adA.TE().Lz(z ? 8 : 0);
    }

    public void bny() {
        Object obj = 1;
        if (!(this.adA.SX().JZ() == FunctionState.SPEED_MULTISHOOTING || this.adA.SX().JZ() == FunctionState.QUALITY_MULTISHOOTING)) {
            obj = null;
        }
        if (this.adA.SY().ty() || r0 != null) {
            this.aXv.aro();
        } else {
            this.aXv.show();
        }
    }

    public void arx() {
        this.adA.SU().Rr();
    }

    public void ahE() {
        if (!(this.adC || this.aXv == null)) {
            this.aXv.aro();
        }
    }

    public void ahF() {
        if (this.aXv != null) {
            this.aXv.show();
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

    private void bob() {
        if (this.aXu != null && this.adA.SX().JZ() == FunctionState.INTERVAL) {
            this.aXu.stop();
        }
    }

    public void setPreviewSize(int i, int i2) {
        if (this.aXB != null) {
            float f;
            if (i > i2) {
                f = ((float) i) / ((float) i2);
            } else {
                f = ((float) i2) / ((float) i);
            }
            bnT(f);
        }
    }
}
