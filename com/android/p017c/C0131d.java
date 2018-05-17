package com.android.p017c;

import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.graphics.Rect;
import android.hardware.Camera.Size;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.android.camera.R;
import com.android.common.C0116o;
import com.android.common.C0616j;
import com.android.common.appService.C0328d;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.p014n.C0111p;
import com.android.common.p027g.C0541g;
import com.android.common.ui.C0130Y;
import com.android.common.ui.C0474A;
import com.android.common.ui.RotateImageView;
import com.fotonation.utils.Point;
import com.p010a.C0090a;

public class C0131d extends C0111p implements C0116o, C0130Y {
    int aVV;
    int aVW;
    int aVX;
    private boolean aVY;
    boolean aVZ;
    private byte[] aWA;
    private int aWB;
    private int aWC;
    boolean aWa;
    boolean aWb;
    private int aWc;
    private float aWd;
    private float aWe;
    private C0127a aWf;
    private C0541g aWg;
    private C0134g aWh;
    private Point aWi;
    private Rect aWj;
    private Handler aWk;
    private OnSharedPreferenceChangeListener aWl;
    private float aWm;
    private float aWn;
    RotateImageView aWo;
    RotateImageView aWp;
    private float aWq;
    private float aWr;
    private Rect aWs;
    private C0133f aWt;
    private Size aWu;
    private float aWv;
    View aWw;
    private float aWx;
    private float aWy;
    private Handler aWz;

    public C0131d() {
        this.aWv = 180.0f;
        this.aVY = false;
        this.aVZ = true;
        this.aWa = false;
        this.aWb = true;
        this.aWm = 0.0f;
        this.aWn = 0.0f;
        this.aWq = 0.0f;
        this.aWr = 0.0f;
        this.aWj = new Rect();
        this.aWl = new C0136i(this);
        this.aWu = null;
        this.aWc = 1;
        this.aWi = new Point(540, 720);
        this.aWC = 180;
        this.aWB = 180;
        this.aWA = new byte[(((this.aWB * this.aWC) * 3) / 2)];
        this.aWt = new C0133f();
        this.aWz = new C0137j(this);
    }

    public C0131d(int i) {
        super(i);
        this.aWv = 180.0f;
        this.aVY = false;
        this.aVZ = true;
        this.aWa = false;
        this.aWb = true;
        this.aWm = 0.0f;
        this.aWn = 0.0f;
        this.aWq = 0.0f;
        this.aWr = 0.0f;
        this.aWj = new Rect();
        this.aWl = new C0136i(this);
        this.aWu = null;
        this.aWc = 1;
        this.aWi = new Point(540, 720);
        this.aWC = 180;
        this.aWB = 180;
        this.aWA = new byte[(((this.aWB * this.aWC) * 3) / 2)];
        this.aWt = new C0133f();
        this.aWz = new C0137j(this);
        this.aWk = new C0132e();
    }

    public static C0131d bmg() {
        return new C0131d(1);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bmf();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.adB) {
            return super.onCreateView(layoutInflater, viewGroup, bundle);
        }
        View inflate = layoutInflater.inflate(R.layout.microspur_fragment, viewGroup, false);
        blZ(inflate);
        this.aVX = getResources().getDimensionPixelOffset(R.dimen.topbar_height);
        this.aVV = getResources().getDimensionPixelOffset(R.dimen.bottombar_height);
        this.aVW = getResources().getDimensionPixelOffset(R.dimen.dimens_8);
        return inflate;
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.aWh.bmO();
            this.aWh.bmP();
            blY();
            this.aWg = new C0541g(getActivity());
            if (C0384o.Jr().Jw(this.adA.SQ()) != null) {
                bmp();
                bma();
                this.aVY = false;
                this.adA.SS().registerOnSharedPreferenceChangeListener(this.aWl);
            }
        }
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        this.aWh.bmQ();
        alA().Ts().abL(this.aWt);
        bml();
        this.adA.UR().m32i(this.aWg);
        bmq();
        this.adA.SS().unregisterOnSharedPreferenceChangeListener(this.aWl);
        this.aWk.removeCallbacksAndMessages(null);
        super.onPause();
    }

    public void aib() {
        bml();
        bmq();
    }

    protected void ahM() {
        super.ahM();
        bmp();
    }

    protected void bmj(boolean z) {
        if (!z) {
            bmp();
        }
    }

    private void bmp() {
        if (this.adA.Tr() != null) {
            this.adA.Ts().abK(this.aWt, this.adA.SQ());
        }
    }

    private void blY() {
        this.aWf = new C0127a(getActivity());
        this.aWv = (((float) C0616j.apG()) * 180.0f) / 1080.0f;
        this.aWf.blS(this.aWv);
        if (this.aWq == 0.0f && this.aWr == 0.0f) {
            this.aWq = (float) (this.aWs.width() / 2);
            this.aWr = (float) (this.aWs.height() / 2);
        }
        blX((int) this.aWq, (int) this.aWr);
        this.aWf.blQ(this.aWq, ((float) this.aWs.height()) - this.aWr);
        if (this.aWm == 0.0f && this.aWn == 0.0f) {
            this.aWm = (((float) this.aWs.width()) - this.aWv) - ((float) this.aVW);
            if (this.aWs.top >= this.aVX) {
                this.aWn = this.aWv + ((float) this.aVW);
            } else {
                this.aWn = (((float) this.aVX) + this.aWv) + ((float) this.aVW);
            }
        }
        this.aWf.blR(this.aWm, ((float) this.aWs.height()) - this.aWn);
        if (this.aVZ) {
            this.adA.UR().m26a(this.aWf);
        }
    }

    private void bml() {
        this.adA.UR().m32i(this.aWf);
        this.aWf.release();
    }

    private void blZ(View view) {
        this.aWh = new C0134g(view, this.adA, this);
        this.aWp = (RotateImageView) view.findViewById(R.id.magnifier_switcher);
        this.aWp.setOnClickListener(new C0138k(this));
        this.aWw = view.findViewById(R.id.tips_text);
        this.aWo = (RotateImageView) view.findViewById(R.id.manual_focus_capture_switcher);
        this.aWo.setOnClickListener(new C0139l(this));
        this.adE = new C0474A[]{this.aWp, this.aWo};
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        float f = 0.0f;
        if (this.aWw != null && this.aWw.getVisibility() == 0) {
            this.aWw.setVisibility(8);
        }
        if (this.adA != null && this.adA.SX().Kc() == UIState.CAMERA_FAMILY) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (this.adC || !this.aVZ || bmb()) {
            if (this.aWa) {
                this.aWm += this.aWx;
                this.aWn += this.aWy;
                this.aWx = 0.0f;
                this.aWy = 0.0f;
                this.aWa = false;
                this.aWf.blR(this.aWm, ((float) this.aWs.height()) - this.aWn);
            }
            return false;
        } else if (this.aVY) {
            return super.dispatchTouchEvent(motionEvent);
        } else {
            float x = motionEvent.getX() - ((float) this.aWs.left);
            float y = motionEvent.getY() - ((float) this.aWs.top);
            switch (motionEvent.getAction()) {
                case 0:
                    if (bmd(x, y)) {
                        this.aWa = true;
                        this.aWd = x;
                        this.aWe = y;
                        this.aWx = 0.0f;
                        this.aWy = 0.0f;
                        return true;
                    }
                    break;
                case 1:
                    if (!this.aWa) {
                        if (!bmc()) {
                            this.aWk.removeMessages(1234);
                            this.aWk.sendEmptyMessage(1234);
                            break;
                        }
                    }
                    this.aWm += this.aWx;
                    this.aWn += this.aWy;
                    this.aWx = 0.0f;
                    this.aWy = 0.0f;
                    this.aWa = false;
                    this.aWf.blR(this.aWm, ((float) this.aWs.height()) - this.aWn);
                    return true;
                    break;
                case 2:
                    if (this.aWa) {
                        x -= this.aWd;
                        y -= this.aWe;
                        if (this.aWm + x <= this.aWv + ((float) this.aVW)) {
                            this.aWx = (this.aWv + ((float) this.aVW)) - this.aWm;
                        } else if ((((float) this.aWs.width()) - this.aWv) - ((float) this.aVW) <= this.aWm + x) {
                            this.aWx = ((((float) this.aWs.width()) - this.aWv) - ((float) this.aVW)) - this.aWm;
                        } else {
                            this.aWx = x;
                        }
                        if (this.aWs.top >= this.aVX) {
                            x = 0.0f;
                        } else {
                            x = (float) this.aVX;
                        }
                        if (this.aWs.bottom > C0616j.aoL() - this.aVV) {
                            f = (float) this.aVV;
                        }
                        if (this.aWn + y <= (this.aWv + x) + ((float) this.aVW)) {
                            this.aWy = ((x + this.aWv) + ((float) this.aVW)) - this.aWn;
                        } else if (((((float) this.aWs.height()) - f) - this.aWv) - ((float) this.aVW) <= this.aWn + y) {
                            this.aWy = (((((float) this.aWs.height()) - f) - this.aWv) - ((float) this.aVW)) - this.aWn;
                        } else {
                            this.aWy = y;
                        }
                        this.aWf.blR(this.aWm + this.aWx, ((float) this.aWs.height()) - (this.aWn + this.aWy));
                        return true;
                    }
                    break;
            }
            return super.dispatchTouchEvent(motionEvent);
        }
    }

    public boolean Sd(int i, int i2) {
        if (this.adC || !this.aVZ || bmb()) {
            return false;
        }
        bmn((float) i, (float) i2);
        bmm((float) i, (float) i2);
        return true;
    }

    protected void ajH(int i, int i2, int i3, int i4) {
        Rect rect = this.aWs;
        this.aWs = new Rect(i, i2, i3, i4);
        if (this.aWf != null && !bme(rect, this.aWs)) {
            bmm(this.aWm + ((float) rect.left), ((float) rect.top) + this.aWn);
        }
    }

    public void bmh() {
        if (this.aWw != null && this.aWw.getVisibility() == 0) {
            this.aWw.setVisibility(8);
        }
    }

    public boolean RQ(boolean z) {
        if (this.adC || bmc()) {
            return false;
        }
        this.aWk.removeMessages(1234);
        this.aWk.sendEmptyMessage(1234);
        return true;
    }

    public void bmi(boolean z, boolean z2) {
        this.aVY = z;
    }

    private boolean bme(Rect rect, Rect rect2) {
        if (rect.left == rect2.left && rect.right == rect2.right && rect.top == rect2.top && rect.bottom == rect2.bottom) {
            return true;
        }
        return false;
    }

    private void bmf() {
        this.aWu = this.adA.Tn().Gv();
    }

    private void bmm(float f, float f2) {
        float f3 = 0.0f;
        if (f2 < ((float) this.aVX) || ((float) (C0616j.aoL() - this.aVV)) < f2) {
            C0090a.bvo("MicrospurFragment", "ignore click in top bar or bottom bar");
            return;
        }
        float f4;
        float f5 = f - ((float) this.aWs.left);
        float f6 = f2 - ((float) this.aWs.top);
        if (f5 <= this.aWv + ((float) this.aVW)) {
            f5 = this.aWv + ((float) this.aVW);
        } else if ((((float) this.aWs.width()) - this.aWv) - ((float) this.aVW) <= f5) {
            f5 = (((float) this.aWs.width()) - this.aWv) - ((float) this.aVW);
        }
        if (this.aWs.top >= this.aVX) {
            f4 = 0.0f;
        } else {
            f4 = (float) this.aVX;
        }
        if (this.aWs.bottom > C0616j.aoL() - this.aVV) {
            f3 = (float) this.aVV;
        }
        f4 = f6 <= (this.aWv + f4) + ((float) this.aVW) ? (f4 + this.aWv) + ((float) this.aVW) : ((((float) this.aWs.height()) - f3) - this.aWv) - ((float) this.aVW) <= f6 ? ((((float) this.aWs.height()) - f3) - this.aWv) - ((float) this.aVW) : f6;
        this.aWm = f5;
        this.aWn = f4;
        this.aWf.blR(f5, ((float) this.aWs.height()) - f4);
    }

    private void bmn(float f, float f2) {
        if (f2 < ((float) this.aVX) || ((float) (C0616j.aoL() - this.aVV)) < f2) {
            C0090a.bvo("MicrospurFragment", "ignore click in top bar or bottom bar");
            return;
        }
        float f3 = f - ((float) this.aWs.left);
        float f4 = f2 - ((float) this.aWs.top);
        if (f3 < this.aWv) {
            f3 = this.aWv;
        } else if (((float) this.aWs.width()) - this.aWv < f3) {
            f3 = ((float) this.aWs.width()) - this.aWv;
        }
        if (f4 < this.aWv) {
            f4 = this.aWv;
        } else if (((float) this.aWs.height()) - this.aWv < f4) {
            f4 = ((float) this.aWs.height()) - this.aWv;
        }
        this.aWq = f3;
        this.aWr = f4;
        blX((int) this.aWq, (int) this.aWr);
        this.aWf.blQ(this.aWq, ((float) this.aWs.height()) - this.aWr);
    }

    private boolean bmb() {
        return this.adA.SX().JZ() == FunctionState.INTERVAL;
    }

    private boolean bmd(float f, float f2) {
        return Math.sqrt(Math.pow((double) (f - this.aWm), 2.0d) + Math.pow((double) (f2 - this.aWn), 2.0d)) < ((double) this.aWv);
    }

    private boolean bmc() {
        return this.adA.SS().getInt("maf_key", -1) != -1;
    }

    private void blW(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6) {
        int i7;
        int i8 = 0;
        int i9 = (i3 - (i5 / 2)) & -2;
        int i10 = (i4 - (i6 / 2)) & -2;
        for (i7 = 0; i7 < i6; i7++) {
            System.arraycopy(bArr, ((i7 + i10) * i) + i9, this.aWA, i7 * i5, i5);
        }
        i7 = i2 * i;
        int i11 = i5 * i6;
        while (i8 < i6 / 2) {
            System.arraycopy(bArr, ((((i10 / 2) + i8) * i) + i9) + i7, this.aWA, (i8 * i5) + i11, i5);
            i8++;
        }
    }

    private void blX(int i, int i2) {
        this.aWi.SetX(i2);
        this.aWi.SetY(this.aWs.width() - i);
    }

    private void blV() {
        if (this.aWi.m75X() < this.aWC) {
            this.aWi.SetX(this.aWC);
        } else if (this.aWi.m75X() > this.aWu.width - this.aWC) {
            this.aWi.SetX(this.aWu.width - this.aWC);
        }
        if (this.aWi.m76Y() < this.aWB) {
            this.aWi.SetY(this.aWB);
        } else if (this.aWi.m76Y() > this.aWu.height - this.aWB) {
            this.aWi.SetY(this.aWu.height - this.aWB);
        }
    }

    public void bma() {
        if (this.adA.VD()) {
            this.aWh.bmR();
        } else {
            this.aWh.bmS();
        }
    }

    public void ahE() {
        this.aWp.setVisibility(4);
        this.adA.UR().m32i(this.aWf);
        this.aWh.bmT();
    }

    public void ahF() {
        this.aWp.setVisibility(0);
        if (this.aVZ) {
            this.adA.UR().m26a(this.aWf);
        }
        this.aWh.bmU();
    }

    public void rn(String str, int i, boolean z, int i2) {
        if (!this.adC) {
            boolean z2;
            Editor edit = this.adA.SS().edit();
            if (str.equals("pref_camera_interval_pro")) {
                edit.putString(str, i + "");
                z2 = false;
            } else if (str.equals("maf_key")) {
                edit.putInt(str, i);
                if (i == -1) {
                    this.adA.Tc().MT(true);
                    z2 = true;
                } else {
                    this.adA.Tc().MT(false);
                    z2 = true;
                }
            } else {
                z2 = false;
            }
            edit.apply();
            if (z) {
                bmo(i2);
            }
            if (z2 && this.aWb && bmc() && i2 == 1 && !this.aWz.hasMessages(0)) {
                this.aWz.sendEmptyMessageDelayed(0, 300);
            }
        }
    }

    public void ro() {
        if (!this.adC) {
            this.adA.UR().m26a(this.aWg);
        }
    }

    public void rp() {
        if (!this.adC) {
            this.adA.UR().m32i(this.aWg);
        }
    }

    private void bmo(int i) {
        switch (i) {
            case 0:
            case 2:
                bmr();
                return;
            case 1:
                this.adA.SU().Sa();
                bmk();
                return;
            default:
                return;
        }
    }

    private void bmr() {
        if (this.adA.Uh() == null) {
            this.adA.Ui(new C0328d(this.adA));
            this.adA.Uh().start();
        }
        this.adA.Uh().SL();
    }

    private void bmk() {
        if (this.adA.Uh() == null) {
            this.adA.Ui(new C0328d(this.adA));
            this.adA.Uh().start();
        }
        this.adA.Uh().SK();
    }

    private void bmq() {
        if (this.adA.Uh() != null) {
            this.adA.Uh().SJ();
            this.adA.Ui(null);
        }
    }
}
