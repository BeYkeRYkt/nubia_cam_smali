package com.android.gallery3d.p038a;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Environment;
import android.view.View;
import java.util.ArrayList;
import java.util.Comparator;

public class C0871a implements C0870n {
    private static final String[] aoY = new String[]{apa + "%"};
    public static final String aoZ = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM).toString();
    public static final String apa = (aoZ + "/Camera");
    private C0885q apb = new C0885q();
    private C0883m apc;
    private C0875o apd;
    private Drawable ape;
    private int apf = 1600;
    private int apg = 1600;

    public C0871a(Drawable drawable) {
        this.ape = drawable;
    }

    public void aAM(ContentResolver contentResolver, ArrayList arrayList, ArrayList arrayList2) {
        new C0872b(this, arrayList, arrayList2).execute(new ContentResolver[]{contentResolver});
    }

    public C0875o aAF(int i) {
        if (i < 0 || i >= this.apb.aBG()) {
            return null;
        }
        return this.apb.aBI(i);
    }

    public int aAG() {
        return this.apb.aBG();
    }

    public C0874d aAE(int i) {
        return aAF(i);
    }

    public void aAO(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            this.apf = 1600;
            this.apg = 1600;
            return;
        }
        if (i >= 1600) {
            i = 1600;
        }
        this.apg = i;
        if (i2 >= 1600) {
            i2 = 1600;
        }
        this.apf = i2;
    }

    public View aAH(Activity activity, int i) {
        if (i >= this.apb.aBG() || i < 0) {
            return null;
        }
        return this.apb.aBI(i).aBl(activity, this.apg, this.apf, this.ape.getConstantState().newDrawable(), this);
    }

    public void aAN(C0883m c0883m) {
        this.apc = c0883m;
        if (this.apb != null) {
            this.apc.aBz();
        }
    }

    public boolean aAA(int i) {
        if (i >= this.apb.aBG() || i <= 0) {
            return true;
        }
        return this.apb.aBI(i).aBd();
    }

    public void aAK(Context context, int i) {
        if (i < this.apb.aBG() && i >= 0) {
            C0874d aBJ = this.apb.aBJ(i);
            aAB(context);
            this.apd = aBJ;
            this.apc.aBA(i, aBJ);
        }
    }

    public int aAC(Uri uri) {
        return this.apb.aBK(uri);
    }

    public boolean aAP() {
        if (this.apd == null) {
            return false;
        }
        C0875o c0875o = this.apd;
        this.apd = null;
        aAI(c0875o);
        return true;
    }

    public boolean aAB(Context context) {
        if (this.apd == null) {
            return false;
        }
        new C0873c(this, context).execute(new C0875o[]{this.apd});
        this.apd = null;
        return true;
    }

    public Uri aAD() {
        if (this.apd == null) {
            return null;
        }
        return this.apd.aAV();
    }

    public void aAJ(ContentResolver contentResolver, Uri uri) {
        int aAC = aAC(uri);
        if (aAC != -1) {
            C0875o aBp = this.apb.aBI(aAC).aBp(contentResolver);
            if (aBp != null) {
                aAQ(aAC, aBp);
            }
        }
    }

    public void aAQ(int i, C0875o c0875o) {
        this.apb.aBL(i, c0875o);
        if (this.apc != null) {
            this.apc.aBB(new C0887s(this, i));
        }
    }

    public void aAI(C0875o c0875o) {
        int i = 0;
        Comparator c0884p = new C0884p();
        while (i < this.apb.aBG() && c0884p.compare(c0875o, this.apb.aBI(i)) > 0) {
            i++;
        }
        this.apb.aBM(i, c0875o);
        if (this.apc != null) {
            this.apc.aBC(i, c0875o);
        }
    }

    private void aAL(C0885q c0885q) {
        if (c0885q.aBG() != 0 || this.apb.aBG() != 0) {
            this.apb = c0885q;
            if (this.apc != null) {
                this.apc.aBz();
            }
        }
    }
}
