package com.android.clone;

import android.net.Uri;
import com.android.common.p001l.C0010g;
import com.android.common.storagemanager.StorageResult$StorageResultType;
import com.p010a.C0090a;

class C0248j implements C0010g {
    final /* synthetic */ C0247i aow;

    private C0248j(C0247i c0247i) {
        this.aow = c0247i;
    }

    public void QJ(Uri uri, StorageResult$StorageResultType storageResult$StorageResultType) {
        C0090a.bvo("CloneFragment", "trajectory storage result:" + storageResult$StorageResultType);
    }
}
