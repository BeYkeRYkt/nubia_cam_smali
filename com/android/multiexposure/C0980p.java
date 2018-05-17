package com.android.multiexposure;

import android.net.Uri;
import com.android.common.p001l.C0010g;
import com.android.common.storagemanager.StorageResult$StorageResultType;
import com.p010a.C0090a;

class C0980p implements C0010g {
    final /* synthetic */ C0968o ams;

    C0980p(C0968o c0968o) {
        this.ams = c0968o;
    }

    public void QJ(Uri uri, StorageResult$StorageResultType storageResult$StorageResultType) {
        C0090a.m0d("BaseMultiExposure", "storage result: " + storageResult$StorageResultType);
        this.ams.ame.Ti().alY(null);
    }
}
