package com.android.objectclear;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import com.android.camera.ObjectClear.NubiaObjectClear;
import com.android.common.C0616j;
import com.p010a.C0090a;
import java.util.LinkedList;
import java.util.Queue;

class C1035m extends Thread {
    private boolean aKl;
    private Queue aKm;
    final /* synthetic */ C1031i aKn;

    private C1035m(C1031i c1031i) {
        this.aKn = c1031i;
        this.aKl = false;
        this.aKm = null;
    }

    public void cancel() {
        this.aKl = true;
        synchronized (this) {
            notify();
        }
    }

    public void baD(int i, int i2) {
        synchronized (this) {
            baC(i, i2);
            notify();
        }
    }

    private Matrix baE() {
        Matrix matrix = new Matrix();
        matrix.reset();
        matrix.postRotate((float) C0616j.aoS(0, this.aKn.adA.SQ()));
        return matrix;
    }

    private void baC(int i, int i2) {
        Object obj = new int[2];
        if (this.aKm == null) {
            this.aKm = new LinkedList();
        }
        obj[0] = i;
        obj[1] = i2;
        this.aKm.offer(obj);
        C0090a.bvm("NubiaObjectClearFragment", "addCoordinateToQueue, size = " + this.aKm.size());
    }

    public void run() {
        Matrix baE = baE();
        while (!this.aKl) {
            synchronized (this) {
                if (this.aKm.isEmpty()) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                    }
                }
                int[][] iArr = new int[this.aKm.size()][];
                int size = this.aKm.size();
                for (int i = 0; i < size; i++) {
                    if (!this.aKm.isEmpty()) {
                        iArr[i] = (int[]) this.aKm.poll();
                    }
                }
                this.aKm.clear();
            }
            for (int i2 = 0; i2 < iArr.length; i2++) {
                NubiaObjectClear.SelectLabel(iArr[i2][0], iArr[i2][1], this.aKn.aJQ);
            }
            this.aKn.aKg.obtainMessage(2, Bitmap.createBitmap(this.aKn.aJQ, 0, 0, this.aKn.aJQ.getWidth(), this.aKn.aJQ.getHeight(), baE, true)).sendToTarget();
        }
        this.aKm = null;
    }
}
