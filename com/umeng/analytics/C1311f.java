package com.umeng.analytics;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class C1311f {
    private static List f588a = new ArrayList();
    private static ExecutorService f589b = Executors.newSingleThreadExecutor();
    private static long f590c = 5;
    private static ScheduledExecutorService f591d = Executors.newSingleThreadScheduledExecutor();

    public static void m658a(Runnable runnable) {
        if (f589b.isShutdown()) {
            f589b = Executors.newSingleThreadExecutor();
        }
        f589b.execute(runnable);
    }

    public static void m657a() {
        try {
            for (WeakReference weakReference : f588a) {
                ScheduledFuture scheduledFuture = (ScheduledFuture) weakReference.get();
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
            }
            f588a.clear();
            if (!f589b.isShutdown()) {
                f589b.shutdown();
            }
            if (!f591d.isShutdown()) {
                f591d.shutdown();
            }
            f589b.awaitTermination(f590c, TimeUnit.SECONDS);
            f591d.awaitTermination(f590c, TimeUnit.SECONDS);
        } catch (Exception e) {
        }
    }

    public static synchronized void m660b(Runnable runnable) {
        synchronized (C1311f.class) {
            if (f591d.isShutdown()) {
                f591d = Executors.newSingleThreadScheduledExecutor();
            }
            f591d.execute(runnable);
        }
    }

    public static synchronized void m659a(Runnable runnable, long j) {
        synchronized (C1311f.class) {
            if (f591d.isShutdown()) {
                f591d = Executors.newSingleThreadScheduledExecutor();
            }
            f588a.add(new WeakReference(f591d.schedule(runnable, j, TimeUnit.MILLISECONDS)));
        }
    }

    public static synchronized void m661c(Runnable runnable) {
        synchronized (C1311f.class) {
            if (f591d.isShutdown()) {
                f591d = Executors.newSingleThreadScheduledExecutor();
            }
            try {
                f591d.submit(runnable).get(5, TimeUnit.SECONDS);
            } catch (Exception e) {
            }
        }
    }
}
