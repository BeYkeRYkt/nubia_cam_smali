package cn.nubia.p000a;

import android.net.Uri;
import com.android.common.C0616j;
import com.android.common.p001l.C0010g;
import com.android.common.storagemanager.StorageResult$StorageResultType;
import com.p010a.C0090a;

class C0011h implements C0010g {
    final /* synthetic */ C0009g bnA;

    private C0011h(C0009g c0009g) {
        this.bnA = c0009g;
    }

    public void QJ(Uri uri, StorageResult$StorageResultType storageResult$StorageResultType) {
        if (storageResult$StorageResultType == StorageResult$StorageResultType.SUCCESS) {
            C0616j.apr(this.bnA.bnp.SN(), uri);
            this.bnA.bnp.Ti().alY(null);
            return;
        }
        C0090a.m1e("DualCameraJpegPictureCallback", "storage Result:" + storageResult$StorageResultType);
    }
}
