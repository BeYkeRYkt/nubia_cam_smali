package com.android.captureCamera;

public class C0232e {
    private int aSF = 0;

    public synchronized void bjK() {
        this.aSF++;
    }

    public synchronized void bjM() {
        this.aSF--;
    }

    public int getCount() {
        return this.aSF;
    }

    public void bjL() {
        this.aSF = 0;
    }
}
