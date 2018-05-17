package com.loc;

import java.util.Locale;

public class au {
    private String f241a;
    private int f242b;
    private String f243c;
    private long f244d;

    public au(String str, long j, int i, String str2) {
        this.f241a = str;
        this.f244d = j;
        this.f242b = i;
        this.f243c = str2;
    }

    public String m281a() {
        return this.f241a;
    }

    public int m282b() {
        return this.f242b;
    }

    public String toString() {
        return String.format(Locale.US, "##h=%s, n=%d, t=%d, ex=%s##", new Object[]{this.f241a, Integer.valueOf(this.f242b), Long.valueOf(this.f244d), this.f243c});
    }
}
