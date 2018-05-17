package com.android.multiexposure;

public class C0981q extends Thread {
    private int amt;
    final /* synthetic */ C0968o amu;

    public C0981q(C0968o c0968o, int i) {
        this.amu = c0968o;
        this.amt = i;
        start();
    }

    public void run() {
        if (this.amu.amd != null) {
            this.amu.amd.putData(this.amu.axJ(), this.amu.axJ().length, this.amt);
        }
    }
}
