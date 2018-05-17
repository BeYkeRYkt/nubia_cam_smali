package com.loc;

import android.text.TextUtils;
import java.net.Proxy;
import java.util.Map;

public abstract class C1256q {
    Proxy bds = null;
    int f156c = 20000;
    int f157d = 20000;

    public abstract Map mo930a();

    public final void m151a(int i) {
        this.f156c = i;
    }

    public abstract String mo931b();

    public final void bvY(int i) {
        this.f157d = i;
    }

    public final void bvZ(Proxy proxy) {
        this.bds = proxy;
    }

    public abstract Map mo927c();

    public byte[] mo928d() {
        return null;
    }

    String m155g() {
        byte[] d = mo928d();
        if (d == null || d.length == 0) {
            return mo931b();
        }
        Map c = mo927c();
        if (c == null) {
            return mo931b();
        }
        String bAz = ba.bAz(c);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(mo931b()).append("?").append(bAz);
        return stringBuffer.toString();
    }

    byte[] m156h() {
        byte[] d = mo928d();
        if (d != null && d.length != 0) {
            return d;
        }
        String bAz = ba.bAz(mo927c());
        return TextUtils.isEmpty(bAz) ? d : bv.m431a(bAz);
    }
}
