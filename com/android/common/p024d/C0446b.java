package com.android.common.p024d;

import android.net.Uri;
import com.android.common.p001l.C0010g;
import com.android.common.storagemanager.StorageResult$StorageResultType;
import com.p010a.C0090a;

final class C0446b implements C0010g {
    final /* synthetic */ C0445a Oc;

    private C0446b(C0445a c0445a) {
        this.Oc = c0445a;
    }

    public void QJ(Uri uri, StorageResult$StorageResultType storageResult$StorageResultType) {
        C0445a c0445a = this.Oc;
        c0445a.NN = c0445a.NN + 1;
        if (!this.Oc.NR && !this.Oc.NS && this.Oc.NN == this.Oc.NO.intValue()) {
            this.Oc.NR = true;
            if (!this.Oc.NL.SO()) {
                this.Oc.NL.Tg();
                if (!(this.Oc.NL == null || this.Oc.NL.Th() == null)) {
                    this.Oc.NL.Th().afh(true);
                }
            }
            C0090a.bvo("MultiShoot", "mIsMultiShootDone:" + this.Oc.NR);
        }
    }
}
