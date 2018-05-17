package com.android.intervalometer;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Matrix;
import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import android.hardware.Camera.Size;
import android.os.Debug;
import com.android.camera.R;
import com.android.common.ActivityBase;
import com.android.common.C0616j;
import com.android.common.C0636m;
import com.android.common.cameradevice.C0382m;
import com.android.common.p016a.C0291h;
import com.android.delaygenerator.DelayRecorder;
import com.p010a.C0090a;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class C0930b implements PreviewCallback, C0291h {
    private ActivityBase aOg;
    private String aOh;
    private int aOi = 0;
    private C0931c aOj;
    private int aOk;
    private boolean aOl = false;
    private C0932d aOm = new C0932d(this);
    private byte[] aOn = null;
    private DelayRecorder aOo;
    private ExecutorService aOp = Executors.newSingleThreadExecutor();
    private int aOq = 0;
    private int aOr;

    public C0930b(ActivityBase activityBase) {
        this.aOg = activityBase;
        this.aOo = new DelayRecorder(this.aOm);
    }

    public void start() {
        String aqq = C0636m.aqq();
        C0090a.m1e("PreviewDataRender", "start director: " + aqq);
        this.aOh = ben(aqq, System.currentTimeMillis());
        this.aOo.start(this.aOh);
    }

    public void bew() {
        try {
            if (this.aOn == null) {
                Size Gv = beo().IP().Gv();
                this.aOr = Gv.width;
                this.aOk = Gv.height;
                this.aOn = new byte[(((Gv.height * Gv.width) * 3) / 2)];
                this.aOg.arB().Ts().abE(this, this.aOg.arB().SQ());
            }
            beo().IK(this.aOn);
        } catch (OutOfMemoryError e) {
            try {
                Debug.dumpHprofData("/sdcard/camera_" + System.currentTimeMillis() + ".hprof");
            } catch (IOException e2) {
                C0090a.m1e("PreviewDataRender", "dump hprof fail " + e2.getMessage());
            }
            throw e;
        }
    }

    public void bes(C0931c c0931c) {
        this.aOj = c0931c;
    }

    private void bet() {
        this.aOo.setDegrees((this.aOg.arB().To() + C0616j.aoU(this.aOg.arB().SQ())) % 360);
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
        if (!this.aOl) {
            bet();
            this.aOl = true;
        }
        if (!this.aOp.isShutdown()) {
            if (this.aOq <= 10) {
                this.aOq++;
                this.aOp.submit(new C0933e(this, this, bArr));
                return;
            }
            this.aOi++;
            C0090a.m1e("PreviewDataRender", "Drop PreviewData:" + this.aOi);
        }
    }

    public void aM(ByteBuffer byteBuffer, int i, int i2, Matrix matrix) {
        this.aOr = i;
        this.aOk = i2;
        if (!this.aOl) {
            this.aOo.setDegrees(this.aOg.arB().To());
            this.aOl = true;
        }
        if (!this.aOp.isShutdown()) {
            if (this.aOq <= 10) {
                this.aOq++;
                this.aOp.submit(new C0933e(this, this, byteBuffer, i, i2, matrix));
                return;
            }
            this.aOi++;
            C0090a.m1e("PreviewDataRender", "Drop PreviewData:" + this.aOi);
        }
    }

    private void beq(ByteBuffer byteBuffer, int i, int i2, Matrix matrix) {
        this.aOo.input(bem(byteBuffer, i, i2, matrix));
    }

    private void ber(byte[] bArr) {
        C0090a.bvm("PreviewDataRender", "renderYUV  previewData: " + bArr.length + "width: " + this.aOr + " height: " + this.aOk);
        this.aOo.input(bArr, this.aOr, this.aOk);
    }

    private Bitmap bem(ByteBuffer byteBuffer, int i, int i2, Matrix matrix) {
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Config.ARGB_8888);
        byteBuffer.rewind();
        createBitmap.copyPixelsFromBuffer(byteBuffer);
        return Bitmap.createBitmap(createBitmap, 0, 0, i, i2, matrix, true);
    }

    private String ben(String str, long j) {
        Date date = new Date(j);
        return str + "/" + new SimpleDateFormat(this.aOg.getString(R.string.video_file_name_format)).format(date) + ".mp4";
    }

    public void stop() {
        this.aOg.arA(this);
        bev();
        if (this.aOo != null) {
            this.aOo.stop();
        }
        this.aOn = null;
        this.aOl = false;
        this.aOi = 0;
    }

    private void bev() {
        try {
            this.aOg.arB().Ts().abD(this);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
    }

    private C0382m beo() {
        return this.aOg.arB().Tr();
    }

    public void release() {
        beu();
        bep();
    }

    private void bep() {
        if (this.aOo != null) {
            this.aOo.release();
            this.aOo = null;
        }
    }

    private void beu() {
        if (this.aOp != null && !this.aOp.isShutdown()) {
            this.aOp.shutdown();
            this.aOp = null;
        }
    }
}
