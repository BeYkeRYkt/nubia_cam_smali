package com.android.common.p001l;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.provider.MediaStore.Images.Media;
import android.util.SparseArray;
import com.android.common.C0261C;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.p025c.C0371a;
import com.android.common.p028h.C0557a;
import com.android.common.p032o.C0685a;
import com.android.common.p032o.C0686b;
import com.android.common.p032o.C0687c;
import com.android.common.p032o.C0689e;
import com.android.common.storagemanager.C0718a;
import com.android.common.storagemanager.C0722e;
import com.android.common.storagemanager.StorageResult$StorageResultType;
import com.p010a.C0090a;

public class C0624c extends C0621f {
    private C0329e aaj;
    private ContentResolver aak;
    private ContentValues aal = null;
    private byte[] aam = null;
    private int aan = 0;
    private String aao = null;
    private C0722e aap;
    private C0557a aaq;
    private int aar;
    private String mFileName = null;

    public C0624c(C0329e c0329e, byte[] bArr, SparseArray sparseArray, String str, String str2, ContentValues contentValues, int i, C0010g c0010g) {
        super(c0329e, sparseArray);
        this.aaj = c0329e;
        this.aak = c0329e.TF();
        this.aar = c0329e.Vg();
        this.aaq = c0329e.Th();
        this.aap = c0329e.Ti();
        this.aam = bArr;
        this.aao = str;
        this.mFileName = str2;
        this.aal = contentValues;
        this.aan = i;
        this.aaG.aeu = c0010g;
    }

    public C0718a ahi() {
        if (this.aam == null) {
            C0090a.m1e("JpegStorageRequest", "Jpeg can not be null");
            this.aaG.aes = StorageResult$StorageResultType.DATA_IS_NULL;
            return this.aaG;
        } else if (this.aao == null) {
            C0090a.m1e("JpegStorageRequest", "Path can not be null");
            this.aaG.aes = StorageResult$StorageResultType.PATH_NOT_EXIST;
            return this.aaG;
        } else {
            if (!C0685a.amB(this.aao)) {
                C0090a.m1e("JpegStorageRequest", "mkdirs fail " + this.aao);
            }
            if (!this.aaF || this.aap.amb() > 104857600) {
                byte[] amC;
                if (this.aaH != null) {
                    amC = C0686b.amC(this.aam, this.aaH);
                    if (amC == null || amC.length == 0) {
                        this.aaG.aes = StorageResult$StorageResultType.WRITE_EXIF_FAIL;
                        return this.aaG;
                    }
                }
                amC = this.aam;
                if (this.aaj.SP() == CameraMember.MULTIEXPOSURE) {
                    amC = ahl(amC);
                    this.aal.put("_size", Integer.valueOf(amC.length));
                }
                if (C0685a.amA(this.aao + this.mFileName, amC)) {
                    C0090a.bvo("JpegStorageRequest", "FileName:" + this.aao + this.mFileName);
                    if (this.aal != null) {
                        this.aaG.aet = this.aak.insert(Media.EXTERNAL_CONTENT_URI, this.aal);
                        if (this.aaG.aet == null) {
                            this.aaG.aes = StorageResult$StorageResultType.WRITE_DATABASE_FAIL;
                            return this.aaG;
                        }
                    }
                    C0090a.bvo("JpegStorageRequest", "Uri:" + this.aaG.aet);
                    return this.aaG;
                }
                this.aaG.aes = StorageResult$StorageResultType.WRITE_FILE_FAIL;
                return this.aaG;
            }
            C0090a.m1e("JpegStorageRequest", "storage is not enough");
            this.aaG.aes = StorageResult$StorageResultType.WRITE_FILE_FAIL;
            return this.aaG;
        }
    }

    private byte[] ahl(byte[] bArr) {
        int apd = C0616j.apd(this.aaj);
        if (apd == 0) {
            return bArr;
        }
        Bitmap ape = C0616j.ape(bArr);
        C0261C.avH(this.aan, apd, this.aaj.SN().getResources(), ape);
        C0687c c0687c = new C0687c();
        c0687c = C0689e.amF(ape, 90);
        if (c0687c.afq) {
            return c0687c.afp;
        }
        C0090a.bvo("JpegStorageRequest", "because compress jpeg fialed, add water mark fail");
        return bArr;
    }

    public void ahj(C0718a c0718a) {
        if (c0718a.aes != StorageResult$StorageResultType.SUCCESS) {
            C0090a.bvo("JpegStorageRequest", "no thumbnail request because storage fail " + c0718a.aes);
            return;
        }
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(this.aam, 0, this.aam.length, options);
        this.aaq.afj(new C0371a(c0718a.aet, this.aam, this.aan, Integer.highestOneBit((int) Math.ceil(((double) options.outWidth) / ((double) this.aar)))));
    }
}
