package cn.nubia.videogenerator.p007b;

import android.util.Log;
import cn.nubia.videogenerator.p006a.C0056g;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;

public class C0068f extends C0056g {
    private static String TAG = "meeeeFrameFilter";
    private long brp = Long.MIN_VALUE;
    private long brq = Long.MAX_VALUE;
    private int brr = -1;
    private ConcurrentLinkedQueue brs;
    private AtomicBoolean brt = new AtomicBoolean(false);
    private AtomicBoolean bru = new AtomicBoolean(false);
    private C0070h brv;
    private C0069g brw;
    private C0060d brx;
    private String bry;
    private Runnable brz = new C0074m(this);

    public C0068f(String str) {
        this.bry = str;
    }

    public void bNI(C0060d c0060d) {
        this.brx = c0060d;
    }

    public void bOj(ConcurrentLinkedQueue concurrentLinkedQueue) {
        this.brs = concurrentLinkedQueue;
    }

    public void bOk(C0070h c0070h) {
        this.brv = c0070h;
    }

    public void bOl(long j, long j2) {
        this.brp = j;
        this.brq = j2;
    }

    public void bOm(int i) {
        this.brr = i;
    }

    public void start() {
        if (this.brp == Long.MIN_VALUE || this.brq == Long.MAX_VALUE) {
            Log.v(TAG, "pass time windows is not set");
            return;
        }
        Thread thread = new Thread(this.brz);
        thread.setName("Filter " + System.currentTimeMillis());
        thread.setPriority(10);
        thread.start();
    }

    public void stop() {
        this.bru.set(true);
    }
}
