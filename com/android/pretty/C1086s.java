package com.android.pretty;

import android.content.ContentValues;
import android.hardware.Camera.Size;
import android.location.Location;
import android.util.SparseArray;
import com.android.common.C0472e;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.appService.CameraMember;
import com.android.common.exif.C0513e;
import com.android.common.exif.C0523o;
import com.android.common.p001l.C0624c;
import com.nubia.camera.common.Native.BufferCell;
import com.nubia.camera.common.Native.CodecDataAlgorithm;
import com.nubia.camera.common.Native.EffectAlgorithm;
import com.nubia.camera.common.Native.SFBEngineAlgorithm;
import com.nubia.camera.common.Native.YUVAlgorithm;
import com.p010a.C0090a;
import java.io.File;

class C1086s extends Thread {
    private int auX;
    private int auY;
    private int auZ;
    private boolean ava = false;
    private String avb;
    private BufferCell avc;
    private boolean avd;
    final /* synthetic */ C1084p ave;

    public C1086s(C1084p c1084p, BufferCell bufferCell, String str, boolean z, int i, int i2, int i3) {
        this.ave = c1084p;
        this.avc = bufferCell;
        this.avb = str;
        this.avd = z;
        this.auX = i;
        this.auZ = i2;
        this.auY = i3;
    }

    public void cancel() {
        this.ava = true;
    }

    public void run() {
        Object aJr = aJr(this.avc, this.avb, this.avd, this.auX, this.auZ, this.auY);
        if (aJr != null) {
            aJt(aJr);
        }
        this.ave.auK.obtainMessage(2, aJr).sendToTarget();
    }

    private byte[] aJr(BufferCell bufferCell, String str, boolean z, int i, int i2, int i3) {
        if ("none".equals(str)) {
            Object obj = null;
        } else {
            int i4 = 1;
        }
        if (obj == null && !z) {
            return bufferCell.btD();
        }
        int[] iArr = new int[2];
        C0090a.m1e("BestPhotoService", "getFinalDataWithPrettyAndEffect jpegCell = " + bufferCell);
        BufferCell btI = CodecDataAlgorithm.btI(bufferCell, iArr);
        if (aJp(this.ava, btI, null, null)) {
            return null;
        }
        BufferCell btP = YUVAlgorithm.btP(btI, iArr[0], iArr[1]);
        if (aJp(this.ava, btI, btP, null)) {
            return null;
        }
        if (z) {
            SFBEngineAlgorithm.btG(btP, iArr[0], iArr[1], i, i2, i3);
        }
        if (aJp(this.ava, btI, btP, null)) {
            return null;
        }
        if (obj != null) {
            EffectAlgorithm.btJ(btP, iArr[0], iArr[1], str);
        }
        if (aJp(this.ava, btI, btP, null)) {
            return null;
        }
        BufferCell btO = YUVAlgorithm.btO(btP, iArr[0], iArr[1]);
        if (aJp(this.ava, btI, btP, btO)) {
            return null;
        }
        byte[] btH = CodecDataAlgorithm.btH(btO, iArr[0], iArr[1], 100);
        btI.release();
        btP.release();
        btO.release();
        return btH;
    }

    private String aJs(int i) {
        String str = C0701s.aqX() + CameraMember.aar(i);
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    private ContentValues aJq(int i, Size size, long j, int i2, String str, String str2, String str3) {
        int i3;
        int i4;
        if ((this.ave.auE.TW() + i) % 180 == 0) {
            i3 = size.width;
            i4 = size.height;
        } else {
            i3 = size.height;
            i4 = size.width;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("datetaken", Long.valueOf(j));
        contentValues.put("_data", str + "/" + str2);
        contentValues.put("title", str3);
        contentValues.put("_display_name", str2);
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put("orientation", Integer.valueOf(i));
        contentValues.put("_size", Integer.valueOf(i2));
        contentValues.put("width", Integer.valueOf(i3));
        contentValues.put("height", Integer.valueOf(i4));
        Location age = this.ave.auE.Tq().age();
        if (age != null) {
            contentValues.put("latitude", Double.valueOf(age.getLatitude()));
            contentValues.put("longitude", Double.valueOf(age.getLongitude()));
        }
        return contentValues;
    }

    private void aJt(byte[] bArr) {
        long currentTimeMillis = System.currentTimeMillis();
        String aoP = C0616j.aoP(currentTimeMillis);
        int TH = this.ave.auE.TH();
        Size Gr = this.ave.auE.Tn().Gr();
        int aoA = C0472e.aoA(bArr);
        String aJs = aJs(TH);
        String str = aoP + ".jpg";
        this.ave.auE.Ti().alX(new C0624c(this.ave.auE, bArr, aJu(), aJs + "/", str, aJq(aoA, Gr, currentTimeMillis, bArr.length, aJs, str, aoP), aoA, null));
    }

    private SparseArray aJu() {
        String HH = this.ave.auE.Tn().HH();
        String tB = this.ave.auE.SY().tB();
        if (tB == null || (HH.equals("auto") && "-1".equals(tB))) {
            return null;
        }
        SparseArray sparseArray = new SparseArray();
        if (!"-1".equals(tB)) {
            sparseArray.put(C0523o.Cb, new C0513e(Float.parseFloat(tB), 0.01f));
        }
        if (!HH.equals("auto")) {
            sparseArray.put(C0523o.Ca, Integer.valueOf(Integer.parseInt(HH.substring(3))));
        }
        return sparseArray;
    }

    private boolean aJp(boolean z, BufferCell... bufferCellArr) {
        if (z) {
            int length = bufferCellArr.length;
            for (int i = 0; i < length; i++) {
                if (bufferCellArr[i] != null) {
                    bufferCellArr[i].release();
                }
            }
        }
        return z;
    }
}
