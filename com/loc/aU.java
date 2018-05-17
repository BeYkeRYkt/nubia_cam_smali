package com.loc;

import android.os.Messenger;
import java.util.concurrent.Callable;

class aU implements Callable {
    final /* synthetic */ bR bgr;

    aU(bR bRVar) {
        this.bgr = bRVar;
    }

    public Messenger m217a() {
        while (this.bgr.biE == null) {
            Thread.sleep(50);
        }
        return this.bgr.biE;
    }

    public /* synthetic */ Object call() {
        return m217a();
    }
}
