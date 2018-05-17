package com.android.common.p016a;

import android.graphics.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.nio.ByteBuffer;
import java.util.ArrayList;

class C0293j extends Handler {
    final /* synthetic */ C0292i ah;

    public C0293j(C0292i c0292i, Looper looper) {
        this.ah = c0292i;
        super(looper);
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 0:
                synchronized (this.ah.ab) {
                    Object<C0291h> aS = this.ah.ad;
                    this.ah.ad = new ArrayList();
                    ByteBuffer aR = this.ah.ac;
                    this.ah.ac = null;
                    if (!(this.ah.ag.f69L || aS.isEmpty())) {
                        Matrix matrix = new Matrix();
                        matrix.setScale(1.0f, -1.0f);
                        for (C0291h c0291h : aS) {
                            if (c0291h != null) {
                                c0291h.aM(aR, this.ah.ag.f68K.width(), this.ah.ag.f68K.height(), matrix);
                                aR.rewind();
                            }
                        }
                    }
                    aS.clear();
                }
                return;
            default:
                return;
        }
    }
}
