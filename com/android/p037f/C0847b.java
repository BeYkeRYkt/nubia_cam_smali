package com.android.p037f;

import android.content.ContentValues;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.location.Location;
import android.os.Handler;
import android.util.SparseArray;
import cn.nubia.bigAperture.BigAperAlgorithm;
import cn.nubia.bigAperture.C0027c;
import cn.nubia.bigAperture.C0039o;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.custom.C0421M;
import com.android.common.exif.C0523o;
import com.android.common.p001l.C0624c;
import com.nubia.camera.common.Native.BufferCell;
import com.p010a.C0090a;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;

public class C0847b extends Thread {
    private C0329e aZR;
    private BigAperAlgorithm aZS = new BigAperAlgorithm();
    private boolean aZT = false;
    private C0039o aZU;
    private int aZV;
    private C0848c aZW;
    private int aZX;
    private Handler aZY = new C0857l(this);
    private int aZZ;
    private int baa;
    private BufferCell bab;
    private int bac;
    private boolean bad = false;
    private int bae;
    private int baf;
    private int bag;
    private BufferCell bah;

    public C0847b(C0329e c0329e, C0848c c0848c) {
        super("Photo3DThread");
        this.aZR = c0329e;
        this.aZW = c0848c;
    }

    public synchronized void bqV(byte[] bArr, int i, int i2, int i3, int i4, int i5) {
        if (this.bad || this.aZT || this.bab != null) {
            C0090a.m1e("Photo3DThread", "setMainCameraYUV fail: mStop " + this.bad + " mBusy " + this.aZT + " " + this.bab);
            return;
        }
        this.bab = new BufferCell(bArr);
        this.baa = i;
        this.aZZ = i2;
        this.aZX = i3;
        this.aZV = i4;
        this.bac = i5;
        notify();
    }

    public synchronized void bqW(byte[] bArr, int i, int i2, int i3, C0039o c0039o) {
        if (this.bad || this.aZT || this.bah != null) {
            C0090a.m1e("Photo3DThread", "setSubCameraYUV fail: mStop " + this.bad + " mBusy " + this.aZT + " " + this.bah);
            return;
        }
        this.bah = new BufferCell(bArr);
        this.bag = i;
        this.baf = i2;
        this.bae = i3;
        this.aZU = c0039o;
        notify();
    }

    public synchronized boolean bqU() {
        boolean z = true;
        synchronized (this) {
            if (!this.aZT && (this.bah == null || this.bab == null)) {
                z = false;
            }
        }
        return z;
    }

    public synchronized void bqT() {
        this.bad = true;
        notify();
    }

    public void run() {
        C0090a.bvo("Photo3DThread", "thread " + getId() + " start");
        while (!this.bad) {
            synchronized (this) {
                if (this.bah == null || this.bab == null) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                } else {
                    byte[] bKm;
                    this.aZT = true;
                    this.aZY.sendEmptyMessage(0);
                    if (!(this.aZU == null || (this.bag == this.aZU.bLR() && this.baf == this.aZU.bLS()))) {
                        C0090a.bvo("Photo3DThread", "cropYUV E " + this.bag + " " + this.baf);
                        bKm = C0027c.bKm(this.bah.btD(), this.bag, this.baf, this.aZU);
                        this.bah.release();
                        this.bah = new BufferCell(bKm);
                        this.bag = this.aZU.bLR();
                        this.baf = this.aZU.bLS();
                        C0090a.bvo("Photo3DThread", "cropYUV X " + this.bag + " " + this.baf);
                    }
                    C0090a.bvo("Photo3DThread", "generateAltekDepth E");
                    BufferCell bKy = this.aZS.bKy(this.bab, this.bah, this.baa, this.aZZ, this.bag, this.baf, 800, 600, this.aZX, this.aZV, this.bae);
                    C0090a.bvo("Photo3DThread", "generateAltekDepth X");
                    this.bah.release();
                    this.bah = null;
                    int[] iArr = new int[2];
                    BufferCell bufferCell = new BufferCell(((this.baa * this.aZZ) * 4) * 2);
                    C0090a.bvo("Photo3DThread", "generate3DPhoto E");
                    this.aZS.bKx(this.bab, this.baa, this.aZZ, bKy, 800, 600, this.bac, 200, bufferCell, iArr);
                    C0090a.bvo("Photo3DThread", "generate3DPhoto X");
                    bKy.release();
                    this.bab.release();
                    this.bab = null;
                    int Gg = this.aZR.Tn().Gg();
                    YuvImage yuvImage = new YuvImage(bufferCell.btD(), 17, iArr[0], iArr[1], null);
                    OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    yuvImage.compressToJpeg(new Rect(0, 0, iArr[0], iArr[1]), Gg, byteArrayOutputStream);
                    bKm = byteArrayOutputStream.toByteArray();
                    bufferCell.release();
                    String str = C0701s.aqX() + CameraMember.aaq(CameraMember.PHOTO3D.aan(), this.aZR.SQ());
                    String str2 = C0616j.aoP(this.aZR.TI()) + ".jpg";
                    this.aZR.Ti().alX(new C0624c(this.aZR, byteArrayOutputStream.toByteArray(), bqX(), str + "/", str2, bqS(str, str2, iArr[0], iArr[1], 0, bKm.length), 0, null));
                    this.aZT = false;
                    this.aZY.sendEmptyMessage(1);
                }
            }
        }
        release();
        C0090a.bvo("Photo3DThread", "thread " + getId() + " end");
    }

    private SparseArray bqX() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(C0523o.BY, C0421M.dC().dD().br());
        sparseArray.put(C0523o.BZ, C0421M.dC().dD().bs());
        return sparseArray;
    }

    private ContentValues bqS(String str, String str2, int i, int i2, int i3, int i4) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("datetaken", Long.valueOf(this.aZR.TI()));
        contentValues.put("_data", str + "/" + str2);
        contentValues.put("title", str2);
        contentValues.put("_display_name", str2);
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put("orientation", Integer.valueOf(i3));
        contentValues.put("_size", Integer.valueOf(i4));
        Location age = this.aZR.Tq().age();
        if (age != null) {
            contentValues.put("latitude", Double.valueOf(age.getLatitude()));
            contentValues.put("longitude", Double.valueOf(age.getLongitude()));
        }
        return contentValues;
    }

    private void release() {
        if (this.bab != null) {
            this.bab.release();
            this.bab = null;
        }
        if (this.bah != null) {
            this.bah.release();
            this.bah = null;
        }
    }
}
