package com.android.gallery3d.p038a;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.android.gallery3d.ui.C0912i;
import java.io.File;

public abstract class C0876e implements C0875o {
    protected final long apm;
    protected final long apn;
    protected final long apo;
    protected final int app;
    protected final double apq;
    protected final double apr;
    protected final String aps;
    protected final String apt;
    protected final long apu;
    protected final String apv;
    protected Boolean apw = Boolean.valueOf(false);
    protected final int apx;

    public abstract int aAY();

    protected abstract C0878j aBg(ImageView imageView, int i, int i2, ContentResolver contentResolver, C0870n c0870n);

    public C0876e(long j, String str, String str2, long j2, long j3, String str3, int i, int i2, long j4, double d, double d2) {
        this.apm = j;
        this.apv = new String(str);
        this.aps = new String(str2);
        this.apo = j2;
        this.apn = j3;
        this.apt = new String(str3);
        this.apx = i;
        this.app = i2;
        this.apu = j4;
        this.apq = d;
        this.apr = d2;
    }

    public long aBi() {
        return this.apo;
    }

    public long aBh() {
        return this.apn;
    }

    public String aBk() {
        return new String(this.apv);
    }

    public int aAZ() {
        return this.apx;
    }

    public int aAW() {
        return this.app;
    }

    public int aAX() {
        return 0;
    }

    public String aBj() {
        return this.apt;
    }

    public boolean aBa(int i) {
        return false;
    }

    public boolean aBm(int i) {
        return false;
    }

    public boolean aBe(Context context) {
        return new File(this.apt).delete();
    }

    public boolean aBd() {
        return true;
    }

    protected ImageView aBf(Context context, ImageView imageView, int i, int i2, Drawable drawable, C0870n c0870n) {
        imageView.setScaleType(ScaleType.FIT_XY);
        imageView.setImageDrawable(drawable);
        aBg(imageView, i, i2, context.getContentResolver(), c0870n).execute(new Void[0]);
        return imageView;
    }

    public View aBl(Activity activity, int i, int i2, Drawable drawable, C0870n c0870n) {
        return aBf(activity, new C0912i(activity), i, i2, drawable, c0870n);
    }

    public void aBb() {
        synchronized (this.apw) {
            this.apw = Boolean.valueOf(true);
        }
    }

    public void aBc() {
        synchronized (this.apw) {
            this.apw = Boolean.valueOf(false);
        }
    }

    protected boolean aBn() {
        boolean booleanValue;
        synchronized (this.apw) {
            booleanValue = this.apw.booleanValue();
        }
        return booleanValue;
    }
}
