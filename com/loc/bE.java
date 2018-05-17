package com.loc;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

public class bE {
    private static final bE bhJ = new bE();
    private final Map f258b = new HashMap();

    private bE() {
    }

    public static bE m303a() {
        return bhJ;
    }

    private boolean bCh(ag agVar) {
        return (agVar == null || TextUtils.isEmpty(agVar.m241b()) || TextUtils.isEmpty(agVar.m239a())) ? false : true;
    }

    public synchronized C1252W bCf(Context context, ag agVar) {
        C1252W c1252w;
        if (bCh(agVar)) {
            String a = agVar.m239a();
            c1252w = (C1252W) this.f258b.get(a);
            if (c1252w == null) {
                try {
                    C1252W ccVar = new cc(context.getApplicationContext(), agVar, true);
                    try {
                        this.f258b.put(a, ccVar);
                        cB.bGX(context, agVar);
                        c1252w = ccVar;
                    } catch (Throwable th) {
                        c1252w = ccVar;
                    }
                } catch (Throwable th2) {
                }
            }
        } else {
            throw new Exception("sdkInfo referance is null");
        }
        return c1252w;
    }

    public C1252W bCg(Context context, ag agVar) {
        C1252W c1252w = (C1252W) this.f258b.get(agVar.m239a());
        if (c1252w == null) {
            c1252w = new cc(context.getApplicationContext(), agVar, false);
            c1252w.bwQ(context, agVar);
            this.f258b.put(agVar.m239a(), c1252w);
            cB.bGX(context, agVar);
            return c1252w;
        }
        c1252w.bwQ(context, agVar);
        return c1252w;
    }
}
