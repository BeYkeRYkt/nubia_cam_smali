package com.loc;

import java.io.Closeable;
import java.io.InputStream;

public final class C1228A implements Closeable {
    private final String f105b;
    private final InputStream[] bdO;
    private final long[] bdP;
    final /* synthetic */ cD bdQ;
    private final long f106c;

    private C1228A(cD cDVar, String str, long j, InputStream[] inputStreamArr, long[] jArr) {
        this.bdQ = cDVar;
        this.f105b = str;
        this.f106c = j;
        this.bdO = inputStreamArr;
        this.bdP = jArr;
    }

    public InputStream m79a(int i) {
        return this.bdO[i];
    }

    public void close() {
        for (Closeable bwr : this.bdO) {
            C1234G.bwr(bwr);
        }
    }
}
