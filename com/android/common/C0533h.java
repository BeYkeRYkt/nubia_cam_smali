package com.android.common;

import java.util.ArrayList;
import java.util.LinkedList;

public abstract class C0533h {
    protected LinkedList ahm = new LinkedList();
    private boolean ahn = false;
    private ArrayList aho = new ArrayList();

    public abstract float aoD(float f);

    public void aoG(C0569i c0569i) {
        if (this.aho != null && !this.aho.contains(c0569i)) {
            this.aho.add(c0569i);
        }
    }

    protected void aoF(int i, float f) {
        this.ahm.clear();
        for (int i2 = 0; i2 < i; i2++) {
            this.ahm.add(Float.valueOf(f));
        }
    }

    private void aoJ(float f) {
        if (this.ahn) {
            this.ahm.remove();
            this.ahm.add(Float.valueOf(f));
            return;
        }
        aoI(f);
        this.ahn = true;
    }

    protected void aoI(float f) {
        aoF(this.ahm.size(), f);
    }

    private void aoH(float f) {
        if (this.aho.size() > 0) {
            for (C0569i tl : this.aho) {
                tl.tl(f);
            }
        }
    }

    public void aoK(float f) {
        aoJ(f);
        aoH(aoD(f));
    }
}
