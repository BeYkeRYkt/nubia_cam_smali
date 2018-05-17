package com.android.common.image3d;

import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import android.util.Log;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class C0577g {
    private MediaCodec Fd = null;
    private Runnable Fe = new C0583n(this);
    private ExecutorService Ff = Executors.newSingleThreadExecutor();
    private C0578h Fg = null;
    private int Fh = 0;
    private C0579i Fi = new C0579i();
    private int Fj = 1;

    public synchronized void Dj(int i, int i2) {
        this.Fi.width = i;
        this.Fi.height = i2;
        if (this.Fj == 1) {
            Log.e("H264Encoder", "create");
            try {
                this.Fd = MediaCodec.createEncoderByType("video/avc");
            } catch (IOException e) {
                Log.e("H264Encoder", "IOException");
            }
            MediaFormat createVideoFormat = MediaFormat.createVideoFormat("video/avc", this.Fi.width, this.Fi.height);
            createVideoFormat.setInteger("bitrate", this.Fi.Fk);
            createVideoFormat.setInteger("frame-rate", this.Fi.Fm);
            createVideoFormat.setInteger("color-format", this.Fi.Fl);
            createVideoFormat.setInteger("i-frame-interval", this.Fi.Fn);
            this.Fd.configure(createVideoFormat, null, null, 1);
            this.Fj = 2;
        } else {
            Log.e("H264Encoder", "call create in error status[" + this.Fj + "]");
        }
    }

    public synchronized void Dm(C0578h c0578h) {
        this.Fg = c0578h;
    }

    public synchronized void start() {
        if (this.Fj == 2) {
            Log.v("H264Encoder", "start");
            this.Fd.start();
            this.Fh = 0;
            this.Fj = 4;
            this.Ff.submit(this.Fe);
        } else {
            Log.e("H264Encoder", "call start in error status[" + this.Fj + "]");
        }
    }

    public synchronized void stop() {
        if (this.Fj == 4) {
            try {
                Log.v("H264Encoder", "stop");
                this.Fj = 8;
                Dn();
                this.Ff.shutdownNow();
                this.Ff.awaitTermination(Long.MAX_VALUE, TimeUnit.DAYS);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        } else {
            Log.e("H264Encoder", "call stop in error status[" + this.Fj + "]");
        }
    }

    public synchronized void release() {
        if (this.Fj > 1) {
            Log.v("H264Encoder", "release");
            this.Fd.stop();
            this.Fd.release();
            this.Fd = null;
            this.Fj = 1;
            this.Fh = 0;
        }
    }

    public synchronized void Dl(BufferInfo bufferInfo, byte[] bArr, int i) {
        if (this.Fj == 4) {
            C0577g.Di(bArr, this.Fi.width, this.Fi.height);
            int dequeueInputBuffer = this.Fd.dequeueInputBuffer((long) i);
            if (dequeueInputBuffer < 0) {
                Log.w("H264Encoder", "dequeueInputBuffer TimeOut.");
            } else {
                this.Fd.getInputBuffer(dequeueInputBuffer).put(bArr);
                this.Fd.queueInputBuffer(dequeueInputBuffer, 0, bufferInfo.size, bufferInfo.presentationTimeUs, bufferInfo.flags);
            }
        }
    }

    private static void Di(byte[] bArr, int i, int i2) {
        int i3 = i * i2;
        for (int i4 = 0; i4 < i3 / 2; i4 += 2) {
            byte b = bArr[i3 + i4];
            bArr[i3 + i4] = bArr[(i3 + i4) + 1];
            bArr[(i3 + i4) + 1] = b;
        }
    }

    private void Dn() {
        this.Fd.queueInputBuffer(this.Fd.dequeueInputBuffer(-1), 0, 0, 0, 4);
    }

    private void Dk() {
        BufferInfo bufferInfo = new BufferInfo();
        boolean z = false;
        while (!z) {
            int dequeueOutputBuffer = this.Fd.dequeueOutputBuffer(bufferInfo, -1);
            if (dequeueOutputBuffer == -1) {
                Log.i("H264Encoder", "Encoder INFO_TRY_AGAIN_LATER.");
            } else if (dequeueOutputBuffer == -2) {
                Log.i("H264Encoder", "Encoder output format changed: " + this.Fd.getOutputFormat());
            } else if (dequeueOutputBuffer < 0) {
                Log.w("H264Encoder", "Encoder unexpected result from encoder.dequeueOutputBuffer: " + dequeueOutputBuffer);
            } else {
                Log.w("H264Encoder", "info.flags" + bufferInfo.flags);
                if (bufferInfo.flags == 4) {
                    Log.i("H264Encoder", "BUFFER_FLAG_END_OF_STREAM");
                    z = true;
                } else if (bufferInfo.flags == 2) {
                    Log.i("H264Encoder", "BUFFER_FLAG_CODEC_CONFIG");
                    r4 = this.Fd.getOutputBuffer(dequeueOutputBuffer);
                    Log.i("H264Encoder", "offset:" + bufferInfo.offset + "size:" + bufferInfo.size + "frameNum:" + this.Fh);
                    this.Fh++;
                    if (!(bufferInfo.size == 0 || this.Fg == null)) {
                        this.Fg.Dp(r4, bufferInfo);
                    }
                } else {
                    r4 = this.Fd.getOutputBuffer(dequeueOutputBuffer);
                    Log.i("H264Encoder", "offset:" + bufferInfo.offset + "size:" + bufferInfo.size + "frameNum:" + this.Fh);
                    this.Fh++;
                    if (!(bufferInfo.size == 0 || this.Fg == null)) {
                        this.Fg.Dp(r4, bufferInfo);
                    }
                }
                this.Fd.releaseOutputBuffer(dequeueOutputBuffer, false);
            }
        }
    }
}
