package com.umeng.analytics;

public abstract class C1299g implements Runnable {
    public abstract void mo962a();

    public void run() {
        try {
            mo962a();
        } catch (Throwable th) {
            if (th != null) {
                th.printStackTrace();
            }
        }
    }
}
