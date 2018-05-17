package com.android.pretty;

import android.hardware.Camera.Size;
import com.android.camera.R;
import com.android.common.appService.C0304F;
import com.android.common.cameradevice.C0384o;
import com.nubia.camera.common.Native.BufferCell;
import com.nubia.camera.common.Native.EffectAlgorithm;
import com.p010a.C0090a;

class C1087t extends Thread {
    private boolean avf;
    private byte[][] avg;
    final /* synthetic */ C1084p avh;

    public C1087t(C1084p c1084p) {
        int i = 0;
        this.avh = c1084p;
        this.avg = null;
        this.avf = false;
        this.avg = new byte[10][];
        while (i < 10) {
            this.avg[i] = null;
            i++;
        }
    }

    public void cancel() {
        this.avf = true;
        synchronized (this) {
            notify();
        }
    }

    public void aJx() {
        synchronized (this) {
            notify();
        }
    }

    public void putData(int i, byte[] bArr) {
        if (i >= 0 && i < 10) {
            this.avg[i] = bArr;
        }
        synchronized (this) {
            notify();
        }
    }

    public void run() {
        super.run();
        Object obj = null;
        for (int i = 0; i < 10 && !this.avf; i++) {
            Object obj2 = null;
            while (obj2 == null && !this.avf) {
                Object obj3;
                if (this.avg[i] == null) {
                    if (this.avf) {
                        continue;
                        break;
                    }
                    synchronized (this) {
                        try {
                            C0090a.bvo("BestPhotoService", "rawDataThread wait " + i);
                            wait();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                    obj3 = obj2;
                    obj2 = obj;
                } else {
                    C0090a.bvo("BestPhotoService", "rawDataThread process " + i);
                    aJv(this.avg[i], i);
                    this.avg[i] = null;
                    if (i == 9) {
                        obj3 = 1;
                        obj2 = 1;
                    } else {
                        int i2 = 1;
                        obj2 = obj;
                    }
                }
                obj = obj2;
                obj2 = obj3;
            }
        }
        if (obj != null) {
            this.avh.auK.sendEmptyMessage(3);
        } else {
            C0090a.bvo("BestPhotoService", "cancel rawthread");
        }
    }

    private void aJv(byte[] bArr, int i) {
        int i2 = 270;
        Size Gv = this.avh.auE.Tn().Gv();
        String aJl = this.avh.aIH();
        if (!aJl.equals("none")) {
            C0090a.m1e("BestPhotoService", "need sending raw data to EffectAlgorithm");
            BufferCell bufferCell = new BufferCell(((Gv.width * Gv.height) * 3) / 2);
            bufferCell.btF(bArr);
            EffectAlgorithm.btJ(bufferCell, Gv.width, Gv.height, aJl);
            bArr = bufferCell.btD();
            bufferCell.release();
        }
        int Tp = this.avh.auE.Tp();
        if (i < 10) {
            byte[] aaW = C0304F.aaW(bArr, Gv.width, Gv.height);
            this.avh.auH[i] = C0304F.aaV(aaW, 4);
            this.avh.auV[i] = C0304F.aaV(aaW, 8);
            if (C0384o.Jr().Ju()[this.avh.auE.SQ()].facing != 1) {
                i2 = 90;
            } else if (!(Tp == 0 || 180 == Tp || aJw())) {
                i2 = 90;
            }
            this.avh.auH[i] = C0304F.aaS(this.avh.auH[i], i2, aJw());
            this.avh.auV[i] = C0304F.aaS(this.avh.auV[i], i2, aJw());
        }
    }

    private boolean aJw() {
        return this.avh.aIJ().getString("pref_snapshot_mirror_key", this.avh.aIK(R.string.pref_snapshot_mirror_default)).equals("on");
    }
}
