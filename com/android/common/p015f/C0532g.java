package com.android.common.p015f;

import android.net.Uri;
import android.os.Build.VERSION;
import com.android.common.C0616j;
import com.android.common.appService.CameraMember;
import com.android.common.p001l.C0010g;
import com.android.common.storagemanager.StorageResult$StorageResultType;
import com.p010a.C0090a;

class C0532g implements C0010g {
    final /* synthetic */ C0531f Wj;

    private C0532g(C0531f c0531f) {
        this.Wj = c0531f;
    }

    public void QJ(Uri uri, StorageResult$StorageResultType storageResult$StorageResultType) {
        if (storageResult$StorageResultType == StorageResult$StorageResultType.SUCCESS) {
            C0090a.bvo("JpegPictureCallback", "storage success");
            if (this.Wj.Wi != CameraMember.NORMAL.aan()) {
            }
            if (this.Wj.VZ.Tu()) {
                try {
                    String str = this.Wj.Wb + '/' + this.Wj.Wa;
                    C0090a.bvo("JpegPictureCallback", "path = " + str);
                    this.Wj.VZ.SU().RV(str);
                } catch (NullPointerException e) {
                    e.printStackTrace();
                }
            } else if (VERSION.SDK_INT < 24) {
                C0616j.apr(this.Wj.VZ.SN(), uri);
            }
        } else {
            C0090a.m1e("JpegPictureCallback", "storage fail:" + storageResult$StorageResultType);
        }
        aeq();
    }

    private void aeq() {
        if (this.Wj.VZ != null && this.Wj.VZ.Ti() != null) {
            this.Wj.VZ.Xk(this.Wj.VZ.Ti().amd());
        }
    }
}
