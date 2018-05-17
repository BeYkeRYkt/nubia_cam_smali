package com.android.common.p001l;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.provider.MediaStore.Images.Media;
import android.util.SparseArray;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.p025c.C0372b;
import com.android.common.p028h.C0557a;
import com.android.common.p032o.C0685a;
import com.android.common.p032o.C0686b;
import com.android.common.p032o.C0687c;
import com.android.common.p032o.C0688d;
import com.android.common.p032o.C0689e;
import com.android.common.storagemanager.C0718a;
import com.android.common.storagemanager.C0722e;
import com.android.common.storagemanager.StorageResult$StorageResultType;
import com.nubia.camera.common.Native.BufferCell;
import com.nubia.camera.common.Native.PrettyWaterMarkEffect;
import com.nubia.camera.common.Native.YUVAlgorithm;
import com.p010a.C0090a;

public class C0622a extends C0621f {
    private ContentResolver ZM;
    private ContentValues ZN = null;
    private int ZO = 0;
    private int ZP = 0;
    private boolean ZQ = false;
    private int ZR = 0;
    private String ZS = null;
    private C0722e ZT;
    private C0557a ZU;
    private int ZV;
    private int ZW = 0;
    private byte[] ZX = null;
    private String mFileName = null;

    public C0622a(C0329e c0329e, byte[] bArr, int i, int i2, SparseArray sparseArray, String str, String str2, int i3, boolean z, boolean z2, ContentValues contentValues, C0010g c0010g) {
        int i4 = 0;
        super(c0329e, sparseArray);
        this.ZM = c0329e.TF();
        this.ZV = c0329e.Vg();
        this.ZU = c0329e.Th();
        this.ZT = c0329e.Ti();
        this.ZX = bArr;
        this.ZS = str;
        this.mFileName = str2;
        this.ZN = contentValues;
        this.ZW = i;
        this.ZO = i2;
        this.ZR = i3;
        this.ZQ = z;
        this.aaG.aeu = c0010g;
        if (z2) {
            i4 = C0616j.apd(c0329e);
        }
        this.ZP = i4;
    }

    public C0718a ahi() {
        int i = 0;
        if (this.ZX == null) {
            C0090a.m1e("YuvStorageRequest", "YUV can not be null");
            this.aaG.aes = StorageResult$StorageResultType.DATA_IS_NULL;
            return this.aaG;
        } else if (this.ZS == null) {
            C0090a.m1e("YuvStorageRequest", "Path can not be null");
            this.aaG.aes = StorageResult$StorageResultType.PATH_NOT_EXIST;
            return this.aaG;
        } else {
            int i2;
            BufferCell bufferCell;
            int i3;
            C0685a.amB(this.ZS);
            boolean z = this.ZR != 0 ? this.ZQ : false;
            if (this.ZP != 0) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            if (z || i2 != 0) {
                bufferCell = new BufferCell(((this.ZW * this.ZO) * 3) / 2);
            } else {
                bufferCell = null;
            }
            if (z) {
                BufferCell bufferCell2 = new BufferCell(this.ZX);
                if (this.ZR % 180 != 0) {
                    i3 = this.ZW;
                    this.ZW = this.ZO;
                    this.ZO = i3;
                }
                YUVAlgorithm yUVAlgorithm = new YUVAlgorithm();
                YUVAlgorithm.btM(bufferCell2, bufferCell, this.ZW, this.ZO, 360 - this.ZR);
                bufferCell2.release();
            } else if (i2 != 0) {
                bufferCell.btF(this.ZX);
            }
            if (i2 != 0) {
                i2 = this.ZW;
                int i4 = this.ZO;
                i3 = this.ZP;
                if (!z) {
                    i = this.ZR;
                }
                PrettyWaterMarkEffect.btL(bufferCell, i2, i4, i3, i);
            }
            if (bufferCell != null) {
                this.ZX = bufferCell.btD();
                bufferCell.release();
            }
            if (!this.aaF || this.ZT.amb() > 104857600) {
                C0687c amE = C0689e.amE(this.ZX, this.ZW, this.ZO, 80);
                if (amE.afq) {
                    byte[] bArr = amE.afp;
                    amE.afp = null;
                    if (!(this.aaH == null || bArr == null)) {
                        bArr = C0686b.amC(bArr, this.aaH);
                        if (bArr == null || bArr.length == 0) {
                            this.aaG.aes = StorageResult$StorageResultType.WRITE_EXIF_FAIL;
                            return this.aaG;
                        }
                    }
                    if (bArr == null || !C0685a.amA(this.ZS + this.mFileName + ".jpg", bArr)) {
                        this.aaG.aes = StorageResult$StorageResultType.WRITE_FILE_FAIL;
                        return this.aaG;
                    }
                    if (this.ZN != null) {
                        this.aaG.aet = C0688d.amD(this.ZM, Media.EXTERNAL_CONTENT_URI, this.ZN);
                        if (this.aaG.aet == null) {
                            C0090a.m1e("YuvStorageRequest", "yuv:" + this.mFileName);
                            this.aaG.aes = StorageResult$StorageResultType.WRITE_DATABASE_FAIL;
                            return this.aaG;
                        }
                    }
                    return this.aaG;
                }
                amE.afp = null;
                this.aaG.aes = StorageResult$StorageResultType.COMPRESS_FAIL;
                return this.aaG;
            }
            C0090a.m1e("YuvStorageRequest", "storage is not enough");
            this.aaG.aes = StorageResult$StorageResultType.WRITE_FILE_FAIL;
            return this.aaG;
        }
    }

    public void ahj(C0718a c0718a) {
        if (c0718a.aes != StorageResult$StorageResultType.SUCCESS) {
            C0090a.bvo("YuvStorageRequest", "no thumbnail request because storage fail " + c0718a.aes);
            return;
        }
        this.ZU.afj(new C0372b(c0718a.aet, this.ZX, this.ZQ ? 0 : this.ZR, ((float) this.ZV) / ((float) this.ZW), this.ZW, this.ZO));
    }
}
