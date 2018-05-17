package com.android.multiexposure;

import android.content.ContentValues;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import android.hardware.Camera.Size;
import android.location.Location;
import android.net.Uri;
import android.util.SparseArray;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.appService.C0329e;
import com.android.common.custom.C0421M;
import com.android.common.exif.C0513e;
import com.android.common.exif.C0523o;
import com.android.common.p001l.C0624c;
import com.p010a.C0090a;

public abstract class C0968o implements PreviewCallback {
    protected int amb = 0;
    protected int amc = 0;
    public MultiExposure amd;
    protected C0329e ame;
    protected Bitmap amf;
    protected Thread amg;
    protected C0977l amh = null;
    protected int ami = 0;
    public int amj = 0;
    protected int amk = 0;
    protected Thread aml;
    protected byte[] amm;
    protected Uri amn;
    public byte[] amo;
    protected int amp;
    protected int amq;
    protected int amr;

    public abstract void awd();

    public C0968o(C0329e c0329e) {
        this.ame = c0329e;
        this.amd = new MultiExposure();
    }

    private void axM(int i) {
        this.amj = i;
        C0090a.bvo("BaseMultiExposure", "setRotation " + i);
    }

    public void axG(int i) {
        this.amk = i;
    }

    public int axD() {
        return this.ami;
    }

    public void axy(C0977l c0977l) {
        this.amh = c0977l;
    }

    public void axN() {
        this.ame.Ts().abI(this, this.ame.SQ());
    }

    public void axE() {
        this.ame.Ts().abF(this);
    }

    public void axI() {
        this.amh.axs(false);
        Size Gv = this.ame.Tn().Gv();
        this.amr = ((Gv.width * Gv.height) * 3) / 2;
        Gv = this.ame.Tn().Gr();
        this.amq = (Gv.width * Gv.height) * 4;
        axM(this.ame.To());
        awd();
        axN();
    }

    public void axC() {
    }

    public int axB() {
        return this.amb;
    }

    public int axH() {
        return this.amc;
    }

    public int axK() {
        return this.amp;
    }

    public void setParameter(int i) {
        if (i >= 0 && i <= 100) {
            this.amp = i;
            this.amd.setParameter(this.amp);
        }
    }

    public void release() {
        if (this.amd != null) {
            this.amd.release();
        }
    }

    public void axL(byte[] bArr) {
        if (this.ame == null || this.ame.VC() || this.ame.SM() == null) {
            C0090a.m1e("BaseMultiExposure", "saveFinalJpegData return");
            return;
        }
        C0090a.m1e("BaseMultiExposure", "saveFinalJpegData");
        long currentTimeMillis = System.currentTimeMillis();
        String aoP = C0616j.aoP(currentTimeMillis);
        String ara = C0701s.ara(this.ame.UW());
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        int i = options.outWidth;
        int i2 = options.outHeight;
        Location age = this.ame.Tq().age();
        float Gd = this.ame.Tn().Gd();
        float UU = this.ame.UU();
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(C0523o.BY, C0421M.dC().dD().br());
        sparseArray.put(C0523o.BZ, C0421M.dC().dD().bs());
        sparseArray.put(C0523o.Cc, new C0513e(UU, 0.01f));
        sparseArray.put(C0523o.Cs, new C0513e(Gd, 0.01f));
        sparseArray.put(C0523o.BW, Short.valueOf(C0523o.BW(this.amk)));
        sparseArray.put(C0523o.Cp, Integer.valueOf(i));
        sparseArray.put(C0523o.Cq, Integer.valueOf(i2));
        if (age != null) {
            C0616j.apc(age.getLatitude(), age.getLongitude(), sparseArray);
        }
        ContentValues contentValues = new ContentValues(9);
        contentValues.put("title", aoP);
        contentValues.put("_display_name", aoP + ".jpg");
        contentValues.put("datetaken", Long.valueOf(currentTimeMillis));
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put("orientation", Integer.valueOf(this.amk));
        contentValues.put("_data", ara + "/" + aoP + ".jpg");
        contentValues.put("_size", Integer.valueOf(bArr.length));
        contentValues.put("width", Integer.valueOf(i));
        contentValues.put("height", Integer.valueOf(i2));
        if (age != null) {
            contentValues.put("latitude", Double.valueOf(age.getLatitude()));
            contentValues.put("longitude", Double.valueOf(age.getLongitude()));
        }
        this.ame.Ti().alX(new C0624c(this.ame, bArr, sparseArray, ara + "/", aoP + ".jpg", contentValues, this.amk, new C0980p(this)));
    }

    public void awf(byte[] bArr) {
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
    }

    public void axA() {
        if (this.amf != null) {
            this.amf.recycle();
            this.amf = null;
        }
    }

    public void axw(byte[] bArr) {
        if (this.amo != null) {
            this.amo = null;
        }
        this.amo = bArr;
    }

    public byte[] axJ() {
        return this.amo;
    }

    public boolean axF() {
        return this.amf == null;
    }

    public void axx() {
        if (this.amg != null) {
            try {
                this.amg.join();
            } catch (InterruptedException e) {
                C0090a.m1e("BaseMultiExposure", "waitPutDataThread join " + e.getMessage());
            }
        }
    }

    void onPreExecute() {
        this.amh.axt(true);
    }

    byte[] doInBackground(Object... objArr) {
        if (objArr[0] != null) {
            this.amd.putData((byte[]) objArr[0], ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
        }
        return this.amd.getFinalData();
    }

    void awe(byte[] bArr) {
        axL(bArr);
        this.amh.axr(bArr, this.amn);
        if (this.amf != null) {
            this.amf.recycle();
            this.amf = null;
        }
        this.amh.axt(false);
    }

    public void axz() {
        if (this.aml != null) {
            try {
                this.aml.join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}
