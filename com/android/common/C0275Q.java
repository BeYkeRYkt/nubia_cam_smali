package com.android.common;

import android.widget.Toast;
import com.android.camera.R;
import com.android.common.storagemanager.C0236g;

final class C0275Q implements C0236g {
    final /* synthetic */ C0273O akG;
    final /* synthetic */ boolean akH;

    C0275Q(C0273O c0273o, boolean z) {
        this.akG = c0273o;
        this.akH = z;
    }

    public void amp(long j, boolean z) {
        if (this.akH && !C0701s.arm()) {
            Toast.makeText(this.akG.akE, this.akG.akE.getResources().getString(R.string.stroage_eject_tip), 1).show();
        }
    }
}
