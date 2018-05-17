package com.android.camera;

final class C0221t implements Runnable {
    final /* synthetic */ C0199e aJa;
    final /* synthetic */ int aJb;

    C0221t(C0199e c0199e, int i) {
        this.aJa = c0199e;
        this.aJb = i;
    }

    public void run() {
        this.aJa.aIc.setVisibility(this.aJb);
    }
}
