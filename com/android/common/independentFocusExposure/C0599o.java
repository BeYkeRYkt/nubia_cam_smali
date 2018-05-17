package com.android.common.independentFocusExposure;

import android.graphics.Bitmap;
import android.graphics.Color;

class C0599o extends Thread {
    private boolean Ns = false;
    private Object Nt = new Object();
    private Bitmap Nu = null;
    private Bitmap Nv = null;
    final /* synthetic */ C0598n Nw;

    C0599o(C0598n c0598n) {
        this.Nw = c0598n;
    }

    public void Qf(Bitmap bitmap) {
        synchronized (this.Nt) {
            this.Nu = bitmap;
        }
    }

    public void Qe() {
        this.Ns = true;
    }

    public void run() {
        while (!this.Ns) {
            C0598n c0598n = this.Nw;
            c0598n.MA = c0598n.MA + 1;
            if (this.Nw.MA % 50 == 0 && this.Nu != null) {
                int i;
                synchronized (this.Nt) {
                    this.Nv = this.Nu;
                }
                this.Nw.Mm = this.Nv.getWidth();
                this.Nw.Ml = this.Nv.getHeight();
                for (i = 0; i < this.Nv.getWidth(); i++) {
                    int i2 = 0;
                    while (i2 < this.Nv.getHeight()) {
                        if (i < this.Nv.getWidth() && i2 < this.Nv.getHeight()) {
                            int pixel = this.Nv.getPixel(i, i2);
                            C0598n c0598n2 = this.Nw;
                            c0598n2.Nd = c0598n2.Nd + Color.red(pixel);
                            c0598n2 = this.Nw;
                            c0598n2.My = c0598n2.My + Color.green(pixel);
                            c0598n2 = this.Nw;
                            c0598n2.Mp = Color.blue(pixel) + c0598n2.Mp;
                        }
                        i2++;
                    }
                }
                this.Nw.Nd = this.Nw.Nd / (this.Nw.Mm * this.Nw.Ml);
                this.Nw.My = this.Nw.My / (this.Nw.Mm * this.Nw.Ml);
                this.Nw.Mp = this.Nw.Mp / (this.Nw.Mm * this.Nw.Ml);
                i = ((this.Nw.Nd + this.Nw.My) + this.Nw.Mp) / 3;
                if (!this.Nw.Pj()) {
                    this.Nw.Mr[0] = ((float) i) / ((float) this.Nw.Nd);
                    this.Nw.Mr[1] = ((float) i) / ((float) this.Nw.My);
                    this.Nw.Mr[2] = ((float) i) / ((float) this.Nw.Mp);
                }
                this.Nw.Nd = 0;
                this.Nw.My = 0;
                this.Nw.Mp = 0;
            }
        }
        if (!(this.Nv == null || this.Nv.isRecycled())) {
            this.Nv.recycle();
            this.Nv = null;
        }
        if (this.Nu != null && !this.Nu.isRecycled()) {
            this.Nu.recycle();
            this.Nu = null;
        }
    }
}
