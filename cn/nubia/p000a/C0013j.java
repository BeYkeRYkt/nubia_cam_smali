package cn.nubia.p000a;

import android.net.Uri;
import com.android.common.p001l.C0010g;
import com.android.common.storagemanager.StorageResult$StorageResultType;

class C0013j implements C0010g {
    private C0006k bnF = null;
    private boolean bnG = false;
    final /* synthetic */ C0012i bnH;

    public C0013j(C0012i c0012i) {
        this.bnH = c0012i;
        this.bnG = c0012i.bJR();
        this.bnF = c0012i.bnB;
    }

    public void QJ(Uri uri, StorageResult$StorageResultType storageResult$StorageResultType) {
        this.bnF.bJw(uri, this.bnG);
    }
}
