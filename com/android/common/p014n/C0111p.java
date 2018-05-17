package com.android.common.p014n;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.Fragment;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.animation.LinearInterpolator;
import com.android.common.ActivityBase;
import com.android.common.appService.C0295H;
import com.android.common.appService.C0329e;
import com.android.common.appService.C0336k;
import com.android.common.appService.CameraMember;
import com.android.common.camerastate.C0404b;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.p015f.C0112h;
import com.android.common.p023b.C0363l;
import com.android.common.setting.IconListPreference;
import com.android.common.setting.PreferenceGroup;
import com.android.common.ui.C0474A;
import com.p010a.C0090a;
import java.util.ArrayList;

public class C0111p extends Fragment {
    protected C0329e adA;
    protected boolean adB;
    protected boolean adC;
    protected C0404b adD;
    protected C0474A[] adE;
    protected ObjectAnimator adF;
    protected ObjectAnimator adG;
    protected ArrayList adH;
    private float adI;
    private C0674q adJ;
    protected Handler adK;
    private boolean adL;
    private C0295H adM;

    public C0111p(int i) {
        this.adE = null;
        this.adJ = new C0674q();
        this.adA = null;
        this.adD = null;
        this.adK = null;
        this.adB = true;
        this.adC = true;
        this.adL = false;
        this.adG = null;
        this.adF = null;
        this.adH = new ArrayList();
        this.adM = new C0656S(this);
        this.adI = 0.0f;
        this.adB = false;
    }

    public C0111p() {
        this.adE = null;
        this.adJ = new C0674q();
        this.adA = null;
        this.adD = null;
        this.adK = null;
        this.adB = true;
        this.adC = true;
        this.adL = false;
        this.adG = null;
        this.adF = null;
        this.adH = new ArrayList();
        this.adM = new C0656S(this);
        this.adI = 0.0f;
        this.adB = true;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (!this.adB) {
            this.adA = ((ActivityBase) getActivity()).arB();
            this.adD = ((ActivityBase) getActivity()).arV();
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!this.adB) {
            this.adC = false;
        }
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.adC = false;
            alO(this.adJ);
            ((ActivityBase) getActivity()).arW().abb(this.adM);
            ain(alN(), false);
        }
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        alC();
        this.adG = null;
        this.adF = null;
        alQ(this.adJ);
        ((ActivityBase) getActivity()).arW().abi(this.adM);
        this.adC = true;
        this.adL = false;
        super.onPause();
    }

    public void onDetach() {
        super.onDetach();
        C0090a.bvo("BaseFragment", "onDetach: " + getClass().getName());
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return false;
    }

    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        return false;
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return false;
    }

    public boolean onBackPressed() {
        return false;
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public boolean Sc() {
        return false;
    }

    protected C0329e alA() {
        return this.adA;
    }

    protected C0363l alo() {
        return alA().UK();
    }

    protected IconListPreference aln(String str) {
        return (IconListPreference) alv().tp(str);
    }

    protected PreferenceGroup alv() {
        return this.adA.SR();
    }

    protected SharedPreferences als() {
        return this.adA.SS();
    }

    protected int alN() {
        return alA().To();
    }

    protected void ain(int i, boolean z) {
        if (this.adE != null) {
            for (C0474A c0474a : this.adE) {
                if (c0474a != null) {
                    c0474a.fc(i, z);
                }
            }
        }
    }

    private void alO(C0336k c0336k) {
        alA().TP(c0336k);
    }

    private void alQ(C0336k c0336k) {
        alA().TQ(c0336k);
    }

    public boolean RU(byte[] bArr) {
        return false;
    }

    public void ail(boolean z) {
    }

    public void all(C0112h c0112h) {
        if (!this.adH.contains(c0112h)) {
            this.adH.add(c0112h);
        }
    }

    public void alm(C0112h c0112h) {
        this.adH.remove(c0112h);
    }

    protected void alr() {
        alx(false, -1, -1);
    }

    protected void alz() {
        alw(false, -1, -1);
    }

    protected void alx(boolean z, long j, long j2) {
        for (C0112h c0112h : this.adH) {
            if (c0112h != null) {
                c0112h.aer(z, j, j2);
            }
        }
        if (getActivity() != null) {
            ((ActivityBase) getActivity()).auG(0, z, j, j2);
        }
    }

    protected void alw(boolean z, long j, long j2) {
        for (C0112h c0112h : this.adH) {
            if (c0112h != null) {
                c0112h.aes(z, j, j2);
            }
        }
        if (getActivity() != null) {
            ((ActivityBase) getActivity()).auG(8, z, j, j2);
        }
    }

    protected void alF() {
        for (C0112h c0112h : this.adH) {
            if (c0112h != null) {
                c0112h.aet();
            }
        }
    }

    protected void alG() {
        for (C0112h c0112h : this.adH) {
            if (c0112h != null) {
                c0112h.aeu();
            }
        }
    }

    public void Sk() {
    }

    public void alL() {
    }

    protected void alK(String[] strArr, SharedPreferences sharedPreferences) {
        Editor edit = sharedPreferences.edit();
        if (sharedPreferences != null) {
            edit.putInt("settingNum", strArr.length);
            for (int i = 0; i < strArr.length; i++) {
                edit.putString("setting" + i, strArr[i]);
            }
            edit.apply();
        }
    }

    protected int alJ(SharedPreferences sharedPreferences) {
        return sharedPreferences.getInt("settingNum", 0);
    }

    public void aiG() {
    }

    protected DeviceState alt() {
        if (this.adD == null) {
            return DeviceState.IDLE;
        }
        return this.adD.JV();
    }

    protected void alH(DeviceState deviceState) {
        this.adD.Kd(deviceState);
    }

    protected FunctionState alu() {
        if (this.adD == null) {
            return FunctionState.NORMAL;
        }
        return this.adD.JZ();
    }

    protected void alI(FunctionState functionState) {
        this.adD.JY(functionState);
    }

    protected void alM(UIState uIState) {
        this.adD.Ke(uIState);
    }

    protected UIState alq() {
        if (this.adD == null) {
            return UIState.NORMAL;
        }
        return this.adD.Kc();
    }

    protected boolean alB() {
        if (alt() != DeviceState.NOT_INITIALIZED) {
            return alP();
        }
        return false;
    }

    private boolean alP() {
        if (alt() == DeviceState.NOT_INITIALIZED || !this.adL) {
            if (alt() != DeviceState.NOT_INITIALIZED) {
                this.adL = true;
            }
            return true;
        }
        C0090a.bvo("BaseFragment", "Ignore repeat call initAfterOpen.");
        return false;
    }

    protected void ahM() {
    }

    public void alp(String str) {
    }

    protected void alC() {
        if (this.adG != null) {
            if (this.adG.isRunning()) {
                this.adG.end();
            } else {
                this.adG.cancel();
            }
        }
        if (this.adF == null) {
            return;
        }
        if (this.adF.isRunning()) {
            this.adF.end();
        } else {
            this.adF.cancel();
        }
    }

    protected void alE() {
        if (this.adG == null) {
            this.adG = ObjectAnimator.ofFloat(getView(), "alpha", new float[]{1.0f, 0.0f});
            this.adG.setInterpolator(new LinearInterpolator());
            this.adG.addListener(new C0657T(this));
        }
    }

    protected void alD() {
        if (this.adF == null) {
            this.adF = ObjectAnimator.ofFloat(getView(), "alpha", new float[]{0.0f, 1.0f});
            this.adF.setInterpolator(new LinearInterpolator());
            this.adF.addListener(new C0658U(this));
        }
    }

    protected float aly() {
        return this.adI;
    }

    protected void ajH(int i, int i2, int i3, int i4) {
    }

    public boolean Sd(int i, int i2) {
        return false;
    }

    public boolean RQ(boolean z) {
        return false;
    }

    public void aib() {
    }

    public void aiV(CameraMember cameraMember, CameraMember cameraMember2, CameraMember cameraMember3) {
    }

    public void ahS(boolean z, boolean z2) {
    }
}
