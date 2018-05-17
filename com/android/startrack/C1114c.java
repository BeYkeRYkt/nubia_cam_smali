package com.android.startrack;

import android.content.ContentValues;
import android.graphics.Bitmap;
import android.hardware.Camera.Size;
import android.location.Location;
import android.util.SparseArray;
import com.android.common.C0261C;
import com.android.common.C0472e;
import com.android.common.C0616j;
import com.android.common.CameraBufferManager;
import com.android.common.appService.C0329e;
import com.android.common.exif.C0513e;
import com.android.common.exif.C0523o;
import com.android.common.p001l.C0624c;
import com.android.common.p032o.C0687c;
import com.android.common.p032o.C0689e;
import com.android.common.storagemanager.StorageManager$StorageStatusType;
import com.p010a.C0090a;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

public class C1114c extends Thread {
    private boolean aKH;
    private C0329e aKI;
    private boolean aKJ;
    private ByteBuffer aKK;
    private CameraBufferManager aKL;
    private C0523o aKM;
    private boolean aKN;
    private boolean aKO;
    private int aKP;
    private byte[] aKQ;
    private int aKR;
    private Location aKS;
    private int aKT;
    private C1117f aKU;
    private int aKV;

    public synchronized void bbe() {
        this.aKQ = null;
        bbf();
        this.aKK = null;
        this.aKI = null;
        this.aKU = null;
        this.aKO = false;
        C0090a.m1e("StarTrackComposeThread", "release all");
    }

    public C1114c(C0329e c0329e, C1117f c1117f) {
        this.aKJ = false;
        this.aKQ = null;
        this.aKN = false;
        this.aKV = 0;
        this.aKP = 0;
        this.aKL = null;
        this.aKT = 0;
        this.aKH = true;
        this.aKM = new C0523o();
        this.aKR = 0;
        this.aKO = false;
        this.aKV = 0;
        this.aKP = 0;
        this.aKN = false;
        this.aKI = c0329e;
        this.aKL = new CameraBufferManager();
        this.aKT = 0;
        this.aKU = c1117f;
        this.aKS = this.aKI.Tq().age();
        start();
    }

    public synchronized boolean bbd(byte[] bArr) {
        C0090a.m1e("StarTrackComposeThread", "thread putData mBusy: " + this.aKJ);
        if (this.aKJ || this.aKQ != null) {
            this.aKI.TU();
            return false;
        }
        this.aKQ = bArr;
        notifyAll();
        return true;
    }

    public synchronized void bba() {
        C0090a.m1e("StarTrackComposeThread", "set thread finish");
        this.aKN = true;
        notifyAll();
    }

    public void run() {
        while (true) {
            synchronized (this) {
                if (this.aKN) {
                    break;
                } else if (this.aKQ == null) {
                    C0090a.m1e("StarTrackComposeThread", " jpeg is null, so wait");
                    this.aKJ = false;
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        System.gc();
                        this.aKI.TU();
                        try {
                            bbc(this.aKQ);
                            bbg();
                            bbb(this.aKQ);
                            this.aKR = C0472e.aoA(this.aKQ);
                            this.aKL.putBrightnessJpegData(this.aKQ.length, this.aKQ);
                            this.aKT++;
                            C0090a.m1e("StarTrackComposeThread", " copy pixels to jni num: " + this.aKT);
                            byte[] brightnessJpegData = this.aKL.getBrightnessJpegData(this.aKV, this.aKP);
                            bbh(brightnessJpegData);
                            this.aKU.bbm(brightnessJpegData, this.aKR);
                            System.gc();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        synchronized (this) {
                            this.aKQ = null;
                            this.aKJ = false;
                        }
                    }
                } else {
                    this.aKJ = true;
                }
            }
        }
        C0090a.m1e("StarTrackComposeThread", " thread finishing");
        this.aKQ = null;
        this.aKJ = false;
        if (this.aKU != null) {
            this.aKU.aKY.sendEmptyMessage(69);
        }
        bbe();
    }

    private void bbc(byte[] bArr) {
        Size Gr = this.aKI.Tn().Gr();
        if ((C0472e.aoA(bArr) + this.aKI.TW()) % 180 == 0) {
            this.aKV = Gr.width;
            this.aKP = Gr.height;
            return;
        }
        this.aKV = Gr.height;
        this.aKP = Gr.width;
    }

    private void bbg() {
        if (this.aKH) {
            C0090a.m1e("StarTrackComposeThread", "save process image num: " + (this.aKT + 1));
            String str = this.aKU.aKZ;
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            long currentTimeMillis = System.currentTimeMillis();
            String aoP = C0616j.aoP(currentTimeMillis);
            int aoA = C0472e.aoA(this.aKQ);
            long length = (long) this.aKQ.length;
            SparseArray baZ = baZ();
            ContentValues baY = baY(aoP, str, currentTimeMillis, length, this.aKV, this.aKP, aoA);
            this.aKI.Ti().alX(new C0624c(this.aKI, this.aKQ, baZ, str + "/", aoP + ".jpg", baY, aoA, new C1115d()));
        }
    }

    private SparseArray baZ() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(C0523o.Cb, new C0513e((float) Integer.parseInt(this.aKI.SY().tB()), 0.01f));
        bbi(sparseArray);
        if (this.aKS != null) {
            C0616j.apc(this.aKS.getLatitude(), this.aKS.getLongitude(), sparseArray);
        }
        return sparseArray;
    }

    private void bbi(SparseArray sparseArray) {
        String HH = this.aKI.Tn().HH();
        if (!HH.equals("auto")) {
            if (HH.indexOf("ISO") == -1) {
                sparseArray.put(C0523o.Ca, Integer.valueOf(Integer.parseInt(HH)));
            } else {
                sparseArray.put(C0523o.Ca, Integer.valueOf(Integer.parseInt(HH.substring(3))));
            }
        }
    }

    private ContentValues baY(String str, String str2, long j, long j2, int i, int i2, int i3) {
        ContentValues contentValues = new ContentValues(9);
        contentValues.put("title", str);
        contentValues.put("_display_name", str + ".jpg");
        contentValues.put("datetaken", Long.valueOf(j));
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put("orientation", Integer.valueOf(i3));
        contentValues.put("_data", str2 + "/" + str + ".jpg");
        contentValues.put("_size", Long.valueOf(j2));
        contentValues.put("width", Integer.valueOf(i));
        contentValues.put("height", Integer.valueOf(i2));
        C0090a.bvo("StarTrackComposeThread", "with:" + i + ", height:" + i2);
        if (this.aKS != null) {
            contentValues.put("latitude", Double.valueOf(this.aKS.getLatitude()));
            contentValues.put("longitude", Double.valueOf(this.aKS.getLongitude()));
        }
        return contentValues;
    }

    private ByteArrayOutputStream baX(byte[] bArr) {
        C0090a.m1e("StarTrackComposeThread", "createBaosWithExif");
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            this.aKM.Cc(bArr, byteArrayOutputStream);
        } catch (Throwable e) {
            C0090a.bvi("startTrackcomposethread", "Could not write EXIF", e);
        }
        return byteArrayOutputStream;
    }

    private void bbb(byte[] bArr) {
        if (!this.aKO) {
            try {
                this.aKM.BZ(bArr);
                this.aKM.Cd();
                this.aKO = true;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void bbf() {
        if (this.aKL != null) {
            this.aKL.releaseBrightnessBuffer();
            this.aKL = null;
        }
    }

    private void bbh(byte[] bArr) {
        C0090a.m1e("StarTrackComposeThread", "saveStarTrackImage");
        String str = this.aKU.aLa;
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        long currentTimeMillis = System.currentTimeMillis();
        String aoP = C0616j.aoP(currentTimeMillis);
        byte[] bbj = bbj(baW(bArr));
        ContentValues baY = baY(aoP, str, currentTimeMillis, (long) bbj.length, this.aKV, this.aKP, this.aKR);
        C0329e c0329e = this.aKI;
        String str2 = str + "/";
        String str3 = aoP + ".jpg";
        C1117f c1117f = this.aKU;
        c1117f.getClass();
        if (this.aKI.Ti().alX(new C0624c(c0329e, bbj, null, str2, str3, baY, 0, new C1118g(c1117f))) == StorageManager$StorageStatusType.STORAGE_INSUFFICIENT) {
            this.aKU.aKY.sendEmptyMessage(114);
        }
    }

    private byte[] baW(byte[] bArr) {
        int apd = C0616j.apd(this.aKI);
        if (apd == 0) {
            return bArr;
        }
        Bitmap ape = C0616j.ape(bArr);
        C0261C.avH(this.aKR, apd, this.aKI.SN().getResources(), ape);
        C0687c c0687c = new C0687c();
        c0687c = C0689e.amF(ape, 100);
        if (c0687c.afq) {
            return c0687c.afp;
        }
        C0090a.bvo("StarTrackComposeThread", "because compress jpeg fialed, add water mark fail");
        return bArr;
    }

    private byte[] bbj(byte[] bArr) {
        this.aKM.Cf(this.aKM.Ce(C0523o.Cb, new C0513e((float) (Integer.parseInt(this.aKI.SY().tB()) * this.aKT), 0.1f)));
        if (this.aKS != null) {
            this.aKM.Cg(this.aKS.getLatitude(), this.aKS.getLongitude());
        }
        String HH = this.aKI.Tn().HH();
        if (!HH.equals("auto")) {
            if (HH.indexOf("ISO") == -1) {
                this.aKM.Cf(this.aKM.Ce(C0523o.Ca, Integer.valueOf(Integer.parseInt(HH))));
            } else {
                this.aKM.Cf(this.aKM.Ce(C0523o.Ca, Integer.valueOf(Integer.parseInt(HH.substring(3)))));
            }
        }
        return baX(bArr).toByteArray();
    }
}
