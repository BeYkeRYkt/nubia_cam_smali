package cn.nubia.videogenerator.p006a;

import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import android.os.SystemClock;
import android.util.Log;
import cn.nubia.videogenerator.p007b.C0057l;
import cn.nubia.videogenerator.p007b.C0060d;
import cn.nubia.videogenerator.p007b.C0065a;
import cn.nubia.videogenerator.p007b.C0072j;
import java.nio.ByteBuffer;
import java.util.concurrent.ConcurrentLinkedQueue;

public class C0058d extends C0056g implements C0057l {
    private boolean bqP = false;
    private MediaFormat bqQ = null;
    private String bqR;
    private MediaCodec bqS;
    private C0060d bqT;
    private boolean bqU = false;
    private ConcurrentLinkedQueue bqV;
    private Object bqW = new Object();
    private int bqX = 0;
    private int bqY = 0;
    private long bqZ = -1;
    private C0072j bra = null;

    public C0058d(MediaFormat mediaFormat) {
        this.bqQ = mediaFormat;
        this.bqR = this.bqQ.getString("mime");
        bNG(this.bqQ);
        this.bqV = new ConcurrentLinkedQueue();
    }

    private void bNG(MediaFormat mediaFormat) {
        int i = 0;
        mediaFormat.setInteger("max-input-size", 16384);
        String findDecoderForFormat = new MediaCodecList(0).findDecoderForFormat(mediaFormat);
        if (findDecoderForFormat == null) {
            try {
                Log.i("Decoder", "KEY_MIME :mime");
                try {
                    this.bqS = MediaCodec.createDecoderByType(mediaFormat.getString("mime"));
                } catch (Exception e) {
                    try {
                        release();
                        if (i != 0) {
                            this.bqS = MediaCodec.createDecoderByType(mediaFormat.getString("mime"));
                            this.bqS.configure(mediaFormat, null, null, 0);
                            return;
                        }
                        return;
                    } catch (Exception e2) {
                        return;
                    }
                }
            } catch (Exception e3) {
                i = 1;
                release();
                if (i != 0) {
                    this.bqS = MediaCodec.createDecoderByType(mediaFormat.getString("mime"));
                    this.bqS.configure(mediaFormat, null, null, 0);
                    return;
                }
                return;
            }
        }
        Log.i("Decoder", "decoderName :" + findDecoderForFormat);
        this.bqS = MediaCodec.createByCodecName(findDecoderForFormat);
        i = 1;
        this.bqS.configure(mediaFormat, null, null, 0);
    }

    private void bNH(ByteBuffer byteBuffer, BufferInfo bufferInfo) {
        C0065a c0065a = new C0065a();
        c0065a.data = byteBuffer.array();
        c0065a.brm = bufferInfo;
        this.bqV.add(c0065a);
        if (bufferInfo.size != 0) {
            this.bqX++;
        }
    }

    public void bNI(C0060d c0060d) {
        this.bqT = c0060d;
    }

    private void bNJ() {
        int dequeueInputBuffer = this.bqS.dequeueInputBuffer(100);
        if (dequeueInputBuffer >= 0) {
            C0065a c0065a = (C0065a) this.bqV.poll();
            ByteBuffer inputBuffer = this.bqS.getInputBuffer(dequeueInputBuffer);
            inputBuffer.clear();
            inputBuffer.put(c0065a.data);
            if (c0065a.brm.size >= 0 && (c0065a.brm.flags & 4) == 0) {
                this.bqS.queueInputBuffer(dequeueInputBuffer, 0, c0065a.brm.size, c0065a.brm.presentationTimeUs, 0);
                return;
            }
            Log.i("Decoder", "EOS recevied in fillInputBufferInner");
            this.bqS.queueInputBuffer(dequeueInputBuffer, 0, c0065a.brm.size, c0065a.brm.presentationTimeUs, 4);
            this.bqU = true;
        }
    }

    private void bNK(MediaCodec mediaCodec, boolean z) {
        while (true) {
            BufferInfo bufferInfo = new BufferInfo();
            int dequeueOutputBuffer = mediaCodec.dequeueOutputBuffer(bufferInfo, 0);
            if (!this.bqP) {
                if (dequeueOutputBuffer != -1) {
                    if (dequeueOutputBuffer == -2) {
                        MediaFormat outputFormat = mediaCodec.getOutputFormat();
                        this.bqR = outputFormat.getString("mime");
                        bNN(outputFormat);
                    } else if (dequeueOutputBuffer >= 0) {
                        boolean z2;
                        if (bufferInfo.presentationTimeUs >= this.bqZ) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z2 || this.bqY >= this.bqX) {
                            ByteBuffer wrap;
                            if (this.bra == null) {
                                byte[] bArr = new byte[bufferInfo.size];
                                mediaCodec.getOutputBuffer(dequeueOutputBuffer).get(bArr);
                                wrap = ByteBuffer.wrap(bArr);
                            } else {
                                Object obj = new byte[(((this.bra.bOK() * this.bra.bOL()) * 3) / 2)];
                                System.arraycopy(this.bra.bOM(mediaCodec.getOutputBuffer(dequeueOutputBuffer), bufferInfo), 0, obj, 0, ((this.bra.bOK() * this.bra.bOL()) * 3) / 2);
                                wrap = ByteBuffer.wrap(obj);
                                if (bufferInfo.size > 0) {
                                    bufferInfo.size = ((this.bra.bOK() * this.bra.bOL()) * 3) / 2;
                                }
                            }
                            if (wrap != null) {
                                if ((bufferInfo.flags & 2) != 0) {
                                    bufferInfo.size = 0;
                                }
                                bNM(wrap, bufferInfo);
                                this.bqY++;
                                mediaCodec.releaseOutputBuffer(dequeueOutputBuffer, false);
                                if ((bufferInfo.flags & 4) != 0) {
                                    break;
                                } else if (this.bqV.isEmpty() && this.bqY >= this.bqX && this.bqR.contains("video/")) {
                                    return;
                                }
                            }
                            Log.e("Decoder", "decodedData is null ");
                            throw new RuntimeException("encoderOutputBuffer " + dequeueOutputBuffer + " was null");
                        }
                        this.bqY++;
                        mediaCodec.getOutputBuffer(dequeueOutputBuffer);
                        mediaCodec.releaseOutputBuffer(dequeueOutputBuffer, false);
                    } else {
                        Log.w("Decoder", "unexpected result from decoder.dequeueOutputBuffer: " + dequeueOutputBuffer);
                    }
                } else if (!z && this.bqX > 0 && !this.bqV.isEmpty()) {
                    return;
                } else {
                    if (this.bqX == 0) {
                        return;
                    }
                }
            } else {
                return;
            }
        }
        if (z) {
            Log.d("Decoder", "end of stream reached");
        } else {
            Log.w("Decoder", "reached end of stream unexpectedly");
        }
        this.bqP = true;
        bNL();
    }

    private void bNL() {
        if (this.bqT != null) {
            this.bqT.aRO(this.bqR);
        }
    }

    private synchronized void bNM(ByteBuffer byteBuffer, BufferInfo bufferInfo) {
        if (this.bqT != null) {
            this.bqT.aRN(byteBuffer, bufferInfo, this.bqR);
        }
    }

    private void bNN(MediaFormat mediaFormat) {
        Log.i("Decoder", "notifyOutputFormatChanged format changed " + mediaFormat.toString());
        if (this.bqT != null) {
            this.bqT.aRP(mediaFormat);
        }
    }

    private void bNO() {
        try {
            if (this.bqS != null && !this.bqP) {
                bNJ();
                bNK(this.bqS, this.bqU);
            }
        } catch (IllegalStateException e) {
            byte[] bArr = new byte[1];
            BufferInfo bufferInfo = new BufferInfo();
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            bufferInfo.flags = 4;
            bufferInfo.size = 0;
            bNM(wrap, bufferInfo);
            this.bqP = true;
            this.bqV.clear();
        }
    }

    private void bNP() {
        while (!this.bqP) {
            if (this.bqV.isEmpty()) {
                Thread.yield();
                SystemClock.sleep(20);
            } else if (this.bqT.aRL(80)) {
                Thread.yield();
                SystemClock.sleep(10);
                synchronized (this.bqW) {
                    bNO();
                }
            } else {
                synchronized (this.bqW) {
                    bNO();
                }
            }
        }
    }

    public boolean bNQ(int i) {
        if (this.bqX < this.bqY + i) {
            return false;
        }
        return true;
    }

    public void bNR(ByteBuffer byteBuffer, BufferInfo bufferInfo) {
        byte[] bArr = new byte[bufferInfo.size];
        byteBuffer.get(bArr);
        bNH(ByteBuffer.wrap(bArr), bufferInfo);
    }

    public void start() {
        if (this.bqS != null) {
            this.bqS.start();
        }
        new C0064j().start();
    }

    public void release() {
        Log.d("Decoder", "releaseDecoder");
        this.bqP = true;
        if (this.bqS != null) {
            synchronized (this.bqW) {
                try {
                    this.bqS.stop();
                } catch (IllegalStateException e) {
                }
                this.bqS.release();
                this.bqS = null;
            }
        }
        this.bra = null;
        this.bqV.clear();
    }
}
