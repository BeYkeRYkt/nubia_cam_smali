package com.loc;

import java.util.HashMap;
import java.util.Map;

public abstract class C1236a {
    protected int f119a = -1;
    protected String f120b;
    protected int f121c = 1;
    private String f122d;

    public static String bvt(String str) {
        Map hashMap = new HashMap();
        hashMap.put("b1", str);
        return C1268m.bvC(hashMap);
    }

    public static String bvu(int i) {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            stringBuilder.append("b2").append("=").append(i);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return stringBuilder.toString();
    }

    public int m86a() {
        return this.f119a;
    }

    public void m87a(int i) {
        this.f119a = i;
    }

    public void m88a(String str) {
        this.f120b = str;
    }

    public String m89b() {
        return this.f120b;
    }

    public void m90b(String str) {
        this.f122d = bv.m432b(str);
    }

    public void bvs(int i) {
        this.f121c = i;
    }

    public int m91c() {
        return this.f121c;
    }
}
