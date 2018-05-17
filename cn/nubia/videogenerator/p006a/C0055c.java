package cn.nubia.videogenerator.p006a;

import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import cn.nubia.videogenerator.p007b.C0054e;
import cn.nubia.videogenerator.p007b.C0060d;
import cn.nubia.videogenerator.p007b.C0065a;
import java.nio.ByteBuffer;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;

public class C0055c implements C0054e {
    private C0053b bqA;
    private int bqB;
    private String bqC;
    private C0060d bqD;
    private MediaCodec bqE;
    private boolean bqF = true;
    private boolean bqG = false;
    private long bqH = 0;
    private ConcurrentLinkedQueue bqI;
    private long bqJ = 0;
    private C0061f bqK;
    private Object bqL = new Object();
    private int bqM = 0;
    private int bqN = 0;
    private boolean bqO = true;
    private AtomicBoolean bqx = new AtomicBoolean(false);
    private Surface bqy = null;
    private C0052a bqz;

    public C0055c(C0053b c0053b) {
        this.bqA = c0053b;
        this.bqB = c0053b.bNc();
        this.bqC = c0053b.bNg();
        this.bqE = MediaCodec.createEncoderByType(c0053b.bNg());
        MediaFormat bNm = c0053b.bNm();
        if (this.bqA.bMZ()) {
            bNm.setInteger("recorder", 1);
        }
        if (this.bqA.bNa()) {
            bNm.setInteger("enc-nonRefP", 1);
        }
        this.bqE.configure(bNm, null, null, 1);
        bNn();
    }

    public C0055c(C0052a c0052a) {
        this.bqz = c0052a;
        this.bqC = c0052a.bMS();
        this.bqE = MediaCodec.createEncoderByType(c0052a.bMS());
        this.bqE.configure(c0052a.bMX(), null, null, 1);
        bNn();
    }

    private void bNn() {
        this.bqI = new ConcurrentLinkedQueue();
    }

    public void bNo(C0061f c0061f) {
        this.bqK = c0061f;
        if (this.bqE != null) {
            this.bqK.bOd(this);
        }
    }

    public void bNp(C0059e c0059e) {
        if (this.bqE != null) {
            c0059e.bOb(this);
            if (this.bqy == null && this.bqA.bNk() == 2130708361) {
                synchronized (this.bqL) {
                    this.bqy = this.bqE.createInputSurface();
                }
            }
            c0059e.bNV(bNu(), bNq().bNh(), bNq().bNi());
        }
    }

    public C0053b bNq() {
        return this.bqA;
    }

    public boolean bNr(int i) {
        if (this.bqM < this.bqN + i) {
            return false;
        }
        return true;
    }

    public void bNs(boolean z) {
        this.bqM++;
        bNw(z);
    }

    public void bNt(ByteBuffer byteBuffer, BufferInfo bufferInfo) {
        C0065a c0065a = new C0065a();
        c0065a.data = byteBuffer.array();
        c0065a.brm = bufferInfo;
        this.bqI.add(c0065a);
        this.bqM++;
    }

    public Surface bNu() {
        return this.bqy;
    }

    public void bNv(C0060d c0060d) {
        this.bqD = c0060d;
    }

    public void bNw(boolean z) {
        try {
            synchronized (this.bqL) {
                if (this.bqE != null) {
                    bNy(z);
                }
            }
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }

    private void bNx() {
        if (this.bqF || bNC()) {
            synchronized (this.bqL) {
                int dequeueInputBuffer = this.bqE.dequeueInputBuffer(100);
                if (dequeueInputBuffer >= 0) {
                    this.bqF = false;
                    C0065a c0065a = (C0065a) this.bqI.poll();
                    ByteBuffer inputBuffer = this.bqE.getInputBuffer(dequeueInputBuffer);
                    inputBuffer.clear();
                    inputBuffer.put(c0065a.data);
                    if (c0065a.brm.size >= 0) {
                        if ((c0065a.brm.flags & 4) == 0) {
                            this.bqE.queueInputBuffer(dequeueInputBuffer, 0, c0065a.brm.size, c0065a.brm.presentationTimeUs, 0);
                        }
                    }
                    Log.i("Encoder", this.bqC + " EOS received in fillInputBufferInner");
                    this.bqE.queueInputBuffer(dequeueInputBuffer, 0, c0065a.brm.size, c0065a.brm.presentationTimeUs, 4);
                    this.bqG = true;
                }
            }
        }
    }

    private void bNy(boolean z) {
        if (z) {
            Log.d("Encoder", this.bqC + " sending EOS to encoder");
            if (this.bqy != null) {
                synchronized (this.bqL) {
                    this.bqE.signalEndOfInputStream();
                }
            }
        }
        while (true) {
            BufferInfo bufferInfo = new BufferInfo();
            synchronized (this.bqL) {
                int dequeueOutputBuffer = this.bqE.dequeueOutputBuffer(bufferInfo, 0);
            }
            if (!this.bqx.get()) {
                if (dequeueOutputBuffer != -1) {
                    if (dequeueOutputBuffer == -2) {
                        MediaFormat outputFormat;
                        synchronized (this.bqL) {
                            outputFormat = this.bqE.getOutputFormat();
                        }
                        if (this.bqH == 0) {
                            bNB(outputFormat);
                        }
                    } else if (dequeueOutputBuffer >= 0) {
                        byte[] bArr = new byte[bufferInfo.size];
                        synchronized (this.bqL) {
                            this.bqE.getOutputBuffer(dequeueOutputBuffer).get(bArr);
                        }
                        ByteBuffer wrap = ByteBuffer.wrap(bArr);
                        if (wrap != null) {
                            if ((bufferInfo.flags & 2) != 0) {
                                bufferInfo.size = 0;
                            }
                            if (bufferInfo.size != 0) {
                                wrap.position(bufferInfo.offset);
                                wrap.limit(bufferInfo.offset + bufferInfo.size);
                                if (this.bqC.contains("video/")) {
                                    bufferInfo.presentationTimeUs = this.bqH;
                                    this.bqH += 1000000 / ((long) this.bqB);
                                } else if (this.bqC.contains("audio/")) {
                                    bufferInfo.presentationTimeUs = this.bqJ;
                                    if (bNC()) {
                                        this.bqJ += 1024000000 / ((long) this.bqz.bMV());
                                    }
                                }
                                this.bqN++;
                                bNA(wrap, bufferInfo);
                            }
                            synchronized (this.bqL) {
                                this.bqE.releaseOutputBuffer(dequeueOutputBuffer, false);
                            }
                            if ((bufferInfo.flags & 4) != 0) {
                                break;
                            } else if (this.bqy == null && this.bqI.isEmpty() && this.bqN >= this.bqM && this.bqC.contains("video/")) {
                                Log.d("Encoder", this.bqC + " encoder data is over ");
                                return;
                            }
                        }
                        throw new RuntimeException("encoderOutputBuffer " + dequeueOutputBuffer + " was null");
                    } else {
                        Log.w("Encoder", this.bqC + " unexpected result from encoder.dequeueOutputBuffer: " + dequeueOutputBuffer);
                    }
                } else if (this.bqy == null) {
                    if (!z && !this.bqI.isEmpty()) {
                        return;
                    }
                    if (this.bqM == 0) {
                        return;
                    }
                } else if (!z || this.bqM == 0) {
                    return;
                }
            } else {
                return;
            }
        }
        if (z) {
            Log.d("Encoder", this.bqC + " end of stream reached " + this.bqC);
        } else {
            Log.w("Encoder", this.bqC + " reached end of stream unexpectedly " + this.bqC);
        }
        if (this.bqO) {
            bNz();
        }
        this.bqx.set(true);
    }

    private void bNz() {
        if (this.bqD != null) {
            this.bqD.aRO(this.bqC);
        }
    }

    private void bNA(ByteBuffer byteBuffer, BufferInfo bufferInfo) {
        if (this.bqD != null) {
            this.bqD.aRN(byteBuffer, bufferInfo, this.bqC);
        }
    }

    private void bNB(MediaFormat mediaFormat) {
        Log.i("Encoder", "notifyOutputFormatChanged format changed " + mediaFormat.toString());
        if (this.bqD != null) {
            this.bqD.aRP(mediaFormat);
        }
    }

    private boolean bNC() {
        return this.bqD.aRM();
    }

    private void bND() {
        if (this.bqE != null && !this.bqx.get()) {
            bNx();
            bNy(this.bqG);
        }
    }

    private void bNE() {
        synchronized (this.bqL) {
            if (this.bqE != null) {
                bNy(this.bqG);
            }
        }
        while (!this.bqx.get()) {
            if (this.bqI.isEmpty()) {
                Thread.yield();
                SystemClock.sleep(20);
            } else {
                synchronized (this.bqL) {
                    bND();
                }
            }
        }
    }

    public void start() {
        if (this.bqE != null) {
            Log.i("Encoder", this.bqC + " Encoder start");
            synchronized (this.bqL) {
                this.bqE.start();
            }
        }
        if (this.bqy == null) {
            new C0063i().start();
        }
    }

    public void release() {
        this.bqx.set(true);
        if (this.bqE != null) {
            synchronized (this.bqL) {
                Log.i("Encoder", this.bqC + " release");
                this.bqE.stop();
                this.bqE.release();
                this.bqE = null;
                if (this.bqy != null) {
                    this.bqy.release();
                    this.bqy = null;
                }
            }
        }
        this.bqI.clear();
    }
}
