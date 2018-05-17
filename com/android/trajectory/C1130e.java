package com.android.trajectory;

import android.net.Uri;
import com.android.common.p001l.C0010g;
import com.android.common.storagemanager.StorageResult$StorageResultType;
import com.p010a.C0090a;

class C1130e implements C0010g {
    final /* synthetic */ C1127b bbJ;

    private C1130e(C1127b c1127b) {
        this.bbJ = c1127b;
    }

    public void QJ(Uri uri, StorageResult$StorageResultType storageResult$StorageResultType) {
        C0090a.bvo("TrajectoryFragment", "trajectory storage result:" + storageResult$StorageResultType);
    }
}
