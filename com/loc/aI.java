package com.loc;

import android.content.Context;

class aI implements ay {
    private Context f163a;

    aI(Context context) {
        this.f163a = context;
    }

    public void mo929a() {
        try {
            C1231D.m84b(this.f163a);
        } catch (Throwable th) {
            C1259s.bwd(th, "LogNetListener", "onNetCompleted");
        }
    }
}
