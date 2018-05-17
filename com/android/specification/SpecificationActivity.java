package com.android.specification;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import com.android.camera.R;
import com.android.common.appService.CameraMember;
import com.p010a.C0090a;
import com.umeng.analytics.ReportPolicy;

public class SpecificationActivity extends Activity {
    private static final /* synthetic */ int[] aDy = null;
    private BroadcastReceiver aDw = null;
    private boolean aDx = false;

    private static /* synthetic */ int[] aTw() {
        if (aDy != null) {
            return aDy;
        }
        int[] iArr = new int[CameraMember.values().length];
        try {
            iArr[CameraMember.BIG_APERTURE.ordinal()] = 10;
        } catch (NoSuchFieldError e) {
        }
        try {
            iArr[CameraMember.BUSINESSCARD.ordinal()] = 11;
        } catch (NoSuchFieldError e2) {
        }
        try {
            iArr[CameraMember.CLONE.ordinal()] = 1;
        } catch (NoSuchFieldError e3) {
        }
        try {
            iArr[CameraMember.CRYSTAL.ordinal()] = 12;
        } catch (NoSuchFieldError e4) {
        }
        try {
            iArr[CameraMember.DEMISTER.ordinal()] = 13;
        } catch (NoSuchFieldError e5) {
        }
        try {
            iArr[CameraMember.DNG.ordinal()] = 2;
        } catch (NoSuchFieldError e6) {
        }
        try {
            iArr[CameraMember.DUALCAMERACALIBRATION.ordinal()] = 14;
        } catch (NoSuchFieldError e7) {
        }
        try {
            iArr[CameraMember.ELETRONIC.ordinal()] = 3;
        } catch (NoSuchFieldError e8) {
        }
        try {
            iArr[CameraMember.FACTORYTEST.ordinal()] = 15;
        } catch (NoSuchFieldError e9) {
        }
        try {
            iArr[CameraMember.FRONT.ordinal()] = 16;
        } catch (NoSuchFieldError e10) {
        }
        try {
            iArr[CameraMember.FUNEFFECT.ordinal()] = 17;
        } catch (NoSuchFieldError e11) {
        }
        try {
            iArr[CameraMember.INTERVALOMETER.ordinal()] = 18;
        } catch (NoSuchFieldError e12) {
        }
        try {
            iArr[CameraMember.LIGHTDRAW.ordinal()] = 4;
        } catch (NoSuchFieldError e13) {
        }
        try {
            iArr[CameraMember.MICROSPUR.ordinal()] = 19;
        } catch (NoSuchFieldError e14) {
        }
        try {
            iArr[CameraMember.MONO.ordinal()] = 20;
        } catch (NoSuchFieldError e15) {
        }
        try {
            iArr[CameraMember.MULTIEXPOSURE.ordinal()] = 21;
        } catch (NoSuchFieldError e16) {
        }
        try {
            iArr[CameraMember.NONE.ordinal()] = 22;
        } catch (NoSuchFieldError e17) {
        }
        try {
            iArr[CameraMember.NORMAL.ordinal()] = 23;
        } catch (NoSuchFieldError e18) {
        }
        try {
            iArr[CameraMember.OBJECTCLEAR.ordinal()] = 24;
        } catch (NoSuchFieldError e19) {
        }
        try {
            iArr[CameraMember.PANORAMA.ordinal()] = 25;
        } catch (NoSuchFieldError e20) {
        }
        try {
            iArr[CameraMember.PHOTO3D.ordinal()] = 26;
        } catch (NoSuchFieldError e21) {
        }
        try {
            iArr[CameraMember.PINTU.ordinal()] = 27;
        } catch (NoSuchFieldError e22) {
        }
        try {
            iArr[CameraMember.PIP.ordinal()] = 28;
        } catch (NoSuchFieldError e23) {
        }
        try {
            iArr[CameraMember.PRAGUE.ordinal()] = 29;
        } catch (NoSuchFieldError e24) {
        }
        try {
            iArr[CameraMember.PRETTYCAMERA.ordinal()] = 30;
        } catch (NoSuchFieldError e25) {
        }
        try {
            iArr[CameraMember.PRO.ordinal()] = 5;
        } catch (NoSuchFieldError e26) {
        }
        try {
            iArr[CameraMember.SLOWSHUTTER.ordinal()] = 6;
        } catch (NoSuchFieldError e27) {
        }
        try {
            iArr[CameraMember.STARCLOUD.ordinal()] = 31;
        } catch (NoSuchFieldError e28) {
        }
        try {
            iArr[CameraMember.STARTRACK.ordinal()] = 7;
        } catch (NoSuchFieldError e29) {
        }
        try {
            iArr[CameraMember.SUPERNIGHT.ordinal()] = 32;
        } catch (NoSuchFieldError e30) {
        }
        try {
            iArr[CameraMember.THIRDPARTY_CAMERA.ordinal()] = 33;
        } catch (NoSuchFieldError e31) {
        }
        try {
            iArr[CameraMember.TRAJECTORY.ordinal()] = 34;
        } catch (NoSuchFieldError e32) {
        }
        try {
            iArr[CameraMember.TRIAXIAL.ordinal()] = 8;
        } catch (NoSuchFieldError e33) {
        }
        try {
            iArr[CameraMember.VIDEOMAKER.ordinal()] = 35;
        } catch (NoSuchFieldError e34) {
        }
        try {
            iArr[CameraMember.VIDEO_RECORD.ordinal()] = 36;
        } catch (NoSuchFieldError e35) {
        }
        try {
            iArr[CameraMember.VIDEO_SLOMO.ordinal()] = 37;
        } catch (NoSuchFieldError e36) {
        }
        try {
            iArr[CameraMember.VR_CAMERA.ordinal()] = 38;
        } catch (NoSuchFieldError e37) {
        }
        try {
            iArr[CameraMember.WLAN_CAMERA.ordinal()] = 39;
        } catch (NoSuchFieldError e38) {
        }
        try {
            iArr[CameraMember.ZOOMBLUR.ordinal()] = 9;
        } catch (NoSuchFieldError e39) {
        }
        aDy = iArr;
        return iArr;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.specification_main);
        aTu();
        C0090a.bvo("SpecificationActivity", "onCreate");
        aTt();
    }

    protected void onDestroy() {
        C0090a.bvo("SpecificationActivity", "onDestroy");
        aTv();
        super.onDestroy();
    }

    private void aTu() {
        int intExtra = getIntent().getIntExtra("Specification", -1);
        FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
        Fragment aTs = aTs(intExtra);
        if (aTs == null) {
            C0090a.m1e("SpecificationActivity", "fragment is null, type is " + intExtra);
            finish();
            return;
        }
        beginTransaction.add(R.id.specification_main, aTs);
        beginTransaction.commitAllowingStateLoss();
    }

    private Fragment aTs(int i) {
        C0090a.bvo("SpecificationActivity", "getFragmentByType type = " + i);
        switch (aTw()[CameraMember.aap(i).ordinal()]) {
            case 1:
                return new C1110i();
            case 2:
                return new C1102a();
            case 3:
                return new C1107f();
            case 4:
                return new C1109h();
            case 5:
                return new C1106e();
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                return new C1104c();
            case 7:
                return new C1103b();
            case 8:
                return new C1108g();
            case 9:
                return new C1105d();
            default:
                return null;
        }
    }

    private void aTt() {
        if (!this.aDx) {
            IntentFilter intentFilter = new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS");
            this.aDw = new C1111j(this);
            registerReceiver(this.aDw, intentFilter);
            this.aDx = true;
        }
    }

    private void aTv() {
        if (this.aDx) {
            unregisterReceiver(this.aDw);
            this.aDw = null;
            this.aDx = false;
        }
    }
}
