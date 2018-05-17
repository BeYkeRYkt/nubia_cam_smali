package com.loc;

import java.util.HashMap;
import java.util.Map;

public class bF extends C1256q {
    private byte[] f259a;
    private String f260b = "1";

    public bF(byte[] bArr) {
        this.f259a = (byte[]) bArr.clone();
    }

    public bF(byte[] bArr, String str) {
        this.f259a = (byte[]) bArr.clone();
        this.f260b = str;
    }

    private String m304e() {
        Object a = bv.m431a(bc.f305a);
        byte[] bArr = new byte[(a.length + 50)];
        System.arraycopy(this.f259a, 0, bArr, 0, 50);
        System.arraycopy(a, 0, bArr, 50, a.length);
        return bU.m368a(bArr);
    }

    public Map mo930a() {
        Map hashMap = new HashMap();
        hashMap.put("Content-Type", "application/zip");
        hashMap.put("Content-Length", String.valueOf(this.f259a.length));
        return hashMap;
    }

    public String mo931b() {
        return String.format(bc.f306b, new Object[]{"1", this.f260b, "1", "open", m304e()});
    }

    public Map mo927c() {
        return null;
    }

    public byte[] mo928d() {
        return this.f259a;
    }
}
