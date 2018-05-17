package com.android.common.p033p;

import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.SystemProperties;
import android.widget.Toast;
import cn.nubia.p003c.C0046a;
import com.android.camera.R;
import com.p010a.C0090a;
import java.util.Map;

public class C0690a {
    private static C0690a afz = null;
    private ProgressDialog afr = null;
    private Context afs = null;
    private Handler aft = null;
    private String afu = null;
    private boolean afv = false;
    private boolean afw = false;
    private Object afx = new Object();
    private String afy = null;

    public C0690a amH(Context context, boolean z) {
        synchronized (this.afx) {
            this.afs = context;
            this.afv = z;
            this.aft = new Handler(this.afs.getMainLooper());
        }
        return afz;
    }

    public void release() {
        synchronized (this.afx) {
            if (this.aft != null) {
                this.aft.removeCallbacksAndMessages(null);
            }
            this.afs = null;
            this.aft = null;
        }
        amN();
        this.afr = null;
    }

    private C0690a() {
    }

    public static C0690a amG() {
        if (afz == null) {
            afz = new C0690a();
        }
        return afz;
    }

    private void amO() {
        amP();
    }

    private void amP() {
        if (this.afy != null) {
            C0090a.bvo("Upgrade", "mUrl is had.");
            return;
        }
        this.afy = "http://nuvision.app.nubia.cn/apk/v2/ver.zte?model=" + Build.PRODUCT + "&soft_version=" + SystemProperties.get("ro.build.internal.id", "unKnow") + "&hardware_platform=" + SystemProperties.get("ro.board.platform", "unKnow") + "&imei=" + this.afu;
        C0090a.bvo("Upgrade", "mUrl = " + this.afy);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void amI() {
        /*
        r2 = this;
        r1 = r2.afx;
        monitor-enter(r1);
        r0 = r2.afw;	 Catch:{ all -> 0x001c }
        if (r0 == 0) goto L_0x001f;
    L_0x0007:
        r0 = r2.afr;	 Catch:{ all -> 0x001c }
        if (r0 == 0) goto L_0x0013;
    L_0x000b:
        r0 = r2.afr;	 Catch:{ all -> 0x001c }
        r0 = r0.isShowing();	 Catch:{ all -> 0x001c }
        if (r0 == 0) goto L_0x0015;
    L_0x0013:
        monitor-exit(r1);
        return;
    L_0x0015:
        r0 = 2131362871; // 0x7f0a0437 float:1.8345535E38 double:1.0530331734E-314;
        r2.amS(r0);	 Catch:{ all -> 0x001c }
        goto L_0x0013;
    L_0x001c:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
    L_0x001f:
        r0 = 1;
        r2.afw = r0;	 Catch:{ all -> 0x001c }
        monitor-exit(r1);
        r2.amQ();
        r2.amO();
        r0 = new com.android.common.p.b;
        r0.<init>(r2);
        r0.start();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.p.a.amI():void");
    }

    private void amQ() {
        if (!this.afv) {
            this.afr = new ProgressDialog(this.afs);
            this.afr.setProgressStyle(0);
            this.afr.setMessage(this.afs.getString(R.string.camera_about_upgrade_progress));
            this.afr.setCancelable(true);
            this.afr.show();
        }
    }

    private void amN() {
        if (!this.afv && this.afr != null) {
            this.afr.dismiss();
        }
    }

    protected void amJ(Map map) {
        synchronized (this.afx) {
            this.afw = false;
            if (this.aft == null) {
                return;
            }
            this.aft.post(new C0692c(this, map));
        }
    }

    private void amL(C0046a c0046a, PackageInfo packageInfo) {
        SharedPreferences sharedPreferences = this.afs.getSharedPreferences(this.afs.getPackageName(), 0);
        int i = sharedPreferences.getInt("version", 0);
        if (c0046a != null && c0046a.bMH() > packageInfo.versionCode && c0046a.bMH() > i) {
            amT(c0046a);
            Editor edit = sharedPreferences.edit();
            edit.putInt("version", c0046a.bMH());
            edit.apply();
        }
    }

    private void amM(C0046a c0046a, PackageInfo packageInfo) {
        if (c0046a.bMH() > packageInfo.versionCode) {
            amT(c0046a);
        } else {
            amS(R.string.check_version_already_latest);
        }
    }

    private void amR(String str) {
        switch (Integer.parseInt(str)) {
            case 0:
                amS(R.string.check_version_error_network);
                return;
            case 1:
                amS(R.string.check_version_already_latest);
                return;
            case 2:
                amS(R.string.check_version_error_server);
                return;
            default:
                return;
        }
    }

    private void amT(C0046a c0046a) {
        new Builder(this.afs).setMessage(R.string.camera_about_versions_find).setPositiveButton(R.string.camera_about_versions_sure, new C0693d(this, c0046a)).setNegativeButton(R.string.camera_about_versions_cancel, new C0694e(this)).show();
    }

    private boolean amK() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    private void amS(int i) {
        Toast.makeText(this.afs, this.afs.getString(i), 0).show();
    }
}
