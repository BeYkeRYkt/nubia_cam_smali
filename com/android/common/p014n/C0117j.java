package com.android.common.p014n;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.FragmentTransaction;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.BitmapDrawable;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.PictureCallback;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.android.camera.R;
import com.android.common.ActivityBase;
import com.android.common.C0116o;
import com.android.common.C0616j;
import com.android.common.C0636m;
import com.android.common.C0700r;
import com.android.common.appService.C0000c;
import com.android.common.appService.C0002Q;
import com.android.common.appService.C0113V;
import com.android.common.appService.C0303E;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.appService.IDualCameraControl$DualCameraMode;
import com.android.common.appService.aa;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.custom.C0421M;
import com.android.common.independentutil.IndependenceUtil;
import com.android.common.p012e.C0458b;
import com.android.common.p015f.C0112h;
import com.android.common.p030j.C0608b;
import com.android.common.setting.C0115d;
import com.android.common.setting.ListPreference;
import com.android.common.setting.PreferenceGroup;
import com.android.common.setting.RecordLocationPreference;
import com.android.common.ui.C0114F;
import com.android.common.ui.C0474A;
import com.android.common.ui.C0730q;
import com.android.common.ui.C0731C;
import com.android.common.ui.C0748X;
import com.android.common.ui.C0749Z;
import com.android.common.ui.FaceView;
import com.android.common.ui.RotateLayout;
import com.android.common.ui.ac;
import com.android.common.ui.ah;
import com.p010a.C0090a;
import java.util.ArrayList;
import java.util.List;

public abstract class C0117j extends C0111p implements C0112h, C0113V, C0114F, C0115d, C0116o {
    protected C0111p abS = null;
    protected C0111p abT = null;
    protected C0636m abU = null;
    private Button abV = null;
    private ac abW = null;
    private AlertDialog abX = null;
    private LinearLayout abY = null;
    RelativeLayout abZ;
    private boolean acA = true;
    private CameraMember acB = null;
    private boolean acC = false;
    protected RelativeLayout acD = null;
    private C0671m acE = null;
    private String[] acF = null;
    protected TextView acG = null;
    private AnimatorSet acH = null;
    private Toast acI = null;
    private String[] acJ = null;
    protected RelativeLayout acK = null;
    private AnimatorSet acL = null;
    private RelativeLayout acM = null;
    private RelativeLayout acN = null;
    private RelativeLayout acO;
    private TextView acP;
    public RotateLayout acQ;
    public TextView acR;
    private LinearLayout acS = null;
    private boolean acT = true;
    protected C0608b acU = null;
    private C0303E acV = null;
    protected TextView aca = null;
    private View acb = null;
    private String acc = null;
    protected int acd = 2;
    private TextView ace = null;
    private RotateLayout acf = null;
    private boolean acg = false;
    private FaceView ach = null;
    private FrameLayout aci;
    private FrameLayout acj;
    RelativeLayout ack;
    private C0670l acl = null;
    protected GridView acm;
    private ImageView acn = null;
    private View aco = null;
    private View acp = null;
    private C0669k acq = null;
    private boolean acr = false;
    private boolean acs = false;
    private boolean act = false;
    private CameraMember acu = null;
    protected RotateLayout acv;
    protected RelativeLayout acw = null;
    private ListView acx = null;
    private C0672n acy = null;
    private boolean acz = false;

    protected abstract C0111p[] ajd();

    protected abstract void ajq();

    public C0117j(int i) {
        super(i);
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i = 0;
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB || getActivity().isDestroyed()) {
            C0090a.bvo("AbstractFamilyMemberFragment", "activity has been Destroyed: " + getActivity().isDestroyed());
            return null;
        }
        C0090a.bvo("AbstractFamilyMemberFragment", "onCreateView");
        View inflate = layoutInflater.inflate(R.layout.family_member_fragment, viewGroup, false);
        ajw(inflate);
        ajq();
        if (this.acz) {
            C0111p[] ajd = ajd();
            int length = ajd.length;
            while (i < length) {
                C0111p c0111p = ajd[i];
                if (c0111p != null) {
                    c0111p.aiV(this.acu, this.acB, this.adA.SP());
                }
                i++;
            }
        }
        return inflate;
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            C0616j.apY(this.adA.SP() + "", getActivity());
            ajn();
            this.adA.TE().Lj(((ActivityBase) this.adA.SN()).arW());
            this.adA.TE().Le();
            this.adA.WZ();
            this.adA.SY().tO(this);
            Sa();
            ajT();
            St(false);
            if (alq() == UIState.CAMERA_FAMILY) {
                RS(true, false);
            } else {
                aja();
            }
            this.acg = false;
            C0458b.adi().adk();
            RA(true);
        }
    }

    public void onCreate(Bundle bundle) {
        C0090a.bvo("AbstractFamilyMemberFragment", "onCreate");
        super.onCreate(bundle);
        if (!this.adB) {
            this.act = false;
            this.acJ = null;
        }
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        Ru(true);
        C0616j.apX(this.adA.SP() + "", getActivity());
        RD(true);
        ajJ();
        this.acT = true;
        ajK();
        if (this.abX != null && this.abX.isShowing()) {
            this.abX.cancel();
        }
        if (this.abW != null && this.abW.isShowing()) {
            this.abW.cancel();
        }
        this.adA.SY().tT(this);
        this.adA.TE().Lw();
        if (this.acI != null) {
            this.acI.cancel();
            this.acI = null;
        }
        this.adA.Wf();
        this.adA.SM().arD().SG();
        super.onPause();
    }

    private void ajJ() {
        if (this.acU != null) {
            this.acU.release();
            this.acU = null;
        }
    }

    private void ajw(View view) {
        this.aci = (FrameLayout) view.findViewById(R.id.family_member_content);
        this.acj = (FrameLayout) view.findViewById(R.id.family_member_top_bar);
        this.ack = (RelativeLayout) view.findViewById(R.id.foucus_face_content);
        this.abZ = (RelativeLayout) view.findViewById(R.id.center_widget_in_preview);
        aju(view);
        ajr(view);
        ajp(view);
        ajo(view);
        ajs(view);
        this.adE = new C0474A[]{this.ach};
        ajm(view);
        ajx(view);
        akc();
    }

    private void ajx(View view) {
        if (this.acV == null) {
            this.acV = new C0303E(view, this.adA);
            this.acV.aax(this.adA.SM().ary());
        }
        ajS();
    }

    private void ajS() {
        ajP();
        ajR();
    }

    private void ajP() {
        if (this.acV != null) {
            if (als().getString("pref_zoom_function_key", "off").equals("on") && CameraMember.aat(this.adA.SP(), this.adA.SQ())) {
                this.acV.aay(true);
            } else {
                this.acV.aay(false);
            }
        }
    }

    private void ajR() {
        if (this.adA != null && this.acV != null) {
            if (this.adA.SP() == CameraMember.PANORAMA) {
                this.acV.aaz(true);
            } else {
                this.acV.aaz(false);
            }
        }
    }

    protected void ajl() {
        if (this.acV != null) {
            this.acV.aaA();
        }
    }

    private void ajm(View view) {
        this.abV = (Button) view.findViewById(R.id.set_screen_button);
        this.abV.setOnClickListener(new C0678t(this));
    }

    private void ajV() {
        if (this.abX != null) {
            this.abX.show();
        } else {
            this.abX = new Builder(getActivity()).setMessage(R.string.back_light_off_set_tip).setPositiveButton(R.string.dialog_ok, new C0679u(this)).setNegativeButton(R.string.review_cancel, new C0680v(this)).show();
        }
    }

    private void ajU() {
        if (this.abW != null) {
            this.abW.show();
        } else if (!this.adC) {
            this.abW = new ac(getActivity(), R.layout.show_null, 1);
            Window window = this.abW.getWindow();
            LayoutParams attributes = window.getAttributes();
            window.setGravity(51);
            attributes.x = 0;
            attributes.y = 0;
            attributes.width = 1;
            attributes.height = 1;
            attributes.alpha = 0.0f;
            window.setAttributes(attributes);
            this.abW.setOnKeyListener(new C0681w(this));
            this.abW.setOnCancelListener(new C0682x(this));
            this.abW.show();
        }
    }

    public String[] Rz(C0329e c0329e) {
        if (this.acJ != null && !this.acs) {
            return this.acJ;
        }
        String TG = c0329e.TG();
        C0090a.bvo("jyzhou", "versionName = " + TG);
        if (alJ(als()) == 0 || TG == null || !TG.equals(c0329e.UY())) {
            this.acJ = C0616j.apz(c0329e);
            alK(this.acJ, als());
            if (!TG.equals(c0329e.UY())) {
                c0329e.Wk(TG);
            }
        } else {
            this.acJ = aje(c0329e);
        }
        return ajb(c0329e.SR(), this.acJ);
    }

    private String[] ajb(PreferenceGroup preferenceGroup, String[] strArr) {
        if (IndependenceUtil.afZ) {
            return strArr;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if (preferenceGroup.tp(str) != null) {
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private String[] aje(C0329e c0329e) {
        String[] apz = C0616j.apz(c0329e);
        int alJ = alJ(als());
        if (alJ != apz.length) {
            alK(apz, als());
            return apz;
        } else if (alJ <= 0) {
            return null;
        } else {
            ArrayList arrayList = new ArrayList();
            PreferenceGroup SR = c0329e.SR();
            for (int i = 0; i < alJ; i++) {
                String string = als().getString("setting" + i, null);
                if (SR.tp(string) != null) {
                    arrayList.add(string);
                }
            }
            return (String[]) arrayList.toArray(new String[arrayList.size()]);
        }
    }

    private void aju(View view) {
        this.acM = (RelativeLayout) view.findViewById(R.id.settings);
        this.acM.setOnClickListener(new C0683y(this));
        this.acN = (RelativeLayout) view.findViewById(R.id.setting_bg);
        this.acE = new C0671m();
        this.acl = new C0670l(this);
        this.acm = (GridView) view.findViewById(R.id.grid_setting_view);
        this.acm.setAdapter(this.acl);
        this.acm.setOnItemClickListener(this.acE);
        this.aca = (TextView) view.findViewById(R.id.close_settings);
        this.aca.setOnClickListener(new C0684z(this));
        this.acw = (RelativeLayout) view.findViewById(R.id.btn_more_settings);
        if (this.adA.VC() || this.adA.SM().arE()) {
            this.acw.setVisibility(8);
        }
        this.acw.setOnClickListener(new C0637A(this));
    }

    private void ajr(View view) {
        this.acn = (ImageView) view.findViewById(R.id.grid_view);
    }

    private void ajp(View view) {
        this.ach = (FaceView) view.findViewById(R.id.face_view);
        if (TextUtils.equals("on", this.adA.SY().tF())) {
            boolean z;
            this.ach.sT(this.adA.TN());
            CameraInfo cameraInfo = C0384o.Jr().Ju()[this.adA.SQ()];
            FaceView faceView = this.ach;
            if (cameraInfo.facing == 1) {
                z = true;
            } else {
                z = false;
            }
            faceView.sU(z);
            this.ach.sV();
            this.ach.clear();
            this.ach.setVisibility(0);
            return;
        }
        this.ach.clear();
        this.ach.setVisibility(8);
    }

    private void ajo(View view) {
        this.ace = (TextView) view.findViewById(R.id.countdown_text);
        this.acf = (RotateLayout) view.findViewById(R.id.countdown_layout);
        this.acb = view.findViewById(R.id.countdownContainer);
    }

    private void ajT() {
        if (this.adA.SQ() != C0384o.Jr().Jt()) {
            this.adA.TE().Lz(0);
        }
    }

    private void ajs(View view) {
        this.acO = (RelativeLayout) view.findViewById(R.id.ztemt_intervalometer_information);
        this.acQ = (RotateLayout) view.findViewById(R.id.information_num_layout);
        this.acR = (TextView) view.findViewById(R.id.information_num);
        this.acv = (RotateLayout) view.findViewById(R.id.intervalometer_last_time_layout);
        this.acP = (TextView) view.findViewById(R.id.intervalometer_last_time_text);
    }

    public void aer(boolean z, long j, long j2) {
        if (isAdded()) {
            if (!(this.adA.SP() == CameraMember.MULTIEXPOSURE || alq() == UIState.CAMERA_FAMILY)) {
                this.ack.setVisibility(0);
            }
            akc();
            aja();
            this.abZ.setVisibility(0);
        }
    }

    public void aes(boolean z, long j, long j2) {
        Object obj = null;
        if (isAdded()) {
            if ((this.adA.SP() == CameraMember.VIDEO_RECORD || this.adA.SP() == CameraMember.VIDEO_SLOMO) && alq() != UIState.GRID_EFFECT) {
                obj = 1;
            }
            if (this.adA.SP() != CameraMember.MULTIEXPOSURE && r0 == null) {
                this.ack.setVisibility(8);
            }
            ajh();
            this.abZ.setVisibility(8);
            ajl();
        }
    }

    public void aet() {
        if (isAdded()) {
            this.acT = true;
        }
    }

    public void aeu() {
        if (isAdded()) {
            this.acT = false;
        }
    }

    public void akc() {
        if (this.acn != null) {
            if (alq() == UIState.CAMERA_FAMILY || alq() == UIState.SETTING) {
                this.acn.setVisibility(8);
                return;
            }
            String tw = aln("pref_camera_grid_key").tw();
            if (!tw.equals("off") && !this.adA.VN() && ajD("pref_camera_grid_key")) {
                this.acn.setVisibility(0);
                if (this.acA) {
                    int i;
                    boolean equals = tw.equals("style1");
                    if (Math.abs(((double) aly()) - 1.7777777777777777d) < 0.10000000149011612d) {
                        if (equals) {
                            i = R.drawable.grid_style1_16_9;
                        } else {
                            i = R.drawable.grid_style2_16_9;
                        }
                    } else if (((double) Math.abs(aly() - 1.0f)) < 0.10000000149011612d) {
                        if (equals) {
                            i = R.drawable.grid_style1_1_1;
                        } else {
                            i = R.drawable.grid_style2_1_1;
                        }
                    } else if (equals) {
                        i = R.drawable.grid_style1_4_3;
                    } else {
                        i = R.drawable.grid_style2_4_3;
                    }
                    this.acn.setImageDrawable(ajI(i));
                    this.acA = false;
                }
            } else if (tw.equals("off") || this.adA.VN()) {
                this.acn.setVisibility(8);
            }
        }
    }

    private void ajh() {
        if (this.acn != null) {
            this.acn.setVisibility(8);
        }
    }

    private BitmapDrawable ajI(int i) {
        Options options = new Options();
        options.inPreferredConfig = Config.RGB_565;
        options.inPurgeable = true;
        options.inInputShareable = true;
        return new BitmapDrawable(BitmapFactory.decodeStream(getResources().openRawResource(i), null, options));
    }

    public void aja() {
        ((C0659a) this.abT).ahI(ajD("pref_camera_gradienter_key"));
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int i = 0;
        for (C0111p c0111p : ajd()) {
            if (c0111p != null) {
                i |= c0111p.dispatchTouchEvent(motionEvent);
            }
        }
        return i | super.dispatchTouchEvent(motionEvent);
    }

    public FaceView Rw() {
        return this.ach;
    }

    public void St(boolean z) {
        if (this.abT instanceof C0659a) {
            ((C0659a) this.abT).aiv(z);
        }
    }

    private void ajn() {
        this.acf.setVisibility(8);
        this.adA.Ta().acm(this);
    }

    private void ajK() {
        this.adA.Ta().acm(null);
        this.adA.Ta().acn(true);
    }

    private void akb() {
        long UE = alA().UE() / 1000;
        if (UE == 0 || alq() == UIState.SETTING) {
            this.acf.setVisibility(8);
            return;
        }
        this.acf.setVisibility(0);
        this.ace.setText(UE + "");
    }

    public void acH(long j) {
        this.ace.setText(j + "");
    }

    public void acG() {
        this.acf.setVisibility(0);
        for (C0111p c0111p : ajd()) {
            if (c0111p != null) {
                c0111p.ail(false);
            }
        }
        C0458b.adi().adk();
    }

    public void acD() {
        this.ace.setText("");
        this.acf.setVisibility(8);
        for (C0111p c0111p : ajd()) {
            if (c0111p != null) {
                c0111p.ail(true);
            }
        }
    }

    public void acE() {
        if (this.abS != null && (this.abS instanceof aa)) {
            ((aa) this.abS).add(this.adA);
        }
    }

    public void acF() {
        akb();
    }

    protected void aiO() {
        if (this.abU != null) {
            for (C0111p c0111p : ajd()) {
                if (c0111p instanceof C0116o) {
                    this.abU.aqv((C0116o) c0111p);
                }
            }
            this.abU.aqv(this);
        }
    }

    protected void aiL(int i) {
        this.acd = i;
        if (this.abU == null) {
            this.abU = new C0636m(this.adA);
            this.acq = new C0669k();
            this.abU.aqs(this.acq);
            if (this.abT != null && (this.abT instanceof C0659a)) {
                ((C0659a) this.abT).ahD(this.abU);
            }
        }
    }

    protected void aiT() {
        if (this.abU != null) {
            for (C0111p c0111p : ajd()) {
                if (c0111p instanceof C0116o) {
                    this.abU.aqp((C0116o) c0111p);
                }
            }
            this.abU.aqp(this);
        }
    }

    protected void aka(int i) {
        aiU(i);
    }

    protected final void aiU(int i) {
        this.acO.setVisibility(0);
        this.acR.setText(String.format(getResources().getString(R.string.intervalometer_num_unit), new Object[]{Integer.valueOf(i)}));
    }

    protected void ajv() {
        if (this.acU == null) {
            C0090a.bvo("AbstractFamilyMemberFragment", "init VideoMakerRender");
            this.acU = new C0608b((ActivityBase) getActivity());
            this.acU.agp(10);
        }
    }

    private boolean ajB() {
        if (this.adA == null || this.adA.SP() != CameraMember.PRO || this.abU == null || this.abU.aqx() != 0) {
            return false;
        }
        return true;
    }

    public boolean onBackPressed() {
        boolean z = false;
        if ((this.acy != null && this.acy.onBackPressed()) || Ru(false)) {
            return true;
        }
        if (alq() == UIState.SETTING) {
            C0616j.apa(getActivity(), "setting_close", "back");
            ajk();
            return true;
        }
        for (C0111p c0111p : ajd()) {
            if (c0111p != null) {
                z |= c0111p.onBackPressed();
            }
        }
        return z;
    }

    public boolean Sd(int i, int i2) {
        int i3 = 0;
        for (C0111p c0111p : ajd()) {
            if (c0111p != null) {
                i3 |= c0111p.Sd(i, i2);
            }
        }
        return i3 | super.Sd(i, i2);
    }

    protected void ajg() {
        if (this.adA != null && this.abS != null) {
            if (this.adA.SY().tx()) {
                ListPreference tp = this.adA.SR().tp("pref_camera_iso_key");
                if (tp != null) {
                    tp.uY(0);
                }
                if (this.abT != null && (this.abT instanceof C0659a)) {
                    ((C0659a) this.abT).aig();
                }
            }
            ajO();
            So();
            Sq();
            RA(true);
        }
    }

    private void ajN() {
        if (this.adA != null && this.abS != null) {
            ajO();
            Sq();
            RB();
        }
    }

    private void ajE() {
        if (this.adA != null && this.abS != null) {
            if (!"off".equals(this.adA.SY().tQ())) {
                this.adA.SR().tp("pref_camera_iso_key").uY(0);
                ListPreference tp = this.adA.SR().tp("pref_camera_exposure_key");
                tp.va(tp.vf());
            }
            ajO();
        }
    }

    protected void ajZ() {
        ajO();
        ajg();
    }

    public void Ro() {
        ajO();
    }

    public void RL() {
        ajO();
    }

    public void ajO() {
        if (this.abS != null && (this.abS instanceof aa)) {
            ((aa) this.abS).ade();
        }
    }

    public void So() {
        if (this.abS != null && (this.abS instanceof aa)) {
            ((aa) this.abS).adf();
        }
    }

    public void Sn() {
        if (this.abS != null && (this.abS instanceof aa)) {
            ((aa) this.abS).adg();
        }
    }

    public void Sk() {
        super.Sk();
        this.abS.Sk();
        akc();
        alL();
    }

    public void Rn() {
        RZ();
    }

    public void RO(ListPreference listPreference) {
        if (!C0700r.aqU()) {
            listPreference.uY(0);
        }
        Rn();
    }

    protected void adh() {
        if (this.abS != null && this.abS.isVisible() && (this.abS instanceof aa)) {
            ((aa) this.abS).adh();
        }
    }

    public void Ss() {
        if (this.adC) {
            C0090a.m1e("AbstractFamilyMemberFragment", "Fragment is paused, ignore showSettingView");
            return;
        }
        boolean z;
        ajt();
        boolean ajy = !ajy(this.acL) ? ajy(this.acH) : true;
        if (this.acy == null || this.acy.isHidden()) {
            z = false;
        } else {
            z = true;
        }
        if (getActivity() == null || !this.adD.JX(UIState.SETTING) || ajy || z) {
            C0090a.bvo("AbstractFamilyMemberFragment", "showSettingView, SettingAnimating: " + ajy + "; isMoreSettingShown: " + z);
            return;
        }
        if (this.abS instanceof C0666h) {
            ((C0666h) this.abS).aes(true, 100, -1);
        } else {
            this.acj.setVisibility(8);
        }
        if (this.abT instanceof C0659a) {
            ((C0659a) this.abT).aes(true, 100, -1);
        } else if (!(this.abT == null || this.abT.getView() == null)) {
            this.abT.getView().setVisibility(8);
        }
        this.acf.setVisibility(8);
        ajX();
        this.ack.setVisibility(4);
        this.abZ.setVisibility(8);
        ((ActivityBase) getActivity()).auG(8, true, 100, -1);
        ((ActivityBase) getActivity()).auR();
        aiN(true);
        alM(UIState.SETTING);
        C0616j.apa(getActivity(), "setting_open", "open");
        ajl();
    }

    private boolean ajy(Animator animator) {
        if (animator != null) {
            return !animator.isStarted() ? animator.isRunning() : true;
        } else {
            return false;
        }
    }

    private void ajk() {
        RD(false);
    }

    public void RD(boolean z) {
        boolean z2;
        boolean z3 = true;
        ajt();
        boolean ajy = !ajy(this.acL) ? ajy(this.acH) : true;
        if (this.acy == null || this.acy.isHidden()) {
            z2 = this.acr;
        } else {
            z2 = true;
        }
        if ((!ajy || z) && alq() == UIState.SETTING && (!z2 || z)) {
            if (this.acI != null) {
                this.acI.cancel();
            }
            this.adD.Kf(UIState.SETTING);
            akc();
            aja();
            akb();
            this.ack.setVisibility(0);
            this.abZ.setVisibility(0);
            if (this.abT != null && (this.abT instanceof C0659a)) {
                ((C0659a) this.abT).aig();
            }
            ajj(z);
            ((ActivityBase) getActivity()).auX();
            aiN(false);
            ajS();
            return;
        }
        String str = "AbstractFamilyMemberFragment";
        StringBuilder append = new StringBuilder().append("hideSettingView, moreSettingShown: ");
        if (!z2 || z) {
            z3 = false;
        }
        C0090a.bvo(str, append.append(z3).append("; UIState: ").append(alq()).append("; SettingAnimating: ").append(ajy).toString());
    }

    protected void ajX() {
        C0090a.bvo("AbstractFamilyMemberFragment", "showSettingAnimation");
        aiZ();
        this.acM.setVisibility(0);
        this.acL.start();
    }

    protected void ajj(boolean z) {
        if (this.acH != null) {
            aiZ();
            if (z) {
                this.acM.setVisibility(8);
                if (!(this.abS == null || this.abS.getView() == null)) {
                    this.abS.getView().setAlpha(1.0f);
                    this.abS.getView().setVisibility(0);
                }
                if (!(this.abT == null || this.abT.getView() == null)) {
                    this.abT.getView().setAlpha(1.0f);
                    this.abT.getView().setVisibility(0);
                }
                this.aci.setAlpha(1.0f);
                this.aci.setVisibility(0);
                ((ActivityBase) getActivity()).arZ(0);
            } else {
                this.acH.start();
                if (this.abS instanceof C0666h) {
                    ((C0666h) this.abS).aer(true, 150, 100);
                } else if (!(this.abT == null || this.abT.getView() == null)) {
                    this.abT.getView().setVisibility(0);
                }
                if (this.abT instanceof C0659a) {
                    ((C0659a) this.abT).aer(true, 150, 100);
                } else if (!(this.abT == null || this.abT.getView() == null)) {
                    this.abT.getView().setVisibility(0);
                }
                ((ActivityBase) getActivity()).auG(0, true, 150, 100);
            }
        }
    }

    private void aiZ() {
        if (this.acL != null) {
            this.acL.cancel();
            if (this.acL.isStarted()) {
                this.acL.end();
            }
        }
        if (this.acH != null) {
            this.acH.cancel();
            if (this.acL.isStarted()) {
                this.acH.end();
            }
        }
    }

    protected void aiN(boolean z) {
    }

    protected void aiP(List list) {
        ListPreference tp = this.adA.SR().tp("pref_camera_iso_key");
        if (IndependenceUtil.agh && tp != null) {
            list.add(new C0730q(this.adA, tp, getResources(), R.drawable.ic_iso_single_icon, R.drawable.ic_iso_single_icon_select, R.drawable.ic_iso_single_icon_status));
        }
    }

    protected void aiY(List list) {
        if (IndependenceUtil.anu()) {
            list.add(new ah(this.adA));
        }
    }

    protected void aiQ(List list) {
        if (IndependenceUtil.afZ) {
            list.add(new C0748X(this.adA));
            return;
        }
        ListPreference tp = this.adA.SR().tp("pref_camera_whitebalance_key");
        if (tp != null) {
            list.add(new C0730q(this.adA, tp, getResources(), R.drawable.ic_white_balance_single_icon, R.drawable.ic_white_balance_single_icon_select, R.drawable.ic_white_balance_single_icon_status));
        }
    }

    protected void aiR(List list) {
        ListPreference tp = this.adA.SR().tp("pref_camera_exposure_key");
        if (tp != null) {
            list.add(new C0730q(this.adA, tp, getResources(), R.drawable.ic_exposure_compensation_single_icon, R.drawable.ic_exposure_compensation_single_icon_select, R.drawable.ic_exposure_compensation_single_icon_status));
        }
    }

    protected List aiK() {
        List arrayList = new ArrayList();
        if (IndependenceUtil.afZ) {
            arrayList.add(new C0731C(this.adA));
            arrayList.add(new C0749Z(this.adA));
            arrayList.add(new C0748X(this.adA));
            aiX(arrayList);
        } else {
            aiP(arrayList);
            aiQ(arrayList);
            aiY(arrayList);
            aiR(arrayList);
        }
        return arrayList;
    }

    protected List aiS() {
        return null;
    }

    protected void aiX(List list) {
        if (C0421M.dC().dD().cJ()) {
            String[] by = C0421M.dC().dD().by();
            if (by != null) {
                list.add(new ah(this.adA, 1, by));
            } else {
                list.add(new ah(this.adA));
            }
        }
    }

    public void ov(boolean z, boolean z2) {
        C0090a.bvo("1", "abstract familay onHighSetPopupShow show = " + z);
        ajF(z);
        if (z2) {
            ajY(z ? R.anim.top_bar_up_out : R.anim.top_bar_up_in);
        } else if (this.abS != null && (this.abS instanceof C0666h)) {
            ((C0666h) this.abS).aer(false, -1, -1);
        }
    }

    private void ajY(int i) {
        if (this.abS != null && (this.abS instanceof C0666h)) {
            ((C0666h) this.abS).aiF(i);
        }
    }

    private void ajF(boolean z) {
        if (z) {
            this.aci.setVisibility(8);
            this.ack.setVisibility(8);
            this.abZ.setVisibility(8);
            ((ActivityBase) getActivity()).auF(8, false);
            ajl();
            return;
        }
        aja();
        if (alq() != UIState.CAMERA_FAMILY) {
            this.aci.setVisibility(0);
        }
        this.ack.setVisibility(0);
        this.abZ.setVisibility(0);
        ((ActivityBase) getActivity()).auF(0, false);
    }

    public void Sr() {
        if (!C0421M.dC().dD().cM()) {
            C0090a.m1e("AbstractFamilyMemberFragment", "showBacklightButton This mode can not super Backlight.");
        } else if (this.abV == null) {
            C0090a.m1e("AbstractFamilyMemberFragment", "showBacklightButton BacklightButton is null.");
        } else {
            this.abV.setVisibility(0);
        }
    }

    public void RC() {
        if (!C0421M.dC().dD().cM()) {
            C0090a.m1e("AbstractFamilyMemberFragment", "hideBacklightButton This mode can not super Backlight.");
        } else if (this.abV == null) {
            C0090a.m1e("AbstractFamilyMemberFragment", "hideBacklightButton BacklightButton is null.");
        } else {
            this.abV.setVisibility(8);
        }
    }

    public boolean RH() {
        if (this.abV == null || this.abV.getVisibility() != 0) {
            return false;
        }
        return true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void RW() {
        /*
        r2 = this;
        r0 = r2.abV;
        if (r0 == 0) goto L_0x000e;
    L_0x0004:
        r0 = r2.abV;
        r0 = r0.getVisibility();
        r1 = 8;
        if (r0 != r1) goto L_0x000f;
    L_0x000e:
        return;
    L_0x000f:
        r0 = r2.adA;
        r0 = r0.Uy();
        if (r0 == 0) goto L_0x0025;
    L_0x0017:
        r0 = r2.adA;
        com.android.common.C0616j.aqf(r0);
        r0 = r2.adA;
        r1 = 0;
        r0.Wq(r1);
        r2.ajU();
    L_0x0025:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.n.j.RW():void");
    }

    public void RX() {
        if (this.abW != null && this.abW.isShowing()) {
            this.abW.cancel();
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        int i2 = 0;
        if (this.adC || this.adA == null) {
            return true;
        }
        int i3;
        boolean z;
        int i4;
        if (i == C0616j.ahr) {
            i3 = 27;
            z = true;
        } else {
            z = false;
            i3 = i;
        }
        switch (i3) {
            case 24:
            case 25:
            case 27:
            case 66:
            case 79:
            case 80:
            case 82:
            case 85:
            case 126:
            case 127:
            case 10000:
            case 10004:
                if (alq() == UIState.NORMAL && alu() != FunctionState.QUALITY_MULTISHOOTING) {
                    if (alu() == FunctionState.SPEED_MULTISHOOTING) {
                    }
                }
                C0090a.bvo("AbstractFamilyMemberFragment", "consume onKeyDown. uiState = " + alq() + "; function state = " + alu());
                if (alq() == UIState.TOPBAR_SETTING_POPUP) {
                    aiG();
                }
                if (alq() == UIState.HIGH_SETTING_POPUP) {
                    ((C0659a) this.abT).ahL();
                }
                if (i3 == 82 && alq() == UIState.SETTING && keyEvent.getRepeatCount() == 0) {
                    C0616j.apa(getActivity(), "setting_close", "menu");
                    ajk();
                }
                return true;
        }
        if (z) {
            i4 = C0616j.ahr;
        } else {
            i4 = i3;
        }
        C0111p[] ajd = ajd();
        int length = ajd.length;
        i3 = 0;
        while (i2 < length) {
            C0111p c0111p = ajd[i2];
            if (c0111p != null) {
                i3 |= c0111p.onKeyDown(i4, keyEvent);
            }
            i2++;
        }
        if (i3 != 0 || i4 != 82 || keyEvent.getRepeatCount() != 0) {
            return super.onKeyDown(i4, keyEvent) | i3;
        }
        adh();
        return true;
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        int i2 = 0;
        if (this.adC || this.adA == null) {
            return true;
        }
        int i3;
        boolean z;
        if (i == C0616j.ahr) {
            i3 = 27;
            z = true;
        } else {
            z = false;
            i3 = i;
        }
        switch (i3) {
            case 24:
            case 25:
            case 27:
            case 66:
            case 79:
            case 80:
            case 85:
            case 126:
            case 127:
            case 10000:
                if (alq() != UIState.NORMAL) {
                    return true;
                }
                break;
        }
        if (z) {
            i3 = C0616j.ahr;
        }
        for (C0111p c0111p : ajd()) {
            if (c0111p != null) {
                i2 |= c0111p.onKeyUp(i3, keyEvent);
            }
        }
        return super.onKeyUp(i3, keyEvent) | i2;
    }

    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        int i2 = 0;
        if (this.adC || this.adA == null) {
            return true;
        }
        int i3;
        boolean z;
        if (i == C0616j.ahr) {
            i3 = 27;
            z = true;
        } else {
            z = false;
            i3 = i;
        }
        switch (i3) {
            case 24:
            case 25:
            case 27:
            case 66:
            case 79:
            case 80:
            case 85:
            case 126:
            case 127:
            case 10000:
                if (alq() != UIState.NORMAL) {
                    return true;
                }
                break;
        }
        if (z) {
            i3 = C0616j.ahr;
        }
        for (C0111p c0111p : ajd()) {
            if (c0111p != null) {
                i2 |= c0111p.onKeyLongPress(i3, keyEvent);
            }
        }
        return super.onKeyLongPress(i3, keyEvent) | i2;
    }

    public void tX(String[] strArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = strArr[i2];
            if (obj != null) {
                if ("pref_camera_ae_bracket_hdr_key".equals(obj)) {
                    ajg();
                    ajM();
                } else if ("night_key".equals(obj)) {
                    ajE();
                } else if ("pref_slow_shutter_key".equals(obj)) {
                    ajZ();
                } else if ("ztemt_effect_type".equals(obj)) {
                    ajc();
                }
            }
        }
    }

    protected void ajc() {
        if (this.adA.Tu()) {
            alv().tp("pref_live_photo_key").va("off");
            RY();
            if (C0421M.dC().dD().cj()) {
                this.adA.SU().Sl();
            }
        }
    }

    protected void ain(int i, boolean z) {
        super.ain(i, z);
        if (this.acl != null) {
            this.acl.akF(i, z);
        }
    }

    public void aiG() {
        if (this.abS != null) {
            this.abS.aiG();
        }
    }

    protected void aiM(byte[] bArr) {
        aiW(bArr, 4);
    }

    protected void aiW(byte[] bArr, int i) {
        if (alu() == FunctionState.INTERVAL && this.acU != null && this.acd == 2 && !ajB()) {
            this.acU.agx(bArr, i);
        }
    }

    public void Sh() {
        if (!ajz()) {
            return;
        }
        if (CameraMember.aao(this.adA.SP(), this.adA.SQ())) {
            ((C0659a) this.abT).aie();
        } else {
            Sf();
        }
    }

    public void Sf() {
        if (ajz()) {
            ((C0659a) this.abT).aic();
        }
    }

    public void Sg(boolean z) {
        if (ajz()) {
            ((C0659a) this.abT).aid(z);
        }
    }

    private boolean ajz() {
        if (this.abT == null || !this.abT.isVisible()) {
            return false;
        }
        return this.abT instanceof C0659a;
    }

    public boolean Sb(boolean z) {
        if (this.acg != z) {
            this.acg = z;
            if (!this.adC) {
                this.adA.SM().arX(8);
            }
        }
        return false;
    }

    public boolean RP() {
        if (this.abT == null || !(this.abT instanceof C0659a)) {
            return false;
        }
        return ((C0659a) this.abT).ahZ();
    }

    public boolean RQ(boolean z) {
        boolean z2 = false;
        for (C0111p c0111p : ajd()) {
            if (c0111p != null) {
                z2 |= c0111p.RQ(z);
            }
        }
        return z2;
    }

    public boolean RJ() {
        return false;
    }

    public void RT() {
    }

    public PictureCallback Ry() {
        return null;
    }

    public PictureCallback Rx() {
        return null;
    }

    public boolean RK() {
        return true;
    }

    public void Sq() {
        if (this.abT instanceof C0659a) {
            ((C0659a) this.abT).aio();
        }
    }

    public void Si(String str) {
        if (ajz()) {
            ((C0659a) this.abT).aif(str);
        }
    }

    public void Rp() {
        ahM();
        for (C0111p c0111p : ajd()) {
            if (c0111p != null) {
                c0111p.ahM();
            }
        }
    }

    public void Se() {
    }

    public void RS(boolean z, boolean z2) {
        int i = 0;
        if (getView() != null) {
            if (z) {
                aes(false, -1, -1);
                this.ack.setVisibility(8);
                this.aci.setVisibility(8);
                if (this.adA.Tn() != null && "torch".equals(this.adA.Tn().Gc())) {
                    this.acC = true;
                    this.adA.SM().arX(8);
                }
            } else {
                aer(false, -1, -1);
                this.ack.setVisibility(0);
                this.aci.setVisibility(0);
                if (this.acC) {
                    this.acC = false;
                    this.adA.SM().arX(8);
                }
            }
            C0111p[] ajd = ajd();
            int length = ajd.length;
            while (i < length) {
                C0111p c0111p = ajd[i];
                if (c0111p != null) {
                    c0111p.ahS(z, z2);
                }
                i++;
            }
        }
    }

    private boolean ajD(String str) {
        CameraMember SP = this.adA.SP();
        int SQ = this.adA.SQ();
        IDualCameraControl$DualCameraMode Sz = this.adA.SM().arD().Sz();
        if (str.equals("pref_camera_ae_bracket_hdr_key") && (SP == CameraMember.NORMAL || SP == CameraMember.PRO || SP == CameraMember.MONO)) {
            if ("off".equals(this.adA.SY().tQ()) && "-1".equals(this.adA.SY().tB()) && !this.adA.Tu() && this.adA.SY().ty()) {
                return true;
            }
            aln(str).va(this.adA.Tb(R.string.pref_camera_ae_bracket_hdr_value_off));
            return false;
        } else if (str.equals("pref_camera_grid_key") && (SP == CameraMember.NORMAL || ((SP == CameraMember.VIDEO_RECORD && SQ != C0384o.Jr().Jt()) || SP == CameraMember.PRETTYCAMERA || SP == CameraMember.PRO || SP == CameraMember.INTERVALOMETER || SP == CameraMember.VIDEO_SLOMO || SP == CameraMember.MULTIEXPOSURE || SP == CameraMember.TRAJECTORY || SP == CameraMember.LIGHTDRAW || SP == CameraMember.ELETRONIC || SP == CameraMember.SLOWSHUTTER || SP == CameraMember.STARTRACK || SP == CameraMember.DNG || SP == CameraMember.MICROSPUR || SP == CameraMember.MONO || SP == CameraMember.CLONE || SP == CameraMember.BIG_APERTURE))) {
            return true;
        } else {
            if (str.equals("pref_camera_facedetection_key") && (SP == CameraMember.NORMAL || SP == CameraMember.PRO || SP == CameraMember.FRONT || SP == CameraMember.PRETTYCAMERA || SP == CameraMember.BIG_APERTURE)) {
                return true;
            }
            if (str.equals("pref_camera_shutter_sound_key") && !this.adA.Tu()) {
                return true;
            }
            if (str.equals("pref_camera_gradienter_key") && SP != CameraMember.VIDEO_RECORD && SP != CameraMember.VIDEO_SLOMO && SP != CameraMember.INTERVALOMETER) {
                return true;
            }
            if (str.equals("pref_camera_picture_ratio_key") && this.adA.SQ() != C0384o.Jr().Jt() && Sz != IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE && (SP == CameraMember.NORMAL || SP == CameraMember.PRO || SP == CameraMember.PRETTYCAMERA || SP == CameraMember.MONO)) {
                return true;
            }
            if (str.equals("pref_camera_interval_switch")) {
                if (!(SP == CameraMember.PRO || SP == CameraMember.SLOWSHUTTER || ((SP == CameraMember.ELETRONIC && !this.adA.Vv()) || SP == CameraMember.MICROSPUR))) {
                    if (SP == CameraMember.DNG && C0421M.dC().dD().cf()) {
                    }
                }
                if (!ajC()) {
                    return true;
                }
            }
            if (str.equals("pref_capture_focus_key") && Sz != IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE && (SP == CameraMember.NORMAL || SP == CameraMember.PRO || SP == CameraMember.FRONT || SP == CameraMember.DNG || SP == CameraMember.PRETTYCAMERA || SP == CameraMember.MICROSPUR || SP == CameraMember.MONO)) {
                return this.adA.SS().getInt("maf_key", -1) == -1;
            } else {
                if (str.equals("pref_camera_recordlocation_key")) {
                    return true;
                }
                if (str.equals("pref_camera_front_smile_shoot") && this.adA.SQ() == C0384o.Jr().Jt() && (SP == CameraMember.FRONT || SP == CameraMember.PRETTYCAMERA || SP == CameraMember.NORMAL)) {
                    return true;
                }
                if (str.equals("pref_third_arith_hdr_key") && SP == CameraMember.NORMAL && this.adA.SQ() == C0384o.Jr().Js()) {
                    return true;
                }
                if (str.equals("pref_video_sensor_hdr_key") && SP == CameraMember.VIDEO_RECORD) {
                    if (!"5".equals(this.adA.SS().getString("pref_video_quality_key", getString(R.string.pref_video_quality_default)))) {
                        return true;
                    }
                } else if (str.equals("pref_camera_recordlocation_key")) {
                    return true;
                }
                return false;
            }
        }
    }

    private boolean ajC() {
        if (this.adA == null || this.adA.SM() == null) {
            return false;
        }
        return this.adA.SM().arE();
    }

    private void ajW() {
        C0090a.m0d("AbstractFamilyMemberFragment", "add more settings fragment");
        this.acy = (C0672n) getFragmentManager().findFragmentByTag("more_settings");
        FragmentTransaction beginTransaction;
        if (this.acy == null) {
            this.acy = C0672n.akI();
            beginTransaction = getFragmentManager().beginTransaction();
            beginTransaction.setCustomAnimations(R.animator.nubia_fragment_open_enter, R.animator.nubia_fragment_open_exit);
            beginTransaction.add(R.id.more_settings_fragment, this.acy, "more_settings");
            beginTransaction.commitAllowingStateLoss();
        } else {
            beginTransaction = getFragmentManager().beginTransaction();
            beginTransaction.setCustomAnimations(R.animator.nubia_fragment_open_enter, R.animator.nubia_fragment_open_exit);
            beginTransaction.show(this.acy);
            beginTransaction.commitAllowingStateLoss();
        }
        ajQ(true);
    }

    private void aji() {
        C0090a.m0d("AbstractFamilyMemberFragment", "hide more settings fragment");
        if (this.acy != null) {
            this.acy.akN();
        }
        FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
        if (!this.adC) {
            beginTransaction.setCustomAnimations(R.animator.nubia_fragment_close_enter, R.animator.nubia_fragment_close_exit);
        }
        beginTransaction.hide(this.acy);
        beginTransaction.commitAllowingStateLoss();
        ajQ(false);
    }

    private void ajf() {
        if (this.acI != null) {
            this.acI.cancel();
        }
        ajG(true);
        ajW();
        this.adA.TA();
        this.adA.SZ(8);
    }

    protected void ajG(boolean z) {
    }

    public boolean Ru(boolean z) {
        if (this.acy == null || this.acy.isHidden() || (this.acy.akM() && !z)) {
            return false;
        }
        aji();
        if (!z) {
            C0000c arD = this.adA.SM().arD();
            boolean z2 = arD.Sz() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_FUSION_MODE;
            boolean Tv = this.adA.Tv();
            if (z2 != Tv) {
                arD.SH(Tv);
            } else {
                this.adA.TB();
            }
            ((ActivityBase) getActivity()).arC();
        }
        C0090a.m0d("AbstractFamilyMemberFragment", "remove more settings fragment");
        ajG(false);
        return true;
    }

    public void Sa() {
        if (this.acl != null) {
            this.acl.notifyDataSetChanged();
        }
    }

    public void RZ() {
        if (!this.adC) {
            if (this.acy == null) {
                this.acy = (C0672n) getFragmentManager().findFragmentByTag("more_settings");
            }
            if (this.acy != null) {
                this.acy.notifyDataSetChanged();
            }
        }
    }

    public void RB() {
    }

    public void Rq() {
        if (this.adC) {
            C0090a.m1e("AbstractFamilyMemberFragment", "fragment is paused closeHdr fail!");
            return;
        }
        this.adA.TD();
        Sa();
        this.adA.Tz().sendEmptyMessage(60);
        ajg();
    }

    public void RG() {
    }

    public void Rr() {
        if (this.adA == null) {
            C0090a.m0d("AbstractFamilyMemberFragment", "closeIntervalSwitch mAppService is null");
            return;
        }
        this.adA.SR().tp("pref_camera_interval_switch").va("off");
        Sa();
        RG();
        Sp();
        Sn();
        So();
        this.adA.Tz().sendEmptyMessage(60);
    }

    private void ajt() {
        if (this.acL == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.acm, View.SCALE_X, new float[]{0.88f, 1.0f});
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.acm, View.SCALE_Y, new float[]{0.88f, 1.0f});
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.acm, View.ALPHA, new float[]{0.0f, 1.0f});
            ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.aca, View.ALPHA, new float[]{0.0f, 1.0f});
            ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.acw, View.ALPHA, new float[]{0.0f, 1.0f});
            ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(this.acN, View.ALPHA, new float[]{0.0f, 1.0f});
            ObjectAnimator ofFloat7 = ObjectAnimator.ofFloat(this.aci, View.ALPHA, new float[]{1.0f, 0.0f});
            TimeInterpolator pathInterpolator = new PathInterpolator(0.24f, 0.09f, 0.3f, 1.0f);
            TimeInterpolator linearInterpolator = new LinearInterpolator();
            ofFloat.setDuration(250);
            ofFloat.setInterpolator(pathInterpolator);
            ofFloat2.setDuration(250);
            ofFloat2.setInterpolator(pathInterpolator);
            ofFloat3.setDuration(250);
            ofFloat3.setInterpolator(linearInterpolator);
            ofFloat6.setDuration(150);
            ofFloat6.setInterpolator(linearInterpolator);
            ofFloat4.setDuration(250);
            ofFloat4.setInterpolator(linearInterpolator);
            ofFloat5.setDuration(250);
            ofFloat5.setInterpolator(linearInterpolator);
            ofFloat7.setDuration(100);
            ofFloat7.setInterpolator(linearInterpolator);
            this.acL = new AnimatorSet();
            this.acL.playTogether(new Animator[]{ofFloat, ofFloat2, ofFloat3, ofFloat4, ofFloat6, ofFloat5, ofFloat7});
            this.acL.addListener(new C0638B(this));
        }
        if (this.acH == null) {
            ofFloat = ObjectAnimator.ofFloat(this.acm, View.SCALE_X, new float[]{1.0f, 0.88f});
            ofFloat2 = ObjectAnimator.ofFloat(this.acm, View.SCALE_Y, new float[]{1.0f, 0.88f});
            ofFloat3 = ObjectAnimator.ofFloat(this.acm, View.ALPHA, new float[]{1.0f, 0.0f});
            ofFloat4 = ObjectAnimator.ofFloat(this.aca, View.ALPHA, new float[]{1.0f, 0.0f});
            ofFloat5 = ObjectAnimator.ofFloat(this.acw, View.ALPHA, new float[]{1.0f, 0.0f});
            ofFloat6 = ObjectAnimator.ofFloat(this.acN, View.ALPHA, new float[]{1.0f, 0.0f});
            ofFloat7 = ObjectAnimator.ofFloat(this.aci, View.ALPHA, new float[]{0.0f, 1.0f});
            pathInterpolator = new PathInterpolator(0.24f, 0.09f, 0.3f, 1.0f);
            linearInterpolator = new LinearInterpolator();
            ofFloat.setDuration(100);
            ofFloat.setInterpolator(pathInterpolator);
            ofFloat2.setDuration(100);
            ofFloat2.setInterpolator(pathInterpolator);
            ofFloat3.setDuration(100);
            ofFloat3.setInterpolator(linearInterpolator);
            ofFloat6.setDuration(250);
            ofFloat6.setInterpolator(linearInterpolator);
            ofFloat4.setDuration(50);
            ofFloat4.setInterpolator(linearInterpolator);
            ofFloat5.setDuration(100);
            ofFloat5.setInterpolator(linearInterpolator);
            ofFloat7.setStartDelay(100);
            ofFloat7.setDuration(150);
            ofFloat7.setInterpolator(linearInterpolator);
            ofFloat7.addListener(new C0639C(this));
            this.acH = new AnimatorSet();
            this.acH.playTogether(new Animator[]{ofFloat, ofFloat2, ofFloat3, ofFloat4, ofFloat6, ofFloat5, ofFloat7});
            this.acH.addListener(new C0640D(this));
        }
    }

    public void Sp() {
    }

    protected void ajH(int i, int i2, int i3, int i4) {
        C0090a.bvo("AbstractFamilyMemberFragment", "onPreviewAreaUpdated");
        if (!(this.ack.getWidth() == i3 - i && this.ack.getHeight() == i4 - i2)) {
            C0090a.bvo("AbstractFamilyMemberFragment", "relayout FocusFaceContent");
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.ack.getLayoutParams();
            layoutParams.width = i3 - i;
            layoutParams.height = i4 - i2;
            layoutParams.topMargin = i2;
            layoutParams.setMarginStart(i);
            this.ack.requestLayout();
        }
        this.acA = true;
        akc();
    }

    public boolean RM() {
        return (this.acC || this.acg) ? true : this.acr;
    }

    public void RN() {
        if (this.acw != null) {
            this.acw.setVisibility(this.adA.SM().arE() ? 8 : 0);
        }
        if (this.acl != null) {
            this.acl.notifyDataSetChanged();
        }
    }

    public void RY() {
    }

    public void Sl() {
        if (this.abS != null) {
            this.abS.Sk();
        }
    }

    public void aib() {
        aeu();
        for (C0111p c0111p : ajd()) {
            if (c0111p != null) {
                c0111p.aib();
            }
        }
    }

    public void aiV(CameraMember cameraMember, CameraMember cameraMember2, CameraMember cameraMember3) {
        this.acz = true;
        this.acB = cameraMember2;
        this.acu = cameraMember;
        for (C0111p c0111p : ajd()) {
            if (c0111p != null) {
                c0111p.aiV(this.acu, this.acB, this.adA.SP());
            }
        }
    }

    public void Sm() {
    }

    public void RA(boolean z) {
    }

    public void ahE() {
        ajl();
    }

    public void ahF() {
    }

    public C0002Q Rv() {
        return null;
    }

    public void ajL() {
        if (getActivity().checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0) {
            C0090a.bvo("AbstractFamilyMemberFragment", "Request Location permission");
            requestPermissions(new String[]{"android.permission.ACCESS_COARSE_LOCATION"}, 1);
        }
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        switch (i) {
            case 1:
                ListPreference tp = this.adA.SR().tp("pref_camera_recordlocation_key");
                if (iArr.length <= 0 || iArr[0] != 0) {
                    tp.va("off");
                    C0090a.bvj("AbstractFamilyMemberFragment", "Location permission is denied");
                } else {
                    tp.va("on");
                    C0090a.bvo("AbstractFamilyMemberFragment", "Location permission is granted");
                }
                this.adA.Tq().agf(RecordLocationPreference.tv(this.adA.SS(), null));
                RZ();
                return;
            default:
                return;
        }
    }

    private boolean ajA() {
        return this.adA.SN().checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0;
    }

    private void ajM() {
        if (this.adA != null) {
            this.adA.Td().Om();
        }
    }

    private void ajQ(boolean z) {
        this.acr = z;
        this.acy.akL(z);
    }

    public void Sj() {
        if (this.abT != null && (this.abT instanceof C0659a)) {
            ((C0659a) this.abT).aig();
        }
    }
}
