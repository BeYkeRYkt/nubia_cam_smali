package com.android.common.p028h;

import android.app.Activity;
import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.os.ConditionVariable;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy;
import com.android.common.ActivityBase;
import com.android.common.appService.C0329e;
import com.android.common.p025c.C0370e;
import com.p010a.C0090a;
import java.io.File;
import java.util.ArrayList;

public class C0557a {
    private C0329e Yd = null;
    private Boolean Ye = Boolean.valueOf(false);
    private boolean Yf = true;
    private File Yg;
    private long Yh = 0;
    private ArrayList Yi = new ArrayList();
    private AsyncTask Yj = null;
    private ConditionVariable Yk = new ConditionVariable(true);
    private C0562f Yl = null;
    private C0370e Ym = null;

    public C0557a(C0329e c0329e) {
        this.Yd = c0329e;
        ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.allowThreadDiskReads();
        this.Yg = afl().getFilesDir();
        StrictMode.setThreadPolicy(threadPolicy);
    }

    public void afh(boolean z) {
        if (this.Yf && !z) {
            this.Yh = 0;
        }
        C0090a.bvo("ThumbnailManager", "setFastUpdateThumbnail " + z);
        this.Yf = z;
    }

    public void afj(C0370e c0370e) {
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.Yh;
        if (!this.Yf) {
            if (0 >= j || j >= 1000) {
                this.Yh = currentTimeMillis;
            } else {
                C0090a.m0d("ThumbnailManager", "In slow update mode ignore too fast thumbnail update request");
                return;
            }
        }
        synchronized (this.Ye) {
            if (this.Ye.booleanValue()) {
                this.Ym = c0370e;
            } else {
                new C0559c().execute(new C0370e[]{c0370e});
                this.Ye = Boolean.valueOf(true);
            }
        }
    }

    public void afi(C0558b c0558b) {
        if (!this.Yi.contains(c0558b)) {
            this.Yi.add(c0558b);
        }
    }

    public void aft(C0558b c0558b) {
        this.Yi.remove(c0558b);
    }

    private void afs(Bitmap bitmap) {
        if (!this.Yi.isEmpty()) {
            for (C0558b afH : this.Yi) {
                afH.afH(bitmap);
            }
        }
    }

    public void afx(C0562f c0562f) {
        C0090a.bvo("ThumbnailManager", "setThumbnail " + (c0562f == null ? "null" : c0562f.afR()));
        this.Yl = c0562f;
        afz();
        if (this.Yd.SO()) {
            afu();
        }
    }

    public void afy() {
        afz();
    }

    private void afz() {
        if (afr()) {
            this.Yl = null;
        }
        if (this.Yl != null) {
            afs(this.Yl.afS());
        } else {
            afs(null);
        }
    }

    public C0562f afq() {
        return this.Yl;
    }

    public void afo() {
        C0090a.bvo("ThumbnailManager", "getLastThumbnail");
        if (this.Ye.booleanValue()) {
            C0090a.bvo("ThumbnailManager", "CreateThumbnailTask is running");
        } else {
            this.Yj = new C0560d(this, true).execute(new Void[0]);
        }
    }

    public void afp() {
        if (this.Yj == null || !(this.Yj.getStatus() == Status.PENDING || this.Yj.getStatus() == Status.RUNNING)) {
            this.Yj = new C0560d(this, false).execute(new Void[0]);
        } else {
            C0090a.bvo("ThumbnailManager", "mLoadThumbnailTask has started");
        }
    }

    public void afu() {
        if (afq() != null && !afq().afT()) {
            new C0561e().execute(new C0562f[]{afq()});
        }
    }

    public void afv() {
        if (afq() != null && !afq().afT()) {
            afq().afQ(this.Yg);
        }
    }

    public void afk() {
        if (this.Yj != null) {
            this.Yj.cancel(true);
            this.Yj = null;
        }
    }

    public void afw(ConditionVariable conditionVariable) {
        this.Yk = conditionVariable;
    }

    private boolean afr() {
        Activity afl = afl();
        if ((afl instanceof ActivityBase) && ((ActivityBase) afl).arE() && !afm().TV()) {
            return true;
        }
        return false;
    }

    private C0329e afm() {
        return this.Yd;
    }

    private ContentResolver afn() {
        return afm().TF();
    }

    private Activity afl() {
        return afm().SN();
    }
}
