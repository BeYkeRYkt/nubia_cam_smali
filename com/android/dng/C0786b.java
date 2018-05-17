package com.android.dng;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.provider.MediaStore.Files;
import com.android.common.appService.C0329e;
import com.android.common.p001l.C0621f;
import com.android.common.p032o.C0685a;
import com.android.common.storagemanager.C0718a;
import com.android.common.storagemanager.C0722e;
import com.android.common.storagemanager.StorageResult$StorageResultType;
import com.p010a.C0090a;

public class C0786b extends C0621f {
    ContentResolver aLV;
    private C0722e aLW;
    private String aLX;
    private String aLY;
    private byte[] aLZ;
    private ContentValues aMa;

    public C0786b(byte[] bArr, String str, String str2, ContentValues contentValues, C0329e c0329e) {
        super(c0329e, null);
        this.aLZ = bArr;
        this.aLY = str;
        this.aLX = str2;
        this.aMa = contentValues;
        this.aLV = c0329e.TF();
        this.aLW = c0329e.Ti();
    }

    public C0718a ahi() {
        if (this.aaF && this.aLW.amb() <= 104857600) {
            C0090a.m1e("MTKDngRawStorageRequset", "storage is not enough");
            this.aaG.aes = StorageResult$StorageResultType.WRITE_FILE_FAIL;
            return this.aaG;
        } else if (C0685a.amA(this.aLY + "/" + this.aLX, this.aLZ)) {
            this.aaG.aet = this.aLV.insert(Files.getContentUri("external"), this.aMa);
            if (this.aaG.aet != null) {
                return this.aaG;
            }
            this.aaG.aes = StorageResult$StorageResultType.WRITE_DATABASE_FAIL;
            return this.aaG;
        } else {
            this.aaG.aes = StorageResult$StorageResultType.WRITE_FILE_FAIL;
            return this.aaG;
        }
    }

    public void ahj(C0718a c0718a) {
    }
}
