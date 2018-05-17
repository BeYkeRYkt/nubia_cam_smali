package com.android.common;

import java.text.SimpleDateFormat;
import java.util.Date;

public class C0620k {
    private SimpleDateFormat ahC;
    private long ahD;
    private int ahE;

    public C0620k(String str) {
        this.ahC = new SimpleDateFormat(str);
    }

    public String aqo(long j) {
        String format = this.ahC.format(new Date(j));
        if (j / 1000 == this.ahD / 1000) {
            this.ahE++;
            return format + "_" + this.ahE;
        }
        this.ahD = j;
        this.ahE = 0;
        return format;
    }

    public String aqn(long j) {
        return new SimpleDateFormat("HH-mm-ss_yyyy-MM-dd").format(new Date(j));
    }
}
