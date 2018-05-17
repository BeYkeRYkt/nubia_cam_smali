package com.loc;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;

public final class bV {
    private final C1243O bjc;
    private final boolean[] bjd;
    private boolean bje;
    final /* synthetic */ cD bjf;
    private boolean f284d;

    private bV(cD cDVar, C1243O c1243o) {
        this.bjf = cDVar;
        this.bjc = c1243o;
        this.bjd = !c1243o.f139d ? new boolean[cDVar.blI] : null;
    }

    public OutputStream m371a(int i) {
        if (i >= 0 && i < this.bjf.blI) {
            OutputStream c1267l;
            synchronized (this.bjf) {
                if (this.bjc.bee == this) {
                    OutputStream fileOutputStream;
                    if (!this.bjc.f139d) {
                        this.bjd[i] = true;
                    }
                    File bwz = this.bjc.bwz(i);
                    try {
                        fileOutputStream = new FileOutputStream(bwz);
                    } catch (FileNotFoundException e) {
                        this.bjf.blE.mkdirs();
                        try {
                            fileOutputStream = new FileOutputStream(bwz);
                        } catch (FileNotFoundException e2) {
                            return cD.blQ;
                        }
                    }
                    c1267l = new C1267l(this, fileOutputStream, null);
                } else {
                    throw new IllegalStateException();
                }
            }
            return c1267l;
        }
        throw new IllegalArgumentException("Expected index " + i + " to " + "be greater than 0 and less than the maximum value count " + "of " + this.bjf.blI);
    }

    public void m372a() {
        if (this.f284d) {
            this.bjf.bHd(this, false);
            this.bjf.bHe(this.bjc.f138b);
        } else {
            this.bjf.bHd(this, true);
        }
        this.bje = true;
    }

    public void m373b() {
        this.bjf.bHd(this, false);
    }
}
