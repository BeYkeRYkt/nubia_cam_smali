package com.android.normal.p040a;

import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import android.media.MediaCodec.BufferInfo;
import android.os.SystemClock;
import cn.nubia.videogenerator.p006a.C0053b;
import cn.nubia.videogenerator.p007b.C0065a;
import com.android.common.appService.C0309M;
import com.android.common.cameradevice.C0382m;
import com.p010a.C0090a;
import java.util.concurrent.ConcurrentLinkedQueue;

public class C0999i implements PreviewCallback {
    private C0382m aBM;
    private int aBN;
    private int aBO;
    private ConcurrentLinkedQueue aBP;
    private int aBQ;
    private C0309M aBR;
    private int aBS;
    private int mState = -1;

    public void aRG(C0382m c0382m, C0053b c0053b, C0309M c0309m) {
        this.aBM = c0382m;
        this.aBS = c0053b.bNh();
        this.aBN = c0053b.bNi();
        this.aBR = c0309m;
        C0090a.bvo("meeeeYuvImageGenerator", "YUVDataCacher w/h" + this.aBS + "/" + this.aBN);
    }

    public void aRI(ConcurrentLinkedQueue concurrentLinkedQueue) {
        this.aBP = concurrentLinkedQueue;
    }

    public void aRH(int i) {
        this.aBO = i;
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
        C0090a.bvo("meeeeYuvImageGenerator", "prew@:Size" + bArr.length);
        if (aRK(bArr)) {
            C0065a c0065a = new C0065a();
            c0065a.data = bArr;
            c0065a.brn = 1;
            c0065a.brm = new BufferInfo();
            c0065a.brm.flags = 1;
            c0065a.brm.offset = 0;
            c0065a.brm.size = bArr.length;
            c0065a.brm.presentationTimeUs = SystemClock.elapsedRealtimeNanos() / 1000;
            if (this.aBP.size() > this.aBQ) {
                this.aBP.poll();
            }
            this.aBP.add(c0065a);
        }
    }

    public void start() {
        int[] iArr = new int[2];
        this.aBM.IP().Gu(iArr);
        this.aBQ = (((int) ((((double) (iArr[1] + iArr[0])) / 2000.0d) * (((double) this.aBO) / 1000.0d))) / 2) + 1;
        C0090a.bvo("meeeeYuvImageGenerator", "oql = " + this.aBQ);
        this.aBR.abK(this, this.aBM.Jp());
        this.mState = 1;
        C0090a.bvo("meeeeYuvImageGenerator", "cacher started");
    }

    public void aRJ() {
        if (this.mState == 1) {
            C0090a.bvo("meeeeYuvImageGenerator", "PreviewCallback reRegistered");
            this.aBR.abK(this, this.aBM.Jp());
        }
    }

    public void stop() {
        C0090a.bvo("meeeeYuvImageGenerator", "Preview stop");
        this.aBR.abL(this);
        this.mState = 2;
    }

    private boolean aRK(byte[] bArr) {
        if (bArr.length == ((this.aBS * this.aBN) * 3) / 2) {
            return true;
        }
        C0090a.bvo("meeeeYuvImageGenerator", "prew changed form " + this.aBS + this.aBN + "to " + bArr.length);
        return false;
    }
}
