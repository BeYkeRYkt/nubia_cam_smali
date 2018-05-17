package com.umeng.analytics.social;

public class C1329a extends RuntimeException {
    private static final long f619b = -4656673116019167471L;
    protected int f620a = 5000;
    private String f621c = "";

    public int m696a() {
        return this.f620a;
    }

    public C1329a(int i, String str) {
        super(str);
        this.f620a = i;
        this.f621c = str;
    }

    public C1329a(String str, Throwable th) {
        super(str, th);
        this.f621c = str;
    }

    public C1329a(String str) {
        super(str);
        this.f621c = str;
    }

    public String getMessage() {
        return this.f621c;
    }
}
