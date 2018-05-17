package com.android.common.ui;

import android.view.animation.AnimationUtils;

public class C0756h {
    private long kg = 0;
    private long kh = 0;
    private boolean ki = false;
    private int kj = 0;
    private boolean kk = true;
    private int kl = 0;
    private int km = 0;

    public void ip(int i, boolean z) {
        this.kk = z;
        int i2 = i >= 0 ? i % 360 : (i % 360) + 360;
        if (i2 != this.km) {
            this.km = i2;
            if (this.kk) {
                int i3;
                boolean z2;
                this.kl = this.kj;
                this.kh = AnimationUtils.currentAnimationTimeMillis();
                i2 = this.km - this.kj;
                if (i2 < 0) {
                    i2 += 360;
                }
                if (i2 > 180) {
                    i3 = i2 - 360;
                } else {
                    i3 = i2;
                }
                if (i3 >= 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                this.ki = z2;
                this.kg = this.kh + ((long) ((Math.abs(i3) * 1000) / 270));
            } else {
                this.kj = this.km;
            }
        }
    }

    public boolean in() {
        if (this.kj != this.km) {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            if (currentAnimationTimeMillis < this.kg) {
                int i = (int) (currentAnimationTimeMillis - this.kh);
                int i2 = this.kl;
                if (!this.ki) {
                    i = -i;
                }
                i = ((i * 270) / 1000) + i2;
                this.kj = i >= 0 ? i % 360 : (i % 360) + 360;
                return true;
            }
            this.kj = this.km;
        }
        return false;
    }

    public int io() {
        return this.kj;
    }
}
