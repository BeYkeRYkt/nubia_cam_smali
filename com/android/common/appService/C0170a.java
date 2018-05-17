package com.android.common.appService;

import android.app.Activity;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.hardware.Camera.PictureCallback;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.android.camera.R;
import com.android.common.p014n.C0111p;
import com.android.common.setting.ListPreference;
import com.android.common.ui.FaceView;
import com.p010a.C0090a;

public class C0170a {
    protected Activity OA = null;
    protected C0327b OB = null;
    protected C0105L OC = null;

    public C0170a(Activity activity, C0105L c0105l) {
        this.OA = activity;
        this.OC = c0105l;
    }

    public final void RE(int i, CameraMember cameraMember, C0329e c0329e) {
        if (this.OA.getFragmentManager().findFragmentByTag("currentFragment") == null || !RI() || !Rs(cameraMember, i)) {
            C0090a.bvo("BaseFamilyManager", "switch member: (-1, -1) -> (" + cameraMember + ", " + i + ")");
            Rt();
            RF(i, cameraMember, c0329e);
        }
    }

    protected void RF(int i, CameraMember cameraMember, C0329e c0329e) {
        FragmentTransaction beginTransaction = this.OA.getFragmentManager().beginTransaction();
        this.OB = new C0327b(this, i, cameraMember, this.OC.abA(i, cameraMember));
        if (this.OB != null) {
            beginTransaction.add(R.id.camera_fragment, this.OB.OE, "currentFragment").commitAllowingStateLoss();
        }
    }

    public void Rt() {
        FragmentManager fragmentManager = this.OA.getFragmentManager();
        if (fragmentManager.findFragmentByTag("currentFragment") != null) {
            C0090a.bvo("BaseFamilyManager", "destroy old abandonded fragment");
            fragmentManager.beginTransaction().remove((C0111p) fragmentManager.findFragmentByTag("currentFragment")).commitAllowingStateLoss();
        }
    }

    protected boolean RI() {
        return (this.OB == null || this.OB.OE == null) ? false : true;
    }

    private boolean Rs(CameraMember cameraMember, int i) {
        if (this.OB != null && this.OB.OD == i && this.OB.OF == cameraMember) {
            return true;
        }
        return false;
    }

    public boolean Sc() {
        if (this.OB != null) {
            return this.OB.OE.Sc();
        }
        return false;
    }

    public C0002Q Rv() {
        if (this.OB != null) {
            return this.OB.OE.Rv();
        }
        return null;
    }

    public boolean RU(byte[] bArr) {
        if (this.OB == null) {
            return false;
        }
        C0090a.m0d("BaseFamilyManager", "onJpegDataTaken inner");
        return this.OB.OE.RU(bArr);
    }

    public void RV(String str) {
        if (this.OB != null) {
            C0090a.m0d("BaseFamilyManager", "onJpegStorageDone inner");
            this.OB.OE.alp(str);
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        C0090a.bvm("BaseFamilyManager", "onKeyDown");
        if (this.OB != null) {
            return this.OB.OE.onKeyDown(i, keyEvent);
        }
        return false;
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.OB != null) {
            return this.OB.OE.onKeyUp(i, keyEvent);
        }
        return false;
    }

    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        if (this.OB != null) {
            return this.OB.OE.onKeyLongPress(i, keyEvent);
        }
        return false;
    }

    public void Ss() {
        if (this.OB != null) {
            this.OB.OE.Ss();
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.OB != null) {
            return this.OB.OE.dispatchTouchEvent(motionEvent);
        }
        return false;
    }

    public void Sg(boolean z) {
        if (this.OB != null) {
            this.OB.OE.Sg(z);
        }
    }

    public void Sf() {
        if (this.OB != null) {
            this.OB.OE.Sf();
        }
    }

    public void Sh() {
        if (this.OB != null) {
            this.OB.OE.Sh();
        }
    }

    public FaceView Rw() {
        if (this.OB != null) {
            return this.OB.OE.Rw();
        }
        return null;
    }

    public void Ro() {
        if (this.OB != null) {
            this.OB.OE.Ro();
        }
    }

    public void RL() {
        if (this.OB != null) {
            this.OB.OE.RL();
        }
    }

    public void RO(ListPreference listPreference) {
        if (this.OB != null) {
            this.OB.OE.RO(listPreference);
        }
    }

    public void Rn() {
        if (this.OB != null) {
            this.OB.OE.Rn();
        }
    }

    public boolean onBackPressed() {
        if (this.OB != null) {
            return this.OB.OE.onBackPressed();
        }
        return false;
    }

    public boolean RR(C0329e c0329e) {
        return onBackPressed();
    }

    public boolean Sd(int i, int i2) {
        if (this.OB != null) {
            return this.OB.OE.Sd(i, i2);
        }
        return false;
    }

    public void Sq() {
        if (this.OB != null) {
            this.OB.OE.Sq();
        }
    }

    public void St(boolean z) {
        if (this.OB != null) {
            this.OB.OE.St(z);
        }
    }

    public void Sk() {
        if (this.OB != null) {
            this.OB.OE.Sk();
        }
    }

    public String[] Rz(C0329e c0329e) {
        if (this.OB != null) {
            return this.OB.OE.Rz(c0329e);
        }
        return null;
    }

    public void Sr() {
        if (this.OB != null) {
            this.OB.OE.Sr();
        }
    }

    public void RC() {
        if (this.OB != null) {
            this.OB.OE.RC();
        }
    }

    public boolean RH() {
        if (this.OB != null) {
            return this.OB.OE.RH();
        }
        return false;
    }

    public void RW() {
        if (this.OB != null) {
            this.OB.OE.RW();
        }
    }

    public void RX() {
        if (this.OB != null) {
            this.OB.OE.RX();
        }
    }

    public boolean RP() {
        if (this.OB != null) {
            return this.OB.OE.RP();
        }
        return false;
    }

    public boolean RQ(boolean z) {
        if (this.OB != null) {
            return this.OB.OE.RQ(z);
        }
        return false;
    }

    public boolean RJ() {
        if (this.OB != null) {
            this.OB.OE.RJ();
        }
        return false;
    }

    public void RT() {
        if (this.OB != null) {
            this.OB.OE.RT();
        }
    }

    public PictureCallback Ry() {
        if (this.OB != null) {
            return this.OB.OE.Ry();
        }
        return null;
    }

    public PictureCallback Rx() {
        if (this.OB != null) {
            return this.OB.OE.Rx();
        }
        return null;
    }

    public void Si(String str) {
        if (this.OB != null) {
            this.OB.OE.Si(str);
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (this.OB != null) {
            this.OB.OE.onActivityResult(i, i2, intent);
        }
    }

    public boolean RK() {
        if (this.OB != null) {
            return this.OB.OE.RK();
        }
        return true;
    }

    public boolean Sb(boolean z) {
        if (this.OB != null) {
            return this.OB.OE.Sb(z);
        }
        return false;
    }

    public void Rp() {
        if (this.OB != null) {
            this.OB.OE.Rp();
        }
    }

    public void Se() {
        if (this.OB != null) {
            this.OB.OE.Se();
        }
    }

    public void RS(boolean z, boolean z2) {
        if (this.OB != null) {
            this.OB.OE.RS(z, z2);
        }
    }

    public boolean Ru(boolean z) {
        if (this.OB != null) {
            return this.OB.OE.Ru(false);
        }
        return false;
    }

    public void Sa() {
        if (this.OB != null) {
            this.OB.OE.Sa();
        }
    }

    public void RZ() {
        if (this.OB != null) {
            this.OB.OE.RZ();
        }
    }

    public void Rq() {
        if (this.OB != null) {
            this.OB.OE.Rq();
        }
    }

    public void Rr() {
        if (this.OB != null) {
            this.OB.OE.Rr();
        }
    }

    public void RG() {
        if (this.OB != null) {
            this.OB.OE.RG();
        }
    }

    public void RB() {
        if (this.OB != null) {
            this.OB.OE.RB();
        }
    }

    public void Sn() {
        if (this.OB != null) {
            this.OB.OE.Sn();
        }
    }

    public void Sp() {
        if (this.OB != null) {
            this.OB.OE.Sp();
        }
    }

    public boolean RM() {
        if (this.OB != null) {
            return this.OB.OE.RM();
        }
        return false;
    }

    public void RN() {
        if (this.OB != null) {
            this.OB.OE.RN();
        }
    }

    public void RY() {
        if (this.OB != null) {
            this.OB.OE.RY();
        }
    }

    public void Sl() {
        if (this.OB != null) {
            this.OB.OE.Sl();
        }
    }

    public void Sm() {
        if (this.OB != null) {
            this.OB.OE.Sm();
        }
    }

    public void So() {
        if (this.OB != null) {
            this.OB.OE.So();
        }
    }

    public void RA(boolean z) {
        if (this.OB != null) {
            this.OB.OE.RA(z);
        }
    }

    public void RD(boolean z) {
        if (this.OB != null) {
            this.OB.OE.RD(z);
        }
    }

    public void Sj() {
        if (this.OB != null) {
            this.OB.OE.Sj();
        }
    }
}
