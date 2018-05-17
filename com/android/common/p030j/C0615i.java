package com.android.common.p030j;

import android.content.Intent;
import android.net.Uri;
import com.android.common.p001l.C0010g;
import com.android.common.storagemanager.StorageResult$StorageResultType;

final class C0615i implements C0010g {
    final /* synthetic */ C0611e ZE;
    final /* synthetic */ String ZF;

    C0615i(C0611e c0611e, String str) {
        this.ZE = c0611e;
        this.ZF = str;
    }

    public void QJ(Uri uri, StorageResult$StorageResultType storageResult$StorageResultType) {
        if (this.ZE.Zh.arB().SO()) {
            this.ZE.Zh.aix.afv();
        }
        this.ZE.Zh.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse("file://" + this.ZF)));
    }
}
