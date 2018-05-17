package com.loc;

import android.content.Context;
import android.text.TextUtils;
import java.lang.Thread.UncaughtExceptionHandler;

public class cB implements UncaughtExceptionHandler {
    private static cB blz;
    private UncaughtExceptionHandler blA = Thread.getDefaultUncaughtExceptionHandler();
    private Context blB;
    private ag blC;

    private cB(Context context, ag agVar) {
        this.blB = context.getApplicationContext();
        this.blC = agVar;
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    static synchronized cB bGX(Context context, ag agVar) {
        cB cBVar;
        synchronized (cB.class) {
            if (blz == null) {
                blz = new cB(context, agVar);
            }
            cBVar = blz;
        }
        return cBVar;
    }

    public void uncaughtException(Thread thread, Throwable th) {
        String a = bv.m427a(th);
        try {
            if (!TextUtils.isEmpty(a)) {
                if (!a.contains("amapdynamic")) {
                    if (!a.contains("admic")) {
                    }
                }
                if (a.contains("com.amap.api")) {
                    cl.bFA(new C1268m(this.blB, bX.m387c()), this.blB, this.blC);
                }
            }
        } catch (Throwable th2) {
            C1259s.bwd(th2, "DynamicExceptionHandler", "uncaughtException");
        }
        if (this.blA != null) {
            this.blA.uncaughtException(thread, th);
        }
    }
}
