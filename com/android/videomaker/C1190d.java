package com.android.videomaker;

import android.graphics.Rect;
import android.graphics.YuvImage;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.nubia.camera.common.Native.BufferCell;
import com.nubia.camera.common.Native.YUVAlgorithm;
import com.p010a.C0090a;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;

class C1190d extends Thread {
    private volatile boolean ayD = true;
    final /* synthetic */ C1179a ayE;

    C1190d(C1179a c1179a) {
        this.ayE = c1179a;
    }

    public void run() {
        C1179a.aME("ReadBufferThread.run!!!");
        int i = this.ayE.aMx().width;
        int i2 = this.ayE.aMx().height;
        try {
            Thread.sleep(500);
            String str = this.ayE.ayB + '/' + C0616j.aoO(System.currentTimeMillis());
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            try {
                if (new File(file, ".nomedia").createNewFile()) {
                    while (this.ayD) {
                        if (this.ayE.ayi) {
                            if (this.ayE.ayb != null) {
                                this.ayE.ayb.releaseBuffer();
                                this.ayE.ayj = true;
                            }
                            return;
                        }
                        this.ayE.axZ.Ti().alY(null);
                        if (!this.ayE.axZ.Tl()) {
                            C0090a.bvo("VideoMakerMultiShoot", "Low space");
                            this.ayE.ayd.sendEmptyMessage(14);
                            this.ayE.ayb.releaseBuffer();
                            this.ayE.ayj = true;
                            return;
                        } else if (this.ayE.ayc < this.ayE.ayr && !this.ayE.ayj) {
                            int i3;
                            int i4;
                            byte[] data = this.ayE.ayb.getData(this.ayE.ayc % 100);
                            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            if (this.ayE.ayo % 360 != 0) {
                                int i5;
                                int i6;
                                BufferCell bufferCell = new BufferCell(data);
                                BufferCell bufferCell2 = new BufferCell(data);
                                if (this.ayE.ayo % 180 == 90) {
                                    i5 = i;
                                    i6 = i2;
                                } else {
                                    i5 = i2;
                                    i6 = i;
                                }
                                YUVAlgorithm.btM(bufferCell, bufferCell2, i6, i5, (360 - (this.ayE.ayo % 360)) % 360);
                                byte[] btD = bufferCell2.btD();
                                bufferCell.release();
                                bufferCell2.release();
                                i3 = i5;
                                i4 = i6;
                                data = btD;
                            } else {
                                i3 = i2;
                                i4 = i;
                            }
                            new YuvImage(data, 17, i4, i3, null).compressToJpeg(new Rect(0, 0, i4, i3), 80, byteArrayOutputStream);
                            this.ayE.aye = System.currentTimeMillis();
                            String str2 = str + '/' + C0616j.aoP(this.ayE.aye) + ".jpg";
                            C0701s.aqY(byteArrayOutputStream.toByteArray(), str2);
                            this.ayE.ayw.add(str2);
                            C1179a c1179a = this.ayE;
                            c1179a.ayc = c1179a.ayc + 1;
                            if (this.ayE.ayg && this.ayE.ayk) {
                                this.ayE.ayn.addCallbackBuffer(new byte[this.ayE.ayq]);
                            }
                        } else if (!this.ayE.ayk) {
                            C1179a.aME("releaseBuffer");
                            this.ayE.ayb.releaseBuffer();
                            this.ayE.ayb = null;
                            this.ayE.ayj = true;
                            this.ayE.ayd.sendEmptyMessage(12);
                            this.ayE.axZ.Tg();
                            this.ayE.ayd.removeMessages(1);
                            this.ayE.ayd.removeMessages(2);
                            if (this.ayE.ayy == this.ayE.aym) {
                                this.ayE.ayd.sendEmptyMessage(10);
                            } else {
                                this.ayE.ayd.sendEmptyMessage(7);
                            }
                            return;
                        }
                    }
                    return;
                }
                throw new FileNotFoundException("Cannot create file .nomedia");
            } catch (IOException e) {
                e.printStackTrace();
                C1179a.aME("exception: " + e);
                this.ayE.ayb.releaseBuffer();
                this.ayE.ayj = true;
            }
        } catch (InterruptedException e2) {
            C1179a.aME("InterruptedException: " + e2);
            this.ayE.ayb.releaseBuffer();
            this.ayE.ayj = true;
        }
    }
}
