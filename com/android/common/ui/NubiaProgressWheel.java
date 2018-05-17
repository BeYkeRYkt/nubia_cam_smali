package com.android.common.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import com.p010a.C0090a;

public class NubiaProgressWheel extends View {
    private int kA = 15;
    private Paint kB = new Paint();
    private double kC = 0.0d;
    private long kD = 30;
    private int kE = 0;
    private int kn = (96 - this.ks);
    private int ko = 96;
    private int kp = 96;
    private Handler kq = new aF(this);
    private boolean kr = false;
    private int ks = 10;
    private Boolean kt = Boolean.valueOf(false);
    private double ku = 0.0d;
    private Paint kv = new Paint();
    private Runnable kw = new aG(this);
    private double kx = 0.30000001192092896d;
    private Thread ky = null;
    private int kz = (96 - this.kA);

    public NubiaProgressWheel(Context context) {
        super(context);
        iq();
    }

    public NubiaProgressWheel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        iq();
    }

    public NubiaProgressWheel(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        iq();
    }

    private void iq() {
        this.kv.setColor(-1);
        this.kv.setStrokeWidth(1.3f);
        this.kv.setAntiAlias(true);
        this.kv.setStyle(Style.STROKE);
        this.kB.setColor(-1);
        this.kB.setStrokeWidth(2.0f);
        this.kB.setAntiAlias(true);
        this.kB.setStyle(Style.STROKE);
    }

    protected void onDraw(Canvas canvas) {
        synchronized (this.kt) {
            this.kt = Boolean.valueOf(false);
        }
        if (this.kE == 0) {
            this.kE = getHeight() / 2;
            this.ko = this.kE;
            this.kp = this.kE;
            this.kn = this.kE - this.ks;
            this.kz = this.kE - this.kA;
            C0090a.bvo("NubiaProgressWheel", "mViewR = " + this.kE);
        }
        super.onDraw(canvas);
        if (this.kr) {
            double d = (this.kC * 6.0d) * 0.017453292519943295d;
            Canvas canvas2 = canvas;
            canvas2.drawLine((((float) Math.sin(d)) * ((float) (this.kz + this.kA))) + ((float) this.ko), ((float) this.kp) - (((float) Math.cos(d)) * ((float) (this.kz + this.kA))), (((float) Math.sin(d)) * ((float) this.kz)) + ((float) this.ko), ((float) this.kp) - (((float) Math.cos(d)) * ((float) this.kz)), this.kB);
        }
        int i;
        if (this.kx == 0.30000001192092896d) {
            for (i = 0; i < ((int) this.ku); i++) {
                d = ((double) (i * 6)) * 0.017453292519943295d;
                canvas2 = canvas;
                canvas2.drawLine((((float) Math.sin(d)) * ((float) (this.kn + this.ks))) + ((float) this.ko), ((float) this.kp) - (((float) Math.cos(d)) * ((float) (this.kn + this.ks))), (((float) Math.sin(d)) * ((float) this.kn)) + ((float) this.ko), ((float) this.kp) - (((float) Math.cos(d)) * ((float) this.kn)), this.kv);
            }
            return;
        }
        for (i = 60; i > 60 - ((int) this.ku); i--) {
            d = ((double) (i * 6)) * 0.017453292519943295d;
            canvas2 = canvas;
            canvas2.drawLine((((float) Math.sin(d)) * ((float) (this.kn + this.ks))) + ((float) this.ko), ((float) this.kp) - (((float) Math.cos(d)) * ((float) (this.kn + this.ks))), (((float) Math.sin(d)) * ((float) this.kn)) + ((float) this.ko), ((float) this.kp) - (((float) Math.cos(d)) * ((float) this.kn)), this.kv);
        }
    }

    public void start() {
        C0090a.bvo("NubiaProgressWheel", "start");
        if (this.ky != null && this.ky.isAlive()) {
            C0090a.bvo("NubiaProgressWheel", "start  mThread isAlive");
            stop();
            try {
                this.ky.join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        this.kr = true;
        this.kx = 0.30000001192092896d;
        this.ku = 0.0d;
        this.kC = 0.0d;
        this.ky = new Thread(this.kw);
        this.ky.start();
    }

    public void stop() {
        C0090a.bvo("NubiaProgressWheel", "stop");
        this.kr = false;
        this.ku = 0.0d;
        this.kC = 0.0d;
        this.kq.removeMessages(0);
    }

    protected void onWindowVisibilityChanged(int i) {
        if (i != 0 && this.kr) {
            stop();
        }
        super.onDetachedFromWindow();
    }
}
