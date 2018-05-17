package com.android.common.p001l;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.provider.MediaStore.Images.Media;
import android.util.SparseArray;
import com.android.common.C0261C;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.p025c.C0373c;
import com.android.common.p028h.C0557a;
import com.android.common.p032o.C0685a;
import com.android.common.p032o.C0686b;
import com.android.common.p032o.C0687c;
import com.android.common.p032o.C0688d;
import com.android.common.p032o.C0689e;
import com.android.common.storagemanager.C0718a;
import com.android.common.storagemanager.C0722e;
import com.android.common.storagemanager.StorageResult$StorageResultType;
import com.p010a.C0090a;

public class C0623b extends C0621f {
    private C0329e ZY;
    private Bitmap ZZ = null;
    private ContentResolver aaa;
    private ContentValues aab = null;
    private int aac = 0;
    private String aad = null;
    private Resources aae;
    private C0722e aaf;
    private C0557a aag;
    private int aah;
    private int aai;
    private String mFileName = null;

    public C0623b(C0329e c0329e, Bitmap bitmap, SparseArray sparseArray, String str, String str2, ContentValues contentValues, int i, C0010g c0010g) {
        super(c0329e, sparseArray);
        this.aae = c0329e.SN().getResources();
        this.aai = C0616j.apd(c0329e);
        this.aaa = c0329e.TF();
        this.aah = c0329e.Vg();
        this.aag = c0329e.Th();
        this.aaf = c0329e.Ti();
        this.ZY = c0329e;
        this.ZZ = bitmap;
        this.aad = str;
        this.mFileName = str2;
        this.aab = contentValues;
        this.aac = i;
        this.aaG.aeu = c0010g;
    }

    public C0718a ahi() {
        int i = 0;
        if (this.ZZ == null) {
            C0090a.m1e("BitmapStorageRequest", "bitmap can not be null");
            this.aaG.aes = StorageResult$StorageResultType.DATA_IS_NULL;
            return this.aaG;
        } else if (this.aad == null) {
            C0090a.m1e("BitmapStorageRequest", "path can not be null");
            this.aaG.aes = StorageResult$StorageResultType.PATH_NOT_EXIST;
            return this.aaG;
        } else {
            C0685a.amB(this.aad);
            if (!this.aaF || this.aaf.amb() > 104857600) {
                if (this.aai != 0) {
                    if (ahk()) {
                        i = this.aac;
                    }
                    C0261C.avH(i, this.aai, this.aae, this.ZZ);
                }
                C0687c amF = C0689e.amF(this.ZZ, 95);
                if (amF.afq) {
                    byte[] bArr = amF.afp;
                    amF.afp = null;
                    if (!(this.aaH == null || bArr == null)) {
                        bArr = C0686b.amC(bArr, this.aaH);
                        if (bArr == null || bArr.length == 0) {
                            this.aaG.aes = StorageResult$StorageResultType.WRITE_EXIF_FAIL;
                            return this.aaG;
                        }
                    }
                    if (bArr == null || !C0685a.amA(this.aad + this.mFileName, bArr)) {
                        this.aaG.aes = StorageResult$StorageResultType.WRITE_FILE_FAIL;
                        return this.aaG;
                    }
                    if (this.aab != null) {
                        this.aaG.aet = C0688d.amD(this.aaa, Media.EXTERNAL_CONTENT_URI, this.aab);
                        C0090a.bvo("BitmapStorageRequest", "Uri:" + this.aaG.aet);
                        if (this.aaG.aet == null) {
                            this.aaG.aes = StorageResult$StorageResultType.WRITE_DATABASE_FAIL;
                            return this.aaG;
                        }
                    }
                    return this.aaG;
                }
                amF.afp = null;
                this.aaG.aes = StorageResult$StorageResultType.COMPRESS_FAIL;
                return this.aaG;
            }
            C0090a.m1e("BitmapStorageRequest", "storage is not enough");
            this.aaG.aes = StorageResult$StorageResultType.WRITE_FILE_FAIL;
            return this.aaG;
        }
    }

    private boolean ahk() {
        if (this.ZY.SP() == CameraMember.CLONE) {
            return true;
        }
        return false;
    }

    public void ahj(C0718a c0718a) {
        if (c0718a.aes != StorageResult$StorageResultType.SUCCESS) {
            C0090a.bvo("BitmapStorageRequest", "no thumbnail request because storage fail " + c0718a.aes);
            return;
        }
        this.aag.afj(new C0373c(c0718a.aet, this.ZZ, this.aac, ((float) this.aah) / ((float) this.ZZ.getWidth())));
    }
}
