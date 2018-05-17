package com.android.lightpainting;

import android.net.Uri;
import com.android.common.p001l.C0010g;
import com.android.common.storagemanager.StorageResult$StorageResultType;
import com.p010a.C0090a;

class C0944e implements C0010g {
    final /* synthetic */ C0943d aZr;

    private C0944e(C0943d c0943d) {
        this.aZr = c0943d;
    }

    public void QJ(Uri uri, StorageResult$StorageResultType storageResult$StorageResultType) {
        if (storageResult$StorageResultType == StorageResult$StorageResultType.SUCCESS) {
            C0090a.bvo("LightDrawFragment", "storage success");
            if (!this.aZr.adC) {
                this.aZr.alA().Ti().alY(null);
                this.aZr.alA().Tz().sendEmptyMessage(19);
                return;
            }
            return;
        }
        C0090a.m1e("LightDrawFragment", "storage Result:" + storageResult$StorageResultType);
    }
}
