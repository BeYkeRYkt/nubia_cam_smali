package com.android.clone;

public class C0250l {
    private static C0250l aoF = new C0250l();
    private CloneStatus$Status aoE = CloneStatus$Status.IDLE;

    private C0250l() {
    }

    public static C0250l aAx() {
        return aoF;
    }

    public CloneStatus$Status aAz() {
        return this.aoE;
    }

    public void aAy(CloneStatus$Status cloneStatus$Status) {
        this.aoE = cloneStatus$Status;
    }
}
