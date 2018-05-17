package com.loc;

import android.content.Context;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;

public class bp extends C1259s implements UncaughtExceptionHandler {
    private static ExecutorService bhl;
    private Context bhk;

    private bp(Context context, ag agVar) {
        this.bhk = context;
        ba.bAs(new aI(context));
        m423c();
    }

    public static synchronized void m421a() {
        synchronized (bp.class) {
            try {
                if (bhl != null) {
                    bhl.shutdown();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            try {
                if (C1259s.bdw != null) {
                    if (Thread.getDefaultUncaughtExceptionHandler() == C1259s.bdw && C1259s.bdw.bdx != null) {
                        Thread.setDefaultUncaughtExceptionHandler(C1259s.bdw.bdx);
                    }
                }
                C1259s.bdw = null;
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    static synchronized ExecutorService m422b() {
        ExecutorService executorService;
        synchronized (bp.class) {
            try {
                if (bhl != null) {
                    if (!bhl.isShutdown()) {
                        executorService = bhl;
                    }
                }
                bhl = Executors.newSingleThreadExecutor();
            } catch (Throwable th) {
                th.printStackTrace();
            }
            executorService = bhl;
        }
        return executorService;
    }

    public static synchronized bp bAW(Context context, ag agVar) {
        bp bpVar;
        synchronized (bp.class) {
            if (agVar == null) {
                throw new C1264i("sdk info is null");
            } else if (agVar.m239a() == null || "".equals(agVar.m239a())) {
                throw new C1264i("sdk name is invalid");
            } else {
                try {
                    if (C1259s.bdw != null) {
                        C1259s.bdw.bdy = false;
                    } else {
                        C1259s.bdw = new bp(context, agVar);
                    }
                    C1259s.bdw.bwf(context, agVar, C1259s.bdw.bdy);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                bpVar = (bp) C1259s.bdw;
            }
        }
        return bpVar;
    }

    public static void bAX(Throwable th, String str, String str2) {
        if (C1259s.bdw != null) {
            C1259s.bdw.bwe(th, 1, str, str2);
        }
    }

    public static void bAY(ag agVar, String str) {
        if (C1259s.bdw != null) {
            C1259s.bdw.bwg(agVar, str);
        }
    }

    private void m423c() {
        try {
            this.bdx = Thread.getDefaultUncaughtExceptionHandler();
            if (this.bdx == null) {
                Thread.setDefaultUncaughtExceptionHandler(this);
                this.bdy = true;
            } else if (this.bdx.toString().indexOf("com.amap.api") == -1) {
                Thread.setDefaultUncaughtExceptionHandler(this);
                this.bdy = true;
            } else {
                this.bdy = false;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    protected void bwe(Throwable th, int i, String str, String str2) {
        C1231D.bwq(this.bhk, th, i, str, str2);
    }

    protected void bwf(Context context, ag agVar, boolean z) {
        try {
            ExecutorService b = m422b();
            if (b != null && !b.isShutdown()) {
                b.submit(new C1233F(this, context, agVar, z));
            }
        } catch (RejectedExecutionException e) {
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    protected void bwg(ag agVar, String str) {
        C1231D.bwp(this.bhk, agVar, str);
    }

    public void uncaughtException(Thread thread, Throwable th) {
        if (th != null) {
            bwe(th, 0, null, null);
            if (this.bdx != null) {
                try {
                    Thread.setDefaultUncaughtExceptionHandler(this.bdx);
                } catch (Throwable th2) {
                }
                this.bdx.uncaughtException(thread, th);
            }
        }
    }
}
