package com.loc;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;

public class C1231D {
    public static final String f111a = "/a/";
    static final String f112b = "b";
    static final String f113c = "c";
    static final String f114d = "d";
    public static final String f115e = "e";

    public static Class m81a(int i) {
        switch (i) {
            case 0:
                return cC.class;
            case 1:
                return C1237I.class;
            case 2:
                return bt.class;
            default:
                return null;
        }
    }

    public static String m82a(Context context, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(context.getFilesDir().getAbsolutePath());
        stringBuilder.append(f111a);
        stringBuilder.append(str);
        return stringBuilder.toString();
    }

    static void m83a(Context context) {
        try {
            aR bwo = C1231D.bwo(context, 2);
            if (bwo != null) {
                bwo.m212b(context);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    static void m84b(Context context) {
        try {
            ExecutorService b = bp.m422b();
            if (b != null && !b.isShutdown()) {
                b.submit(new al(context));
            }
        } catch (Throwable th) {
            C1259s.bwd(th, "Log", "processLog");
        }
    }

    public static C1236a bwm(int i) {
        switch (i) {
            case 0:
                return new cC();
            case 1:
                return new C1237I();
            case 2:
                return new bt();
            default:
                return null;
        }
    }

    public static String bwn(int i) {
        switch (i) {
            case 0:
                return f113c;
            case 1:
                return f112b;
            case 2:
                return f114d;
            default:
                return "";
        }
    }

    static aR bwo(Context context, int i) {
        aR asVar;
        switch (i) {
            case 0:
                asVar = new as(i);
                break;
            case 1:
                asVar = new bf(i);
                break;
            case 2:
                asVar = new ce(i);
                break;
            default:
                return null;
        }
        return asVar;
    }

    static void bwp(Context context, ag agVar, String str) {
        try {
            if (agVar.m243d()) {
                ExecutorService b = bp.m422b();
                if (b != null && !b.isShutdown()) {
                    b.submit(new aO(context, agVar, str));
                }
            }
        } catch (RejectedExecutionException e) {
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    static void bwq(Context context, Throwable th, int i, String str, String str2) {
        try {
            ExecutorService b = bp.m422b();
            if (b != null && !b.isShutdown()) {
                b.submit(new aZ(context, i, th, str, str2));
            }
        } catch (RejectedExecutionException e) {
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }
}
