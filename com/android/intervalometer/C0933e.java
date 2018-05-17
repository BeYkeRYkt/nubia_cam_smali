package com.android.intervalometer;

import android.graphics.Matrix;
import java.nio.ByteBuffer;

public class C0933e implements Runnable {
    private static final /* synthetic */ int[] aOF = null;
    private C0930b aOA;
    private PreviewDataRender$PreviewDataType aOB;
    private int aOC;
    private Matrix aOD;
    final /* synthetic */ C0930b aOE;
    private byte[] aOw;
    private int aOx;
    private boolean aOy = false;
    private ByteBuffer aOz;

    private static /* synthetic */ int[] beH() {
        if (aOF != null) {
            return aOF;
        }
        int[] iArr = new int[PreviewDataRender$PreviewDataType.values().length];
        try {
            iArr[PreviewDataRender$PreviewDataType.ARGB_BUFFER.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            iArr[PreviewDataRender$PreviewDataType.YUV_BUFFER.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        aOF = iArr;
        return iArr;
    }

    public C0933e(C0930b c0930b, C0930b c0930b2, ByteBuffer byteBuffer, int i, int i2, Matrix matrix) {
        this.aOE = c0930b;
        this.aOA = c0930b2;
        this.aOz = byteBuffer;
        this.aOC = i;
        this.aOx = i2;
        this.aOD = matrix;
        this.aOB = PreviewDataRender$PreviewDataType.ARGB_BUFFER;
        this.aOy = true;
    }

    public C0933e(C0930b c0930b, C0930b c0930b2, byte[] bArr) {
        this.aOE = c0930b;
        this.aOA = c0930b2;
        this.aOw = (byte[]) bArr.clone();
        this.aOB = PreviewDataRender$PreviewDataType.YUV_BUFFER;
        this.aOy = true;
    }

    public void run() {
        if (this.aOy) {
            switch (C0933e.beH()[this.aOB.ordinal()]) {
                case 1:
                    this.aOA.beq(this.aOz, this.aOC, this.aOx, this.aOD);
                    this.aOz = null;
                    this.aOy = false;
                    break;
                case 2:
                    this.aOA.ber(this.aOw);
                    this.aOw = null;
                    this.aOy = false;
                    break;
            }
            C0930b c0930b = this.aOE;
            c0930b.aOq = c0930b.aOq - 1;
        }
    }
}
