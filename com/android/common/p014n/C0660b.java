package com.android.common.p014n;

import com.android.common.ui.C0730q;
import java.util.List;

class C0660b extends Thread {
    List abx = null;
    final /* synthetic */ C0659a aby;

    C0660b(C0659a c0659a, List list) {
        this.aby = c0659a;
        this.abx = list;
    }

    public void run() {
        if (this.abx != null) {
            for (C0730q ky : this.abx) {
                ky.ky(this.aby.getResources());
            }
        }
    }
}
