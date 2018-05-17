package com.android.electronicfno;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import com.android.common.C0299a;
import com.nubia.camera.common.Native.EletronicAlgorithm;
import com.p010a.C0090a;

class C0840l extends Thread {
    private int aXV;
    private Bitmap aXW;
    private int[] aXX = new int[2];
    private int aXY;
    final /* synthetic */ C0839j aXZ;

    public C0840l(C0839j c0839j, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
        this.aXZ = c0839j;
        super("EletronicObject");
        int ceil = (int) Math.ceil(((double) i) / 960.0d);
        switch (i6) {
            case 90:
            case 270:
                this.aXY = i2;
                this.aXV = i;
                break;
            default:
                this.aXV = i2;
                this.aXY = i;
                break;
        }
        this.aXW = Bitmap.createBitmap(this.aXY / ceil, this.aXV / ceil, Config.ARGB_8888);
        c0839j.aXN = new EletronicAlgorithm();
        c0839j.aXN.btQ(i, i2, i3, i4, i5, z, ceil, i6);
    }

    public synchronized void boB() {
        this.aXZ.mState = 3;
        notify();
    }

    public synchronized void boC() {
        this.aXZ.mState = 4;
        notify();
    }

    public void run() {
        C0090a.bvo("ElectronicOjbect", "ele proces thread enter, id = " + getId());
        this.aXZ.aXO.sendEmptyMessage(1);
        this.aXZ.mState = 2;
        while (this.aXZ.mState == 2) {
            this.aXZ.aXN.btR(this.aXW, this.aXX);
            Bitmap createBitmap = Bitmap.createBitmap(this.aXW);
            if (this.aXX[0] < this.aXZ.aXR) {
                this.aXZ.aXO.sendMessage(this.aXZ.aXO.obtainMessage(2, new C0841m((this.aXX[1] * 100) / this.aXZ.aXR, createBitmap)));
            } else if (this.aXZ.aXM) {
                this.aXZ.aXO.sendMessage(this.aXZ.aXO.obtainMessage(2, new C0841m(99, createBitmap)));
            } else {
                this.aXZ.mState = 4;
            }
            try {
                C0840l.sleep(40);
            } catch (InterruptedException e) {
            }
        }
        if (this.aXZ.mState == 4) {
            this.aXZ.aXO.sendEmptyMessage(0);
            createBitmap = Bitmap.createBitmap(this.aXY, this.aXV, Config.ARGB_8888);
            this.aXZ.aXN.btS(createBitmap);
            this.aXZ.aXO.sendMessage(this.aXZ.aXO.obtainMessage(4, C0299a.anY(createBitmap, this.aXZ.aXS)));
        } else {
            this.aXZ.aXN.btT();
            this.aXZ.aXO.sendEmptyMessage(3);
        }
        this.aXZ.aXN.release();
        this.aXZ.aXO.sendEmptyMessage(5);
        C0090a.bvo("ElectronicOjbect", "ele proces thread exit, id = " + getId());
        this.aXZ.aXN = null;
        this.aXZ.mState = 0;
    }
}
