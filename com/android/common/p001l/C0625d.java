package com.android.common.p001l;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Matrix;
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
import com.android.common.p032o.C0689e;
import com.android.common.storagemanager.C0718a;
import com.android.common.storagemanager.C0722e;
import com.android.common.storagemanager.StorageResult$StorageResultType;
import com.p010a.C0090a;
import java.nio.ByteBuffer;

public class C0625d extends C0621f {
    private C0557a aaA;
    private int aaB;
    private int aaC = 0;
    private Matrix aaD;
    private int aaE;
    private Bitmap aas;
    private CameraMember aat;
    private ContentResolver aau;
    private ContentValues aav = null;
    private ByteBuffer aaw;
    private String aax;
    private Resources aay;
    private C0722e aaz;
    private int height;
    private String mName;
    private int width;

    public C0625d(C0329e c0329e, ByteBuffer byteBuffer, int i, int i2, Matrix matrix, int i3, String str, String str2, SparseArray sparseArray, ContentValues contentValues, C0010g c0010g) {
        super(c0329e, sparseArray);
        this.aau = c0329e.TF();
        this.aay = c0329e.SN().getResources();
        this.aaB = c0329e.Vg();
        this.aaA = c0329e.Th();
        this.aaz = c0329e.Ti();
        this.aaC = C0616j.apd(c0329e);
        this.aat = c0329e.SP();
        this.aaw = byteBuffer;
        this.width = i;
        this.height = i2;
        this.aaD = matrix;
        this.aaE = i3;
        this.aav = contentValues;
        this.aax = str;
        this.mName = str2;
        this.aaG.aeu = c0010g;
    }

    public C0718a ahi() {
        if (this.aaw == null) {
            C0090a.m1e("ByteBufferStorageRequest", "ByteBuffer can not be null");
            this.aaG.aes = StorageResult$StorageResultType.DATA_IS_NULL;
            return this.aaG;
        } else if (this.aax == null) {
            C0090a.m1e("ByteBufferStorageRequest", "path can not be null");
            this.aaG.aes = StorageResult$StorageResultType.PATH_NOT_EXIST;
            return this.aaG;
        } else {
            C0685a.amB(this.aax);
            if (!this.aaF || this.aaz.amb() > 104857600) {
                this.aas = Bitmap.createBitmap(this.width, this.height, Config.ARGB_8888);
                this.aas.copyPixelsFromBuffer(this.aaw);
                this.aas = Bitmap.createBitmap(this.aas, 0, 0, this.width, this.height, this.aaD, true);
                if (!(this.aaC == 0 || this.aat == CameraMember.VIDEO_RECORD)) {
                    C0261C.avH(0, this.aaC, this.aay, this.aas);
                }
                C0687c amF = C0689e.amF(this.aas, this.aaE);
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
                    if (bArr == null || !C0685a.amA(this.aax + this.mName, bArr)) {
                        this.aaG.aes = StorageResult$StorageResultType.WRITE_FILE_FAIL;
                        return this.aaG;
                    }
                    if (this.aav != null) {
                        this.aaG.aet = this.aau.insert(Media.EXTERNAL_CONTENT_URI, this.aav);
                        C0090a.bvo("ByteBufferStorageRequest", "Uri:" + this.aaG.aet);
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
            C0090a.m1e("ByteBufferStorageRequest", "storage is not enough");
            this.aaG.aes = StorageResult$StorageResultType.WRITE_FILE_FAIL;
            return this.aaG;
        }
    }

    public void ahj(C0718a c0718a) {
        if (c0718a.aes != StorageResult$StorageResultType.SUCCESS) {
            C0090a.bvo("ByteBufferStorageRequest", "no thumbnail request because storage fail " + c0718a.aes);
            return;
        }
        this.aaA.afj(new C0373c(c0718a.aet, this.aas, 0, ((float) this.aaB) / ((float) this.aas.getWidth())));
    }
}
