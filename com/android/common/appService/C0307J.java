package com.android.common.appService;

import com.android.camera.R;
import com.android.common.cameradevice.C0326h;
import com.android.common.cameradevice.C0382m;
import com.android.common.cameradevice.C0384o;
import com.p010a.C0090a;

public class C0307J {
    private Object TA = new Object();
    private final C0308K TB;
    private C0326h TC = new az(this);
    private C0329e Tx = null;
    private boolean Ty = false;
    private SmileShot$State Tz = SmileShot$State.STATE_IDLE;

    public C0307J(C0329e c0329e) {
        this.Tx = c0329e;
        this.TB = new C0308K(this, c0329e.SN().getMainLooper());
    }

    public void abt() {
        C0090a.bvm("SmileShot", "[open]...");
        if (!this.TB.hasMessages(1000)) {
            this.TB.sendEmptyMessage(1000);
        }
    }

    public boolean abs() {
        if (SmileShot$State.STATE_IDLE != this.Tz) {
            return true;
        }
        return false;
    }

    public void close() {
        C0090a.bvm("SmileShot", "[close]...");
        this.TB.removeMessages(1000);
        abw();
    }

    public boolean abr() {
        boolean z = false;
        if (this.Tx.SP() == CameraMember.VIDEO_RECORD) {
            return false;
        }
        if ("on".equals(this.Tx.SS().getString("pref_camera_front_smile_shoot", this.Tx.Tb(R.string.pref_camera_smile_shoot_default)))) {
            z = true;
        }
        return z;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void abv() {
        /*
        r3 = this;
        r0 = "SmileShot";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "[startSmileShot]mCurState:";
        r1 = r1.append(r2);
        r2 = r3.Tz;
        r1 = r1.append(r2);
        r1 = r1.toString();
        com.p010a.C0090a.m0d(r0, r1);
        r1 = r3.TA;
        monitor-enter(r1);
        r0 = r3.Tz;	 Catch:{ all -> 0x005b }
        r2 = com.android.common.appService.SmileShot$State.STATE_IN_PROGRESS;	 Catch:{ all -> 0x005b }
        if (r0 != r2) goto L_0x0035;
    L_0x0025:
        r0 = r3.Tx;	 Catch:{ all -> 0x005b }
        r0 = r0.SX();	 Catch:{ all -> 0x005b }
        r0 = r0.JV();	 Catch:{ all -> 0x005b }
        r2 = com.android.common.camerastate.DeviceState.SNAPSHOT_IN_PROGRESS;	 Catch:{ all -> 0x005b }
        if (r0 == r2) goto L_0x0035;
    L_0x0033:
        monitor-exit(r1);
        return;
    L_0x0035:
        r0 = r3.Tx;	 Catch:{ all -> 0x005b }
        r0 = r0.SO();	 Catch:{ all -> 0x005b }
        if (r0 != 0) goto L_0x0033;
    L_0x003d:
        r0 = r3.abu();	 Catch:{ all -> 0x005b }
        if (r0 != 0) goto L_0x0045;
    L_0x0043:
        monitor-exit(r1);
        return;
    L_0x0045:
        r0 = r3.abu();	 Catch:{ all -> 0x005b }
        r2 = r3.TC;	 Catch:{ all -> 0x005b }
        r0.Ji(r2);	 Catch:{ all -> 0x005b }
        r0 = r3.abu();	 Catch:{ all -> 0x005b }
        r0.Jj();	 Catch:{ all -> 0x005b }
        r0 = com.android.common.appService.SmileShot$State.STATE_IN_PROGRESS;	 Catch:{ all -> 0x005b }
        r3.Tz = r0;	 Catch:{ all -> 0x005b }
        monitor-exit(r1);
        return;
    L_0x005b:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.appService.J.abv():void");
    }

    private void abw() {
        C0090a.m0d("SmileShot", "[stopSmileShot]mCurState:" + this.Tz);
        synchronized (this.TA) {
            if (this.Tz == SmileShot$State.STATE_IDLE) {
                return;
            }
            if (abu() != null) {
                abu().Jk();
                abu().Ji(null);
            }
            this.Tz = SmileShot$State.STATE_IDLE;
        }
    }

    private C0382m abu() {
        return C0384o.Jr().Jw(this.Tx.SQ());
    }
}
