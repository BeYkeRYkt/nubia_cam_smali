package com.android.common.p033p;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Toast;
import cn.nubia.p003c.C0046a;
import cn.nubia.p003c.C0047b;
import com.android.camera.R;

final class C0693d implements OnClickListener {
    final /* synthetic */ C0690a afD;
    final /* synthetic */ C0046a afE;

    C0693d(C0690a c0690a, C0046a c0046a) {
        this.afD = c0690a;
        this.afE = c0046a;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.afD.amK()) {
            C0047b.bMJ(this.afE.bMG(), this.afD.afs);
        } else {
            Toast.makeText(this.afD.afs, R.string.sdcard_not_available, 0).show();
        }
        dialogInterface.cancel();
    }
}
