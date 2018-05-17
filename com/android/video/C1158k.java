package com.android.video;

import android.net.Uri;
import com.android.common.C0616j;
import com.android.common.p001l.C0010g;
import com.android.common.storagemanager.StorageResult$StorageResultType;
import com.p010a.C0090a;

class C1158k implements C0010g {
    final /* synthetic */ C1152e aQD;

    private C1158k(C1152e c1152e) {
        this.aQD = c1152e;
    }

    public void QJ(Uri uri, StorageResult$StorageResultType storageResult$StorageResultType) {
        if (storageResult$StorageResultType == StorageResult$StorageResultType.SUCCESS) {
            C0090a.m0d("VideoRecordManager", "video snapshot storage " + storageResult$StorageResultType);
            C0616j.apr(this.aQD.aPR.SN(), uri);
            return;
        }
        C0090a.m0d("VideoRecordManager", "video snapshot storage fail " + storageResult$StorageResultType);
    }
}
