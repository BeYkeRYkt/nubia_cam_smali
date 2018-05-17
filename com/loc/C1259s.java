package com.loc;

import android.content.Context;
import java.lang.Thread.UncaughtExceptionHandler;

public class C1259s {
    protected static C1259s bdw;
    protected UncaughtExceptionHandler bdx;
    protected boolean bdy = true;

    public static void bwd(Throwable th, String str, String str2) {
        th.printStackTrace();
        if (bdw != null) {
            bdw.bwe(th, 1, str, str2);
        }
    }

    protected void bwe(Throwable th, int i, String str, String str2) {
    }

    protected void bwf(Context context, ag agVar, boolean z) {
    }

    protected void bwg(ag agVar, String str) {
    }
}
