package com.android.startrack;

import android.net.Uri;
import com.android.common.C0616j;
import com.android.common.p001l.C0010g;
import com.android.common.storagemanager.StorageResult$StorageResultType;
import com.p010a.C0090a;

class C1118g implements C0010g {
    final /* synthetic */ C1117f aLm;

    C1118g(C1117f c1117f) {
        this.aLm = c1117f;
    }

    public void QJ(Uri uri, StorageResult$StorageResultType storageResult$StorageResultType) {
        if (storageResult$StorageResultType == StorageResult$StorageResultType.SUCCESS) {
            C0090a.m1e("StarTrackFragment", "storage success");
            this.aLm.aLg = C0616j.apF(uri, this.aLm.adA.SN().getContentResolver());
            this.aLm.adA.Ti().alY(null);
            if (this.aLm.adA.Tl()) {
                this.aLm.bbG(uri);
            } else {
                C0090a.bvm("StarTrackFragment", "Enough storage: " + this.aLm.adA.Tl() + "; stop capture.");
                this.aLm.bbD();
                return;
            }
        }
        C0090a.m1e("StarTrackFragment", "StarTrackStorageResult:" + storageResult$StorageResultType);
    }
}
