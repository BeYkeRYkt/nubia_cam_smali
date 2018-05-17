package com.android.lightpainting;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.ContentValues;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.hardware.Camera.Size;
import android.location.Location;
import android.os.Bundle;
import android.os.Debug;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.ActivityBase;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.CameraBufferManager;
import com.android.common.appService.C0329e;
import com.android.common.appService.C0339n;
import com.android.common.appService.CameraMember;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.custom.C0417I;
import com.android.common.custom.C0421M;
import com.android.common.exif.C0513e;
import com.android.common.exif.C0523o;
import com.android.common.independentutil.IndependenceUtil;
import com.android.common.p001l.C0623b;
import com.android.common.p014n.C0111p;
import com.android.common.p030j.C0608b;
import com.android.common.p034q.C0696a;
import com.android.common.p034q.C0697b;
import com.android.common.setting.ListPreference;
import com.android.common.ui.C0474A;
import com.android.common.ui.C0760l;
import com.android.common.ui.LightStepSeekBar;
import com.android.common.ui.MultiFunctionImageView;
import com.android.common.ui.MultiFunctionImageView.Function;
import com.android.common.ui.NubiaProgressWheel;
import com.android.common.ui.RotateImageView;
import com.android.common.ui.RotateLayout;
import com.android.common.ui.ZtemtShutterButton;
import com.android.common.ui.ad;
import com.p010a.C0090a;
import java.io.IOException;

public class C0943d extends C0111p implements C0760l {
    private static long aYk = 280;
    private TextView aYA = null;
    private long aYB = 0;
    private String aYC = null;
    private C0697b aYD = null;
    public int aYE = 1;
    private SeekBar aYF = null;
    private TextView aYG = null;
    private String aYH = null;
    private String aYI = null;
    private long aYJ = 0;
    private C0945f aYK = new C0945f(this);
    private LinearLayout aYL;
    private LightStepSeekBar aYM;
    private LinearLayout aYN;
    private Location aYO = null;
    private MultiFunctionImageView aYP;
    private C0946g aYQ = new C0946g(this);
    private ad aYR;
    private long aYS = 0;
    private NubiaProgressWheel aYT;
    private TextView aYU = null;
    public int aYV = 0;
    private TextView aYW = null;
    private Size aYX = null;
    private long aYY = 0;
    private ImageView aYZ = null;
    private final float aYl = 0.4f;
    private final float aYm = 1.0f;
    private long aYn = 1000;
    private Bitmap aYo = null;
    private boolean aYp = true;
    private long aYq = 0;
    private ImageView aYr;
    private byte[] aYs;
    private CameraBufferManager aYt = null;
    private RelativeLayout aYu;
    private RotateImageView aYv;
    private C0696a aYw = null;
    private C0947h aYx;
    private C0948i aYy;
    private RotateLayout aYz = null;
    private int aZa = 0;
    private RelativeLayout aZb = null;
    private ZtemtShutterButton aZc = null;
    private String aZd = null;
    private RotateLayout aZe;
    private ImageView aZf = null;
    private ImageView aZg = null;
    private RelativeLayout aZh = null;
    private TextView aZi = null;
    private float aZj = 0.0f;
    private C0608b aZk;
    private int aZl = 0;
    private SeekBar aZm = null;
    private String aZn = null;
    private C0339n aZo;
    private long aZp = 0;
    private long aZq = aYk;
    private int mState = 0;

    private void bpg() {
        if (this.aZk != null) {
            return;
        }
        if (IndependenceUtil.afZ || IndependenceUtil.aga) {
            this.aZk = new C0608b((ActivityBase) getActivity());
            this.aZk.agp(4);
        }
    }

    private void boP() {
        this.aZk.cancel();
        bpl();
    }

    private void bpj(C0608b c0608b, Bitmap bitmap) {
        long currentTimeMillis = System.currentTimeMillis();
        if (c0608b != null && currentTimeMillis - this.aYS > this.aYn) {
            if (this.aZl != 0) {
                Matrix matrix = new Matrix();
                matrix.setRotate((float) this.aZl, ((float) bitmap.getWidth()) * 0.5f, ((float) bitmap.getHeight()) * 0.5f);
                try {
                    bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                } catch (Throwable th) {
                    C0090a.bvk("LightDrawFragment", "Failed to rotate bitmap", th);
                }
            }
            C0090a.bvo("time1___", "BITMAP_PREPARED 2");
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            if ((width & 15) != 0) {
                width = ((width >> 4) + 1) << 4;
            }
            if ((height & 15) != 0) {
                height = ((height >> 4) + 1) << 4;
            }
            Bitmap createBitmap = Bitmap.createBitmap(width, height, Config.ARGB_8888);
            new Canvas(createBitmap).drawBitmap(bitmap, new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), new Rect(0, 0, width, height), null);
            this.aZk.agq(createBitmap, C0701s.ara(CameraMember.LIGHTDRAW.aan()));
            this.aYS = currentTimeMillis;
            if (!boR()) {
                C0090a.bvo("LightDrawFragment", "Storage not enought,stop making video");
                bpC();
                try {
                    this.aYQ.removeMessages(1);
                } catch (NullPointerException e) {
                    C0090a.bvo("LightDrawFragment", "removeMessages Failed");
                }
            }
        }
    }

    private boolean boR() {
        this.adA.Ti().alY(null);
        if (this.adA.Tl()) {
            return true;
        }
        C0090a.bvm("LightDrawFragment", "Storage lower than 50MB");
        return false;
    }

    public C0943d(int i) {
        super(i);
    }

    public static C0943d boM() {
        return new C0943d(1);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        this.aZd = getString(R.string.light_draw_taken);
        this.aZn = getString(R.string.light_draw_wanted);
        this.aYC = getString(R.string.light_draw_fno);
        this.aZo = new C0339n(getActivity());
        View inflate = layoutInflater.inflate(R.layout.back_fun_light_draw_fragment, viewGroup, false);
        bph(inflate);
        return inflate;
    }

    private void bph(View view) {
        boV(view);
        boW(view);
        bpa(view);
        this.aZe = (RotateLayout) view.findViewById(R.id.tripod_tips);
        this.aZe.setVisibility(0);
        this.aYA = (TextView) view.findViewById(R.id.countdown_text);
        this.aYz = (RotateLayout) view.findViewById(R.id.countdown_layout);
        this.aZg = (ImageView) view.findViewById(R.id.torch_btn);
        this.aZf = (ImageView) view.findViewById(R.id.torch_bg);
        this.aZh = (RelativeLayout) view.findViewById(R.id.torch_layout);
        this.aZh.setOnClickListener(new C0950k(this));
        bpd(view);
        this.aZi = (TextView) view.findViewById(R.id.torch_txt);
        bpq();
    }

    private void bpe() {
        Object[] objArr = new Object[]{this.aYN, this.aYM};
        this.aYR = new ad(objArr, "translationY", 0.0f, (float) getResources().getDimensionPixelSize(R.dimen.dimens_66), 500);
        this.aYR.rF(new C0951l(this));
    }

    private void bpw(int i) {
        if (C0421M.dC().dD().ch()) {
            this.aYL.setVisibility(i);
        }
    }

    private void bpd(View view) {
        if (C0421M.dC().dD().ch()) {
            this.aYL = (LinearLayout) view.findViewById(R.id.light_step_layout);
            this.aYL.setVisibility(0);
            this.aYM = (LightStepSeekBar) view.findViewById(R.id.light_step_seekbar);
            this.aYM.jg(this.adA.SR().tp("pref_camera_light_draw_step"), false);
            this.aYM.ji(this);
            this.aYr = (ImageView) view.findViewById(R.id.arrow_tip);
            this.aYN = (LinearLayout) view.findViewById(R.id.light_step_title);
            this.aYN.setOnClickListener(new C0952m(this));
        }
    }

    private void bpa(View view) {
        this.aYu = (RelativeLayout) view.findViewById(R.id.btn_cancel);
        this.aYv = (RotateImageView) view.findViewById(R.id.btn_cancel_icon);
        this.aYu.setOnClickListener(new C0953n(this));
    }

    public void bpy(boolean z) {
        if (z) {
            this.aYT.stop();
            this.aYT.setVisibility(8);
            this.aYP.lz(null);
            this.aYP.lw(Function.WAIT);
            return;
        }
        this.aYT.stop();
        this.aYT.setVisibility(8);
        this.aYP.lA();
        this.aYP.lB(Function.WAIT);
        this.aYP.setVisibility(8);
    }

    private void boW(View view) {
        this.aYU = (TextView) view.findViewById(R.id.num_stored);
        this.aYU.setText(this.aZd + "0");
        this.aYW = (TextView) view.findViewById(R.id.num_wanted);
        this.aYW.setText(this.aZn + "0");
        this.aYG = (TextView) view.findViewById(R.id.text_iso);
        this.aYG.setText(this.aYC + "1/5");
        this.aZm = (SeekBar) view.findViewById(R.id.want_taken_seekbar);
        this.aZm.setOnSeekBarChangeListener(new C0954o(this));
        this.aYF = (SeekBar) view.findViewById(R.id.siso_seekbar);
        this.aYF.setOnSeekBarChangeListener(new C0955p(this));
    }

    private void bps() {
        bpf();
    }

    private void bpf() {
        this.aZc.pZ(this.adA.UK().KS());
    }

    private void boV(View view) {
        this.aYZ = (ImageView) view.findViewById(R.id.light_draw_preview_image);
        this.aZb = (RelativeLayout) view.findViewById(R.id.stopBottombarLayout);
        this.aZc = (ZtemtShutterButton) view.findViewById(R.id.stopShutterButton);
        this.aYT = (NubiaProgressWheel) view.findViewById(R.id.shutter_button_progress_wheel);
        this.aYP = (MultiFunctionImageView) view.findViewById(R.id.stopButtonView);
    }

    private void bpq() {
        this.adE = new C0474A[0];
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!this.adB) {
        }
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            bps();
            if (alq() != UIState.CAMERA_FAMILY) {
                alr();
                boO(true);
            }
            bpe();
            this.mState = 0;
        }
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        if (this.aYt != null) {
            this.aYB = System.currentTimeMillis() - this.aYB;
            bpn(this.aYt);
        }
        this.aYR.release();
        bpD();
        bpE();
        bpv();
        bpF();
        bpG(true);
        releaseBuffer();
        bpm();
        this.adA.WW(0);
        bpl();
        try {
            this.aYQ.removeMessages(74);
            this.aYQ.removeMessages(1);
            this.aYQ.removeMessages(106);
        } catch (NullPointerException e) {
            C0090a.m1e("LightDrawFragment", "onpause openComputeFrameInterval failed");
        }
        super.onPause();
    }

    private void bpl() {
        if (this.aZk != null) {
            this.aZk.release();
            this.aZk = null;
        }
    }

    public void releaseBuffer() {
        if (this.aYt != null) {
            this.aYt.releaseSlowShuttleBuffer();
            this.aYt = null;
        }
    }

    private void bpm() {
        this.aYB = 0;
        this.aZj = 0.0f;
    }

    private void bpv() {
        if (alq() != UIState.CAMERA_FAMILY) {
            bpy(false);
            this.aZh.setVisibility(8);
            this.aZb.setVisibility(8);
            alr();
            this.aYQ.removeMessages(1);
            this.aYZ.setImageBitmap(null);
            this.aYZ.setVisibility(8);
            bpw(0);
            boU(true);
        }
    }

    private void boU(boolean z) {
        if (z) {
            alF();
        } else {
            alG();
        }
    }

    private void bpG(boolean z) {
        this.mState = 3;
        if (this.aYD != null) {
            this.aYD.ane();
            this.aYD = null;
        }
        if (this.aYw == null) {
            return;
        }
        if (z) {
            this.aYw.and();
            this.aYw = null;
            return;
        }
        this.aYw.anc();
    }

    private void bpF() {
        try {
            this.adA.Ts().abD(this.aYK);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
    }

    protected void ain(int i, boolean z) {
        super.ain(i, z);
        this.aZa = i;
    }

    private void bpn(CameraBufferManager cameraBufferManager) {
        int i;
        int i2;
        long currentTimeMillis;
        String ara;
        String aoP;
        C0329e c0329e;
        Bitmap bitmap;
        SparseArray boT;
        String str;
        String str2;
        int aoU = (C0616j.aoU(this.adA.SQ()) + this.aZa) % 360;
        switch (aoU) {
            case 0:
            case 180:
                i = this.aYX.width;
                i2 = this.aYX.height;
                break;
            default:
                i2 = this.aYX.width;
                i = this.aYX.height;
                break;
        }
        if (this.aYo != null && this.aYo.getWidth() == i) {
            if (this.aYo.getHeight() != i2) {
            }
            this.aYt.getSlowShuttleBitmap(aoU, this.aYo);
            currentTimeMillis = System.currentTimeMillis();
            ara = C0701s.ara(this.adA.UW());
            aoP = C0616j.aoP(currentTimeMillis);
            this.aYO = this.adA.Tq().age();
            c0329e = this.adA;
            bitmap = this.aYo;
            boT = boT();
            str = ara + "/";
            str2 = aoP + ".jpg";
            this.adA.Ti().alX(new C0623b(c0329e, bitmap, boT, str, str2, boS(aoP, ara, currentTimeMillis, this.aYo.getWidth(), this.aYo.getHeight(), this.aYO), 0, new C0944e()));
        }
        try {
            this.aYo = Bitmap.createBitmap(i, i2, Config.ARGB_8888);
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
            try {
                C0090a.bvo("LightDrawFragment", "dump hprof for LightDrawFragment start!");
                Debug.dumpHprofData("/sdcard/camera_" + System.currentTimeMillis() + ".hprof");
                C0090a.bvo("LightDrawFragment", "dump hprof for LightDrawFragment end!");
            } catch (IOException e2) {
                C0090a.m1e("LightDrawFragment", "dump hprof fail " + e2.getMessage());
            }
        }
        this.aYt.getSlowShuttleBitmap(aoU, this.aYo);
        currentTimeMillis = System.currentTimeMillis();
        ara = C0701s.ara(this.adA.UW());
        aoP = C0616j.aoP(currentTimeMillis);
        this.aYO = this.adA.Tq().age();
        c0329e = this.adA;
        bitmap = this.aYo;
        boT = boT();
        str = ara + "/";
        str2 = aoP + ".jpg";
        this.adA.Ti().alX(new C0623b(c0329e, bitmap, boT, str, str2, boS(aoP, ara, currentTimeMillis, this.aYo.getWidth(), this.aYo.getHeight(), this.aYO), 0, new C0944e()));
    }

    private ContentValues boS(String str, String str2, long j, int i, int i2, Location location) {
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

    private SparseArray boT() {
        float f = ((float) this.aYB) / 1000.0f;
        float Gd = this.adA.Tn().Gd();
        float UU = this.adA.UU();
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(C0523o.Cc, new C0513e(UU, 0.01f));
        sparseArray.put(C0523o.Cs, new C0513e(Gd, 0.01f));
        sparseArray.put(C0523o.Cb, new C0513e(f, 0.01f));
        sparseArray.put(C0523o.BY, C0421M.dC().dD().br());
        sparseArray.put(C0523o.BZ, C0421M.dC().dD().bs());
        if (((C0616j.aoU(this.adA.SQ()) + this.aZa) % 360) % 180 == 0) {
            sparseArray.put(C0523o.Cp, Integer.valueOf(this.aYX.width));
            sparseArray.put(C0523o.Cq, Integer.valueOf(this.aYX.height));
        } else {
            sparseArray.put(C0523o.Cp, Integer.valueOf(this.aYX.height));
            sparseArray.put(C0523o.Cq, Integer.valueOf(this.aYX.width));
        }
        if (this.aYO != null) {
            C0616j.apc(this.aYO.getAltitude(), this.aYO.getLongitude(), sparseArray);
        }
        return sparseArray;
    }

    private void bpk() {
        C0090a.m1e("LightDrawFragment", "==refreshUnitExposureTime : " + 0);
        this.aZj = 0.06f;
        this.aYQ.removeMessages(74);
        this.aYQ.sendEmptyMessageDelayed(74, 1000);
        this.aZj = boY(this.aZj, new float[]{0.05f, 0.08f, 0.1f, 0.25f, 0.4f, 0.5f, 1.0f, 1.35f});
        C0090a.m1e("LightDrawFragment", "refreshUnitExposureTime: " + this.aZj);
    }

    private float boY(float f, float[] fArr) {
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

    public boolean onBackPressed() {
        if (bpD()) {
            alF();
            return true;
        } else if (this.aYt == null) {
            return super.onBackPressed();
        } else {
            if (this.aZo.Yx(1)) {
                boQ();
            }
            return true;
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.mState == 0 || i != 82) {
            return super.onKeyDown(i, keyEvent);
        }
        return true;
    }

    private void bpr(int i) {
        String tB = this.adA.SY().tB();
        if ("-1".equals(tB)) {
            this.aYn = 1000;
            return;
        }
        this.aYn = (long) (Float.parseFloat(tB) * 1000.0f);
        this.adA.WW(i);
        this.adA.TA();
        this.adA.TB();
    }

    public boolean Sc() {
        if (this.adA == null) {
            C0090a.bvo("LightDrawFragment", "appService is Null");
        }
        if (!this.adA.SO() && this.adA.Tl() && alq() == UIState.NORMAL && ((alu() == FunctionState.NORMAL || alu() == FunctionState.DELAY_SHOOT) && (alt() == DeviceState.IDLE || alt() == DeviceState.SNAPSHOT_IN_PROGRESS))) {
            switch (this.mState) {
                case 0:
                    bpg();
                    bpz();
                    break;
                case 1:
                    if (this.aZo.Yx(0)) {
                        bpC();
                        break;
                    }
                    break;
                case 2:
                    if (bpD()) {
                        alF();
                        break;
                    }
                    break;
            }
            if (this.aZe != null && this.aZe.getVisibility() == 0) {
                this.aZe.setVisibility(8);
            }
            return true;
        }
        C0090a.bvo("LightDrawFragment", "Activity pause: " + this.adA.SO() + "storageLeftEnough: " + this.adA.Tl() + "; uiState: " + alq() + "; functionState: " + alu() + "; DeviceState: " + alt());
        return true;
    }

    private void bpz() {
        this.adA.Tj(true);
        bpt();
        this.adA.UR().m31h();
        this.mState = 1;
        this.adA.Wb(2);
        this.aYX = this.adA.Tr().IP().Gv();
        this.aYB = System.currentTimeMillis();
        this.aYS = this.aYB;
        boZ(this.aYX);
        bpr(1);
        bpc(this.aYX);
        bpb(this.aYX);
        boU(false);
        bpk();
        this.aZl = this.aZa;
        bpB(this.aYX);
        bpA();
        bpx();
    }

    private void bpC() {
        this.adA.Tj(false);
        C0616j.apa(getActivity(), "lightdraw_1", "LightDrawFragment");
        bpE();
        boU(false);
        bpr(0);
        bpF();
        this.adA.Wb(3);
        bpy(true);
        this.adA.UR().m36n();
        bpG(false);
        this.aYB = System.currentTimeMillis() - this.aYB;
    }

    private void boQ() {
        bpE();
        bpr(0);
        bpF();
        bpG(true);
        releaseBuffer();
        bpm();
        this.aYw = null;
        bpv();
        this.adA.UR().m36n();
        this.adA.Tj(false);
        this.mState = 0;
    }

    private void bpB(Size size) {
        this.adA.Ts().abE(this.aYK, this.adA.SQ());
        if (this.aYs == null) {
            this.aYs = new byte[(((size.width * size.height) * 3) / 2)];
        }
        this.adA.Tr().IK(this.aYs);
        this.aZp = System.currentTimeMillis();
    }

    private void bpb(Size size) {
        if (this.aYw == null) {
            this.aYw = new C0696a(this.aYt, this.aYQ, size);
        }
    }

    private void bpc(Size size) {
        if (this.aYD == null) {
            C0417I c0417i = new C0417I();
            c0417i.width = size.width;
            c0417i.height = size.height;
            this.aYD = new C0697b(this.aYt, this.aYQ, c0417i);
        }
    }

    private void boZ(Size size) {
        int i = 20;
        int i2 = ((size.width * size.height) * 3) / 2;
        if (20 > ((int) ((boX() / ((long) i2)) / 3))) {
            i = (int) ((boX() / ((long) i2)) / 3);
        }
        if (i > 524288000 / i2) {
            i = 524288000 / i2;
        }
        C0090a.m1e("LightDrawFragment", "==info== proper buffer num2: " + i);
        if (this.aYt == null) {
            this.aYt = new CameraBufferManager();
            this.aYt.initSlowShuttleBuffer(i2, i, size.width, size.height);
            this.aYt.setSlowShuttleISO(1, this.aYE);
            this.aYt.setLumaThreshold(8);
            this.aYt.setOperatorMode(1);
        }
    }

    private long boX() {
        ActivityManager activityManager = (ActivityManager) this.adA.SN().getSystemService("activity");
        MemoryInfo memoryInfo = new MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.availMem;
    }

    private void bpt() {
        this.aZe.setVisibility(8);
        alz();
        this.aZb.setVisibility(0);
        this.aYT.setVisibility(0);
        this.aYT.start();
        this.aYP.setVisibility(0);
        this.aYP.ly(true);
        bpw(8);
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.aZe != null && this.aZe.getVisibility() == 0) {
            this.aZe.setVisibility(8);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void boN() {
        if (this.aZb != null && this.aZb.getVisibility() == 0) {
            this.aZc.performClick();
        }
    }

    private void bpu(boolean z) {
        this.aYz.setVisibility(z ? 0 : 8);
        bpo("");
    }

    private void bpo(CharSequence charSequence) {
        this.aYA.setText(charSequence);
    }

    private boolean bpD() {
        if (this.mState != 2) {
            return false;
        }
        this.aYx.cancel();
        this.mState = 0;
        boO(true);
        this.adA.SX().JW(FunctionState.DELAY_SHOOT);
        bpu(false);
        return true;
    }

    protected void alG() {
        super.alG();
        this.adD.Kb(UIState.NORMAL, FunctionState.NORMAL, DeviceState.IDLE, DeviceState.SNAPSHOT_IN_PROGRESS);
    }

    protected void alF() {
        super.alF();
        this.adD.Ka();
    }

    private void bpp(String str) {
        if (!this.adC && alA().Tr() != null) {
            alA().Tn().Hb(str);
            alA().Tr().IQ(alA().Tn());
            if ("torch".equals(str)) {
                C0090a.bvo("LightDrawFragment", "torchtime = " + this.aZq);
                this.aYQ.sendEmptyMessageDelayed(106, this.aZq);
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void bpA() {
        /*
        r4 = this;
        r0 = r4.adA;
        r0 = r0.SR();
        r1 = "pref_camera_flashmode_for_lightpainting_key";
        r0 = r0.tp(r1);
        if (r0 == 0) goto L_0x0015;
    L_0x000f:
        r1 = r4.bpi();
        if (r1 == 0) goto L_0x0016;
    L_0x0015:
        return;
    L_0x0016:
        r1 = r0.vc();
        r2 = 1;
        if (r1 <= r2) goto L_0x0034;
    L_0x001d:
        r0 = r0.tw();
        r0 = java.lang.Integer.parseInt(r0);
        r1 = new com.android.lightpainting.i;
        r0 = r0 * 1000;
        r2 = (long) r0;
        r1.<init>(r4, r2);
        r4.aYy = r1;
        r0 = r4.aYy;
        r0.start();
    L_0x0034:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.lightpainting.d.bpA():void");
    }

    private void bpE() {
        if (this.aYy != null) {
            this.aYy.cancel();
            this.aYy = null;
        }
    }

    private void bpx() {
        ListPreference tp = this.adA.SR().tp("pref_camera_flashmode_for_lightpainting_key");
        if (tp != null) {
            if (tp.vc() == 0 || bpi()) {
                this.aZh.setVisibility(8);
                this.aZh.setClickable(false);
            } else if (tp.vc() == 1) {
                this.aZh.setVisibility(0);
                this.aZh.setClickable(true);
                this.aZg.setAlpha(1.0f);
                this.aZf.setVisibility(0);
                this.aZi.setText("M");
            } else {
                this.aZh.setVisibility(0);
                this.aZh.setClickable(true);
                this.aZg.setAlpha(1.0f);
                this.aZf.setVisibility(8);
                this.aZi.setText(tp.tw() + "");
            }
        }
    }

    public void jj(int i) {
        this.adA.SZ(4);
    }

    private boolean bpi() {
        String string = getString(R.string.pref_camera_light_draw_step_default);
        if (!C0421M.dC().dD().ch() || string.equals(als().getString("pref_camera_light_draw_step", string))) {
            return false;
        }
        return true;
    }

    void boO(boolean z) {
        if (this.aYM != null) {
            this.aYM.setEnabled(z);
            this.aYN.setEnabled(z);
        }
    }
}
