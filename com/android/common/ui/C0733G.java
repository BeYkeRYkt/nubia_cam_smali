package com.android.common.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.View;
import com.android.common.C0616j;

class C0733G extends View {
    final /* synthetic */ HighSettingLayout qD;

    public C0733G(HighSettingLayout highSettingLayout, Context context) {
        this.qD = highSettingLayout;
        super(context);
        setWillNotDraw(false);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.qD.nI();
        this.qD.qv = (i3 - i) / 2;
        this.qD.qw = (i4 - i2) / 2;
        this.qD.qq = this.qD.qv;
        this.qD.qr = ((this.qD.qw * 2) + HighSettingLayout.qj) - HighSettingLayout.ql;
        this.qD.qB.bottom = i4;
        this.qD.qB.top = i4 - 90;
        this.qD.qB.left = this.qD.qv - 102;
        this.qD.qB.right = this.qD.qv + 102;
        if (this.qD.nO()) {
            int size = 200 / this.qD.qs.size();
            int i5 = 0;
            for (C0730q c0730q : this.qD.qs) {
                c0730q.kx(i, i2, i3, i4);
                if (c0730q instanceof ao) {
                    i5--;
                }
                i5++;
                c0730q.kr((float) this.qD.qq, (float) this.qD.qr, (float) (HighSettingLayout.qj + (HighSettingLayout.qh * i5)), C0616j.apy((float) (this.qD.qv - HighSettingLayout.qi), (float) (HighSettingLayout.qj + (HighSettingLayout.qh * i5))));
                c0730q.kB((i5 - 1) * size);
            }
        }
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.qD.nO() && !this.qD.qm) {
            int i = 0;
            for (C0730q c0730q : this.qD.qs) {
                c0730q.draw(canvas);
                i = c0730q.kv() | (i | c0730q.ku());
            }
            if (this.qD.nQ() || !(this.qD.qt == null || (this.qD.qt instanceof ao))) {
                this.qD.nW(8);
            } else {
                this.qD.nW(0);
            }
            if (i != 0) {
                invalidate();
            }
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.qD.nM() != 0 || this.qD.qm) {
            return false;
        }
        int x = (int) (motionEvent.getX() - ((float) this.qD.qz[0]));
        int y = (int) (motionEvent.getY() - ((float) this.qD.qz[1]));
        switch (motionEvent.getAction()) {
            case 0:
                if (!this.qD.nT(x, y, this.qD.qB)) {
                    if (y <= getHeight() && y >= this.qD.qr - (HighSettingLayout.qj + ((this.qD.nN() + 1) * HighSettingLayout.qh))) {
                        this.qD.qt = this.qD.nK(motionEvent);
                        if (this.qD.qt != null) {
                            if (!(this.qD.qt instanceof ao)) {
                                this.qD.nB(false);
                                this.qD.qt.kA((float) x, (float) y);
                                break;
                            }
                            this.qD.qt.kA((float) x, (float) y);
                            break;
                        }
                    }
                    this.qD.nz(false);
                    return true;
                }
                for (C0730q kH : this.qD.qs) {
                    kH.kH(true);
                }
                this.qD.ny();
                return true;
                break;
            case 1:
                if (this.qD.qt != null) {
                    this.qD.qt.kF((float) x, (float) y);
                    this.qD.nB(true);
                    this.qD.qt = null;
                    break;
                }
                break;
            case 2:
                if (this.qD.qt != null && Math.abs(x - this.qD.qu) > 1) {
                    this.qD.qt.kC((float) x, (float) y);
                    break;
                }
        }
        this.qD.qu = x;
        return true;
    }
}
