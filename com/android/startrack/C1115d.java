package com.android.startrack;

import android.net.Uri;
import com.android.common.p001l.C0010g;
import com.android.common.storagemanager.StorageResult$StorageResultType;
import com.p010a.C0090a;

class C1115d implements C0010g {
    final /* synthetic */ C1114c aKW;

    private C1115d(C1114c c1114c) {
        this.aKW = c1114c;
    }

    public void QJ(Uri uri, StorageResult$StorageResultType storageResult$StorageResultType) {
        if (storageResult$StorageResultType == StorageResult$StorageResultType.SUCCESS) {
            C0090a.bvo("StarTrackComposeThread", "storage success");
        } else {
            C0090a.m1e("StarTrackComposeThread", "storage Result:" + storageResult$StorageResultType);
        }
    }
}
