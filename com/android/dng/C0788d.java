package com.android.dng;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.provider.MediaStore.Files;
import com.android.common.appService.C0329e;
import com.android.common.p001l.C0010g;
import com.android.common.p001l.C0621f;
import com.android.common.storagemanager.C0718a;
import com.android.common.storagemanager.C0722e;
import com.android.common.storagemanager.StorageResult$StorageResultType;
import com.p010a.C0090a;
import java.io.File;

public class C0788d extends C0621f {
    private ContentResolver aMd;
    private ContentValues aMe = null;
    private String aMf = "";
    private String aMg = null;
    private byte[] aMh = null;
    private C0722e aMi;
    private String mFileName = null;

    public C0788d(C0329e c0329e, byte[] bArr, String str, String str2, String str3, ContentValues contentValues, C0010g c0010g) {
        super(c0329e, null);
        this.aMd = c0329e.TF();
        this.aMi = c0329e.Ti();
        this.aMh = bArr;
        this.aMf = str;
        this.aMg = str2;
        this.mFileName = str3;
        this.aMe = contentValues;
        this.aaG.aeu = c0010g;
    }

    public C0718a ahi() {
        if (this.aMh == null) {
            C0090a.m1e("DngStorageRequest", "raw can not be null");
            this.aaG.aes = StorageResult$StorageResultType.DATA_IS_NULL;
            return this.aaG;
        } else if (this.aMg == null || this.mFileName == null) {
            C0090a.m1e("DngStorageRequest", "path can not be null");
            this.aaG.aes = StorageResult$StorageResultType.PATH_NOT_EXIST;
            return this.aaG;
        } else {
            File file = new File(this.aMg);
            if (!(file.exists() && file.isDirectory())) {
                file.mkdirs();
            }
            if (!this.aaF || this.aMi.amb() > 104857600) {
                new DngCreator().raw2Dng(this.aMh, this.aMf, this.aMg + this.mFileName);
                C0090a.bvo("DngStorageRequest", "File:" + this.aMg + this.mFileName);
                if (this.aMe != null) {
                    this.aaG.aet = this.aMd.insert(Files.getContentUri("external"), this.aMe);
                    C0090a.bvo("DngStorageRequest", "Uri:" + this.aaG.aet);
                    if (this.aaG.aet == null) {
                        this.aaG.aes = StorageResult$StorageResultType.WRITE_DATABASE_FAIL;
                        return this.aaG;
                    }
                }
                return this.aaG;
            }
            C0090a.m1e("DngStorageRequest", "storage is not enough");
            this.aaG.aes = StorageResult$StorageResultType.WRITE_FILE_FAIL;
            return this.aaG;
        }
    }

    public void ahj(C0718a c0718a) {
    }
}
