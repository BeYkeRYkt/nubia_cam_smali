package com.android.common.p024d;

import android.net.Uri;
import com.android.common.p001l.C0010g;
import com.android.common.storagemanager.StorageResult$StorageResultType;
import com.p010a.C0090a;

class C0452g implements C0010g {
    final /* synthetic */ C0451f Ot;

    private C0452g(C0451f c0451f) {
        this.Ot = c0451f;
    }

    public void QJ(Uri uri, StorageResult$StorageResultType storageResult$StorageResultType) {
        if (storageResult$StorageResultType != StorageResult$StorageResultType.SUCCESS) {
            C0090a.m1e("LongShotJpegPictureCallback", "quality multishoot save fail " + storageResult$StorageResultType);
        }
        Rb();
    }

    private void Rb() {
        if (this.Ot.Oj != null && this.Ot.Oj.Ti() != null) {
            this.Ot.Oj.Xk(this.Ot.Oj.Ti().amd());
        }
    }
}
