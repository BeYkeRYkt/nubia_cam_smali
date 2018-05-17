package com.android.dng;

import android.net.Uri;
import com.android.common.p001l.C0010g;
import com.android.common.storagemanager.StorageResult$StorageResultType;
import com.p010a.C0090a;

class C0799o implements C0010g {
    final /* synthetic */ C0798n aNp;

    private C0799o(C0798n c0798n) {
        this.aNp = c0798n;
    }

    public void QJ(Uri uri, StorageResult$StorageResultType storageResult$StorageResultType) {
        C0090a.bvo("DngRawPictureCallback", "storage result " + storageResult$StorageResultType);
        if (this.aNp.aNl != null && !this.aNp.aNl.SO()) {
            this.aNp.aNl.Xk(this.aNp.aNl.Ti().amd());
        }
    }
}
