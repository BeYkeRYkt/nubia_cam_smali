package com.android.videomaker;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import java.util.ArrayList;

public class LooperShowView extends View {
    private static String TAG = "LooperShowView";
    private Handler axU;
    private C1198k axV;
    private long axW = -1;

    public LooperShowView(Context context) {
        super(context);
        aMj();
    }

    public LooperShowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        aMj();
    }

    public LooperShowView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        aMj();
    }

    public void aMk(ArrayList arrayList, int i, int i2) {
        this.axV = new C1198k(arrayList);
        this.axV.aPD(new C1202p(i, i2));
    }

    public C1198k aMi() {
        return this.axV;
    }

    public void aMl(int i, long j) {
        if (this.axV != null) {
            this.axV.start();
            this.axW = j;
            this.axU.removeMessages(1);
            this.axU.sendEmptyMessageDelayed(1, this.axW);
        }
    }

    public void stop() {
        this.axU.removeMessages(1);
        this.axV.stop();
    }

    protected void onDraw(Canvas canvas) {
        aMh(canvas);
    }

    private void aMh(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        C1204r aPE = this.axV.aPE();
        if (aPE != null && aPE.aQk() != null) {
            Bitmap aQk = aPE.aQk();
            canvas.drawBitmap(aQk, (float) ((width - aQk.getWidth()) / 2), (float) ((height - aQk.getHeight()) / 2), null);
        }
    }

    private void aMj() {
        setDrawingCacheEnabled(true);
        this.axU = new C1215u(this);
    }
}
