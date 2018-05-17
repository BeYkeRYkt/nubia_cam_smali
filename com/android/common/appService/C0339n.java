package com.android.common.appService;

import android.content.Context;
import android.widget.Toast;
import com.android.camera.R;
import com.android.common.ui.C0746V;

public class C0339n {
    private static final int[] QP = new int[]{R.string.sure_reclick_save, R.string.sure_reclick_cancel};
    private Context QQ;
    private C0340o QR = new C0340o();
    private Toast QS = null;
    private int QT = -1;

    public C0339n(Context context) {
        this.QQ = context;
    }

    public boolean Yx(int i) {
        return true;
    }

    private void Yz() {
        Yy(this.QS);
        this.QS = null;
        this.QT = -1;
        this.QR.removeMessages(1);
    }

    private void Yy(Toast toast) {
        if (toast != null) {
            toast.cancel();
        }
    }

    private Toast YA(Context context, int i) {
        Toast qN = C0746V.qN(context, i, 1);
        if (qN != null) {
            qN.show();
        }
        return qN;
    }
}
