package com.android.camera;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.android.camera.cameraFamily.C0179f;
import com.android.camera.cameraFamily.C0183j;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0378d;
import com.android.common.camerastate.UIState;
import com.android.common.custom.C0405a;
import com.android.common.custom.C0421M;
import com.android.common.p016a.C0287a;
import com.android.common.ui.CameraSelectButton;
import com.p010a.C0090a;
import java.util.ArrayList;

public class C0199e implements C0183j {
    private C0329e aIa;
    private C0179f aIb = null;
    private CameraSelectButton aIc;
    private View aId = null;
    private int aIe = -1;
    private boolean aIf = false;
    private Handler aIg = new C0214q(this);
    private ObjectAnimator aIh = null;
    private AnimatorSet aIi = null;
    private boolean aIj = false;
    private C0200f aIk;
    private View aIl;
    private C0287a aIm = null;
    private ObjectAnimator aIn = null;
    private AnimatorSet aIo = null;
    private ArrayList aIp;
    public int aIq = 0;

    public C0199e(View view, C0329e c0329e, C0287a c0287a, C0179f c0179f) {
        this.aIl = view;
        this.aIa = c0329e;
        this.aIm = c0287a;
        this.aIb = c0179f;
        this.aIc = (CameraSelectButton) view.findViewById(R.id.camera_switcher);
        this.aId = view.findViewById(R.id.camera_switcher_background);
        aXG();
        aXU(false);
        aXY(0, true, false, -1, -1);
    }

    public void aYb() {
        aXG();
    }

    public void aXW(C0200f c0200f) {
        this.aIk = c0200f;
    }

    private void aXG() {
        this.aIp = aXz(this.aIa.SN().getResources(), this.aIa);
        int aXC = aXC(this.aIp, this.aIa.SN().getIntent());
        this.aIe = aXC;
        String[] strArr = new String[this.aIp.size()];
        for (int i = 0; i < this.aIp.size(); i++) {
            strArr[i] = ((C0201g) this.aIp.get(i)).aIr;
        }
        this.aIc.jp(strArr, aXC);
        aXJ();
        aXV(this.aIe);
    }

    private ArrayList aXz(Resources resources, C0329e c0329e) {
        ArrayList arrayList = new ArrayList();
        if (c0329e.VC()) {
            if (c0329e.VA()) {
                arrayList.add(new C0201g(this, CameraMember.FACTORYTEST, resources.getString(R.string.camera_select_normal)));
            } else if (c0329e.Vw()) {
                arrayList.add(new C0201g(this, CameraMember.BUSINESSCARD, resources.getString(R.string.camera_select_normal)));
            } else {
                arrayList.add(new C0201g(this, CameraMember.THIRDPARTY_CAMERA, resources.getString(R.string.camera_select_normal)));
            }
        } else if (c0329e.VN()) {
            arrayList.add(new C0201g(this, CameraMember.VIDEO_RECORD, resources.getString(R.string.video_record_title)));
        } else if (c0329e.VM()) {
            arrayList.add(new C0201g(this, CameraMember.MONO, resources.getString(R.string.subcamera_title)));
        } else {
            C0405a dD = C0421M.dC().dD();
            if (!this.aIa.SM().arE()) {
                arrayList.add(new C0201g(this, CameraMember.NONE, resources.getString(R.string.camera_family)));
            }
            if (dD.ca()) {
                if (dD.cg()) {
                    arrayList.add(new C0201g(this, CameraMember.INTERVALOMETER, resources.getString(R.string.intervalometer_title)));
                }
                arrayList.add(new C0201g(this, CameraMember.PRO, resources.getString(R.string.pro_camera)));
                arrayList.add(new C0201g(this, CameraMember.NORMAL, resources.getString(R.string.camera_select_normal)));
                aXy(dD, arrayList, resources);
                arrayList.add(new C0201g(this, CameraMember.VIDEO_RECORD, resources.getString(R.string.video_record_title)));
                if (dD.da()) {
                    arrayList.add(new C0201g(this, CameraMember.VIDEO_SLOMO, resources.getString(R.string.video_slomo_title)));
                }
                if (dD.cB()) {
                    arrayList.add(new C0201g(this, CameraMember.PANORAMA, resources.getString(R.string.panorama_title)));
                }
            } else if (dD.cd() && dD.cF()) {
                arrayList.add(new C0201g(this, CameraMember.PRO, resources.getString(R.string.pro_camera)));
                arrayList.add(new C0201g(this, CameraMember.NORMAL, resources.getString(R.string.camera_select_normal)));
                arrayList.add(new C0201g(this, CameraMember.VIDEO_RECORD, resources.getString(R.string.video_record_title)));
                aXy(dD, arrayList, resources);
            } else {
                arrayList.add(new C0201g(this, CameraMember.PRO, resources.getString(R.string.pro_camera)));
                arrayList.add(new C0201g(this, CameraMember.NORMAL, resources.getString(R.string.camera_select_normal)));
                arrayList.add(new C0201g(this, CameraMember.VIDEO_RECORD, resources.getString(R.string.video_record_title)));
            }
        }
        return arrayList;
    }

    private void aXy(C0405a c0405a, ArrayList arrayList, Resources resources) {
        if (c0405a.cd() && c0405a.cF()) {
            arrayList.add(new C0201g(this, CameraMember.PRETTYCAMERA, c0405a.cE() ? resources.getString(R.string.portrait_title) : resources.getString(R.string.pretty_title)));
        }
    }

    private int aXC(ArrayList arrayList, Intent intent) {
        CameraMember cameraMember;
        int i;
        int i2;
        int size = arrayList.size() / 2;
        CameraMember SP = this.aIa.SP();
        if ((SP == CameraMember.FRONT || SP == CameraMember.PRETTYCAMERA) && !C0421M.dC().dD().cd()) {
            cameraMember = CameraMember.NORMAL;
        } else {
            cameraMember = SP;
        }
        for (i = 0; i < arrayList.size(); i++) {
            if (cameraMember == ((C0201g) arrayList.get(i)).aIs) {
                i2 = i;
                i = 1;
                break;
            }
        }
        i = 0;
        i2 = size;
        if (i != 0) {
            return i2;
        }
        aXD().edit().putInt("scroll_switcher_seleleted_family", cameraMember.aan()).apply();
        return 0;
    }

    private boolean aXK(float f, float f2) {
        int[] UZ = this.aIa.UZ();
        return f > ((float) UZ[0]) && f < ((float) UZ[1]) && f2 > ((float) UZ[2]) && f2 < ((float) UZ[3]);
    }

    private void aXJ() {
        this.aIc.jB(new C0215r(this));
        this.aIc.jA(new C0220s(this));
    }

    private boolean aXL(C0378d c0378d, C0378d c0378d2, CameraMember cameraMember, CameraMember cameraMember2) {
        if (c0378d.equals(c0378d2)) {
            return cameraMember != cameraMember2 ? c0378d.Fy() : false;
        } else {
            return true;
        }
    }

    private void aXV(int i) {
        if (this.aIp != null && this.aIp.get(i) != null) {
            if (((C0201g) this.aIp.get(i)).aIs == CameraMember.NONE) {
                this.aIb.aUZ(0);
            } else {
                this.aIb.aUZ(8);
            }
        }
    }

    void aXS() {
        this.aIg.removeMessages(1);
        this.aIg.removeMessages(2);
    }

    public void aXX(boolean z) {
    }

    public void aXZ() {
        aXS();
        this.aIm.m40r(true);
        this.aIg.sendEmptyMessageDelayed(1, 250);
        aXX(true);
    }

    public void aYa() {
        aXS();
        this.aIg.sendEmptyMessage(2);
    }

    public void aXP() {
        if (this.aIc != null) {
            this.aIc.jv();
        }
    }

    public void aXT() {
        if (this.aIc != null) {
            this.aIc.jy();
        }
    }

    public void aXR() {
        if (this.aIc.getVisibility() == 0 && !this.aIc.jr()) {
            C0090a.bvo("MemberScrollerManager", "Recreate CameraSelectView");
            this.aIc.setVisibility(8);
            this.aIc.setVisibility(0);
        }
    }

    public void aXY(int i, boolean z, boolean z2, long j, long j2) {
        this.aIq = i;
        if (i == 0) {
            aXV(this.aIe);
        } else {
            this.aIb.aUZ(i);
        }
        if (!z2 || j < 0) {
            aXA();
            this.aIl.setAlpha(1.0f);
            this.aIc.setAlpha(1.0f);
            if (z) {
                this.aIl.setVisibility(i);
            }
            this.aIc.post(new C0221t(this, i));
        } else {
            Animator animator;
            if (z) {
                aXI();
                animator = i == 0 ? this.aIo : this.aIi;
            } else {
                aXH();
                animator = i == 0 ? this.aIn : this.aIh;
            }
            if (!animator.isRunning()) {
                aXA();
                if (j2 > 0) {
                    animator.setStartDelay(j2);
                }
                animator.setDuration(j);
                animator.start();
            }
        }
    }

    private void aXA() {
        if (this.aIn != null) {
            this.aIn.cancel();
        }
        if (this.aIh != null) {
            this.aIh.cancel();
        }
        if (this.aIo != null) {
            this.aIo.cancel();
        }
        if (this.aIi != null) {
            this.aIi.cancel();
        }
    }

    private void aXH() {
        if (this.aIn == null) {
            this.aIn = ObjectAnimator.ofFloat(this.aIc, "alpha", new float[]{0.0f, 1.0f});
            this.aIn.addListener(new C0222u(this));
        }
        if (this.aIh == null) {
            this.aIh = ObjectAnimator.ofFloat(this.aIc, "alpha", new float[]{1.0f, 0.0f});
            this.aIh.addListener(new C0223v(this));
        }
    }

    private void aXI() {
        if (this.aIi == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.aIl, "alpha", new float[]{1.0f, 0.0f});
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.aIc, "alpha", new float[]{1.0f, 0.0f});
            this.aIi = new AnimatorSet();
            this.aIi.playTogether(new Animator[]{ofFloat, ofFloat2});
            this.aIi.setInterpolator(new LinearInterpolator());
            this.aIi.addListener(new C0224w(this));
        }
        if (this.aIo == null) {
            ofFloat = ObjectAnimator.ofFloat(this.aIl, "alpha", new float[]{0.0f, 1.0f});
            ofFloat2 = ObjectAnimator.ofFloat(this.aIc, "alpha", new float[]{0.0f, 1.0f});
            this.aIo = new AnimatorSet();
            this.aIo.playTogether(new Animator[]{ofFloat, ofFloat2});
            this.aIo.setInterpolator(new LinearInterpolator());
            this.aIo.addListener(new C0225x(this));
        }
    }

    public void aXU(boolean z) {
        this.aIc.setEnabled(z);
    }

    public void aXB(long j) {
        C0090a.bvo("MemberScrollerManager", "disableMemberScrollerForAWhile");
        this.aIg.removeMessages(4);
        this.aIf = true;
        this.aIg.sendEmptyMessageDelayed(4, j);
    }

    public int aXF() {
        return this.aIl.getVisibility();
    }

    public void aXQ(MotionEvent motionEvent) {
        if (!this.aIb.aUR()) {
            this.aIc.jx(motionEvent);
        }
    }

    public void release() {
        if (this.aIg.hasMessages(3)) {
            this.aIb.aVa();
        }
        if (this.aIg.hasMessages(2)) {
            this.aIm.m40r(false);
        }
        if (this.aIg.hasMessages(4)) {
            C0090a.bvo("MemberScrollerManager", "reset disableMemberScrollerForAWhile when release");
            this.aIf = false;
        }
        this.aIj = false;
        this.aIg.removeCallbacksAndMessages(null);
        aXA();
        this.aIn = null;
        this.aIo = null;
        this.aIh = null;
        this.aIi = null;
    }

    private void aXN(CameraMember cameraMember) {
        this.aId.setVisibility(8);
        if (this.aIk != null) {
            this.aIk.aYv(cameraMember);
        }
    }

    private void aXM(boolean z) {
        this.aId.setVisibility(0);
        if (this.aIk != null) {
            this.aIk.aYu(z);
        }
    }

    private void aXO(CameraMember cameraMember, C0378d c0378d, CameraMember cameraMember2) {
        if (this.aIk != null) {
            this.aIk.aYw(cameraMember, c0378d, cameraMember2);
        }
    }

    private C0378d aXE(CameraMember cameraMember, C0378d c0378d) {
        Object<C0378d> ZM = this.aIa.TJ().ZM(cameraMember);
        if (ZM == null || ZM.size() < 1) {
            throw new IllegalArgumentException("No suituable camera id found!!!");
        }
        for (C0378d c0378d2 : ZM) {
            if (c0378d2.equals(c0378d)) {
                return c0378d2;
            }
        }
        return (C0378d) ZM.get(0);
    }

    public void aWh() {
        aXU(true);
    }

    public void aWi() {
        if (!this.aIa.SX().JX(UIState.CAMERA_FAMILY) || this.aIb.aUR()) {
            C0090a.bvo("MemberScrollerManager", "cameraFamilyAnimating: " + this.aIb.aUR());
            return;
        }
        this.aIg.removeMessages(3);
        if (this.aIb.aUS()) {
            CameraMember aap = CameraMember.aap(aXD().getInt("scroll_switcher_seleleted_family", CameraMember.MULTIEXPOSURE.aan()));
            if (!aXL(aXE(aap, this.aIa.ST()), this.aIa.ST(), aap, this.aIa.SP())) {
                aYa();
            }
            this.aIb.aUP();
            aXO(aap, aXE(aap, this.aIa.ST()), CameraMember.NONE);
            aXM(true);
        } else {
            aXZ();
            this.aIb.aVb();
            aXN(this.aIa.SP());
        }
    }

    private SharedPreferences aXD() {
        return this.aIa.SS();
    }
}
