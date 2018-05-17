package com.loc;

import java.net.Proxy;

public class aM {
    private ba bge;
    private C1256q bgf;

    public aM(C1256q c1256q) {
        this(c1256q, 0, -1);
    }

    public aM(C1256q c1256q, long j, long j2) {
        Proxy proxy = null;
        this.bgf = c1256q;
        if (c1256q.bds != null) {
            proxy = c1256q.bds;
        }
        this.bge = new ba(this.bgf.f156c, this.bgf.f157d, proxy);
        this.bge.bAt(j2);
        this.bge.m396a(j);
    }

    public void bzO(C1250f c1250f) {
        this.bge.bAu(this.bgf.mo931b(), this.bgf.mo930a(), this.bgf.mo927c(), c1250f);
    }
}
