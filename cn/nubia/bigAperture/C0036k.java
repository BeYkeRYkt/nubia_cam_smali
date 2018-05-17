package cn.nubia.bigAperture;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.util.Log;
import android.util.SparseArray;
import cn.nubia.arcsoft.C0019a;
import cn.nubia.arcsoft.C0020b;
import com.android.common.C0472e;
import com.android.common.C0616j;
import com.android.common.custom.C0421M;
import com.android.common.exif.C0513e;
import com.android.common.exif.C0523o;
import com.android.common.p032o.C0685a;
import com.android.common.p032o.C0686b;
import com.nubia.camera.common.Native.BufferCell;
import com.nubia.camera.common.Native.PrettyWaterMarkEffect;
import com.p010a.C0090a;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.OutputStream;

public class C0036k {
    private BigApertureTask boQ = null;
    private BigApertureDataPacker boR = null;
    private C0034l boS;
    private BufferCell boT;
    private byte[] boU;
    private ContentResolver boV;
    private BufferCell boW;
    private C0028d boX;
    private final boolean boY = Log.isLoggable("ApertureBackground", 3);
    private C0029e boZ;
    private C0030f bpa;
    private C0038n bpb;

    public C0036k(ContentResolver contentResolver, BigApertureTask bigApertureTask, BufferCell bufferCell, BufferCell bufferCell2, C0028d c0028d, byte[] bArr, C0029e c0029e, C0030f c0030f, C0038n c0038n, C0034l c0034l) {
        this.boV = contentResolver;
        this.boQ = bigApertureTask;
        this.boT = bufferCell;
        this.boW = bufferCell2;
        this.boX = c0028d;
        this.boU = bArr;
        this.boR = new BigApertureDataPacker();
        this.boZ = c0029e;
        this.bpa = c0030f;
        this.bpb = c0038n;
        this.boS = c0034l;
    }

    public void bLw() {
        bLx(this.boT);
        byte[] bLy = bLy(this.boT, this.boQ);
        this.boT.release();
        byte[] btD = this.boW.btD();
        this.boW.release();
        bLC(bLy, btD, this.boX.bof, this.boQ);
        if (bLB(bLy, this.boU, btD, this.boQ, this.boX, this.boZ)) {
            this.boS.bLv(this.boQ, this.boU, btD, this.bpb);
        }
    }

    private byte[] bLy(BufferCell bufferCell, BigApertureTask bigApertureTask) {
        long currentTimeMillis = System.currentTimeMillis();
        byte[] bKl = C0027c.bKl(bufferCell, bigApertureTask.bpu, bigApertureTask.bpv, 0);
        bLA("[perf test] compressBigAperatureJpeg: " + (System.currentTimeMillis() - currentTimeMillis) + "ms");
        return bKl;
    }

    private void bLC(byte[] bArr, byte[] bArr2, String str, BigApertureTask bigApertureTask) {
        if (BigApertureService.bnX) {
            byte[] bKq = C0027c.bKq(new File(str));
            C0685a.amA(bigApertureTask.bpp + "/blur.jpg", bArr);
            C0685a.amA(bigApertureTask.bpp + "/gallery_thumbnail.jpg", bKq);
            C0685a.amA(bigApertureTask.bpp + "/depth.yuv", bArr2);
        }
    }

    private boolean bLB(byte[] bArr, byte[] bArr2, byte[] bArr3, BigApertureTask bigApertureTask, C0028d c0028d, C0029e c0029e) {
        long currentTimeMillis = System.currentTimeMillis();
        if (C0616j.aoR(bigApertureTask.bpq, this.boV)) {
            byte[] bLD = bLD(bArr2, bArr, bigApertureTask, C0027c.bKp(c0028d.bof));
            if (bArr2 == null || bLD == null || bArr3 == null) {
                C0090a.bvo("BigApertureStorageRequest", "some data is null, drop the data");
                return false;
            }
            if (C0421M.dC().dD().cX()) {
                C0020b.bMC(c0028d.bof, bArr2, bLD, bArr3, bigApertureTask.bpu, bigApertureTask.bpv, bigApertureTask.bpE, bigApertureTask.bpF, bigApertureTask.bpG);
            } else {
                this.boR.bokehDataPack(c0028d.bof, bArr2, bLD, bArr3, bArr2.length, bLD.length, bigApertureTask.bpu, bigApertureTask.bpv, bigApertureTask.bpw, bigApertureTask.bpx, bigApertureTask.bpC, bigApertureTask.bpr, c0029e.boi, c0029e.boh, c0029e.bog);
            }
            int length = (bArr2.length + bLD.length) + bArr3.length;
            Options options = new Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            bLE(bigApertureTask.bpq, bLz(options.outWidth, options.outHeight, length, c0028d, bigApertureTask.bpC));
            bLA("[perf test] saveDataToGallery: " + (System.currentTimeMillis() - currentTimeMillis) + "ms");
            return true;
        }
        C0027c.bKn(new File(bigApertureTask.bpp));
        this.bpa.bKB(bigApertureTask);
        return false;
    }

    private byte[] bLD(byte[] bArr, byte[] bArr2, BigApertureTask bigApertureTask, boolean z) {
        C0523o c0523o = new C0523o();
        try {
            String str;
            c0523o.BZ(bArr);
            if (z) {
                str = "[aper, ";
            } else {
                str = "[bper, ";
            }
            float[] fArr = new float[]{bigApertureTask.bpy, bigApertureTask.bpz};
            if (C0421M.dC().dD().cX()) {
                C0019a.bMr(new float[]{bigApertureTask.bpy, bigApertureTask.bpz}, bigApertureTask.bpC, fArr);
            }
            str = str + String.valueOf(fArr[0]) + ", " + String.valueOf(fArr[1]) + ", done" + "; " + String.valueOf(bigApertureTask.bpB) + "]";
            if (c0523o.Cp() == null) {
                SparseArray sparseArray = new SparseArray();
                sparseArray.put(C0523o.BX, str);
                sparseArray.put(C0523o.Cc, new C0513e(bigApertureTask.bpA, 0.01f));
                sparseArray.put(C0523o.BW, Integer.valueOf(C0472e.aoB(bigApertureTask.bpC)));
                sparseArray.put(C0523o.BY, C0421M.dC().dD().br());
                sparseArray.put(C0523o.BZ, C0421M.dC().dD().bs());
                if (bigApertureTask.bpJ != null) {
                    sparseArray.put(C0523o.Cr, bigApertureTask.bpJ);
                }
                return C0686b.amC(bArr2, sparseArray);
            }
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            c0523o.Cf(c0523o.Ce(C0523o.BX, str));
            c0523o.Cf(c0523o.Ce(C0523o.Cc, new C0513e(bigApertureTask.bpA, 0.01f)));
            c0523o.Cf(c0523o.Ce(C0523o.BW, Integer.valueOf(C0472e.aoB(bigApertureTask.bpC))));
            Options options = new Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr2, 0, bArr2.length, options);
            c0523o.Cf(c0523o.Ce(C0523o.Cp, Integer.valueOf(options.outWidth)));
            c0523o.Cf(c0523o.Ce(C0523o.Cq, Integer.valueOf(options.outHeight)));
            if (bigApertureTask.bpJ != null) {
                c0523o.Cf(c0523o.Ce(C0523o.Cr, bigApertureTask.bpJ));
            }
            c0523o.Cc(bArr2, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable e) {
            C0090a.bvi("BigApertureStorageRequest", "updateExif fail", e);
            return bArr2;
        }
    }

    private ContentValues bLz(int i, int i2, int i3, C0028d c0028d, int i4) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("width", Integer.valueOf(i));
        contentValues.put("height", Integer.valueOf(i2));
        contentValues.put("_size", Integer.valueOf(i3));
        contentValues.put("datetaken", Long.valueOf(c0028d.boe + 1));
        contentValues.put("orientation", Integer.valueOf(i4));
        return contentValues;
    }

    private void bLE(Uri uri, ContentValues contentValues) {
        this.boV.update(uri, contentValues, null, null);
    }

    private void bLx(BufferCell bufferCell) {
        PrettyWaterMarkEffect.btL(bufferCell, this.boQ.bpu, this.boQ.bpv, this.boQ.bpK, this.boQ.bpC);
    }

    private void bLA(String str) {
        if (this.boY) {
            C0090a.m0d("BigApertureStorageRequest", str);
        }
    }
}
