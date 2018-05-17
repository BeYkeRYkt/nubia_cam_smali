package cn.nubia.videogenerator.p009d;

import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.util.Log;
import cn.nubia.videogenerator.p007b.C0065a;
import cn.nubia.videogenerator.p007b.C0066b;
import cn.nubia.videogenerator.p007b.C0067c;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;

public class C0078a {
    private long bsA = 0;
    private Object bsB = new Object();
    private ConcurrentLinkedQueue bsC;
    private MediaMuxer bsp;
    private int bsq = 0;
    private long bsr = 0;
    private long bss = 0;
    private AtomicBoolean bst = new AtomicBoolean(false);
    private String bsu = null;
    private HashMap bsv = new HashMap();
    private C0066b bsw;
    private C0067c bsx;
    private int bsy = 0;
    private long bsz = 0;

    public C0078a(String str, int i) {
        this.bsu = str;
        this.bsC = new ConcurrentLinkedQueue();
        this.bsp = new MediaMuxer(str, i);
    }

    public void setOrientation(int i) {
        synchronized (this.bsB) {
            this.bsp.setOrientationHint(i);
        }
    }

    public void bPh(int i) {
        this.bsq = i;
    }

    public void bPi(ByteBuffer byteBuffer, BufferInfo bufferInfo, String str) {
        bPm(byteBuffer, bufferInfo, str);
    }

    public void bPj(MediaFormat mediaFormat) {
        bPl(mediaFormat);
    }

    public boolean bPk() {
        return this.bst.get();
    }

    private void bPl(MediaFormat mediaFormat) {
        if (this.bst.get()) {
            Log.e("MuxerWriter", "Muxer has started , MediaFormat should not change");
            throw new RuntimeException("MediaFormat changed after MediaMuxer started");
        } else if (mediaFormat != null && this.bsp != null) {
            synchronized (this.bsB) {
                this.bsv.put(mediaFormat.getString("mime"), Integer.valueOf(this.bsp.addTrack(mediaFormat)));
                if (this.bsv.size() >= this.bsq) {
                    Log.d("MuxerWriter", "all tracks have added, start Muxer");
                    this.bsp.start();
                    this.bst.set(true);
                }
                while (!this.bsC.isEmpty()) {
                    C0065a c0065a = (C0065a) this.bsC.poll();
                    Log.d("MuxerWriter", "chenpeng1 = " + c0065a.brm.offset + "," + c0065a.brm.size + "," + c0065a.brm.presentationTimeUs);
                    bPm(ByteBuffer.wrap(c0065a.data), c0065a.brm, c0065a.bro);
                }
            }
        }
    }

    private void bPm(ByteBuffer byteBuffer, BufferInfo bufferInfo, String str) {
        if (this.bst.get()) {
            bPn(bufferInfo.presentationTimeUs, str);
            synchronized (this.bsB) {
                if (this.bsp != null) {
                    this.bsp.writeSampleData(((Integer) this.bsv.get(str)).intValue(), byteBuffer, bufferInfo);
                }
            }
            return;
        }
        Log.e("MuxerWriter", "Muxer hasn't started!");
        C0065a c0065a = new C0065a();
        c0065a.data = byteBuffer.array();
        c0065a.brm = bufferInfo;
        c0065a.bro = str;
        Log.d("MuxerWriter", "chenpeng0 = " + c0065a.brm.offset + "," + c0065a.brm.size + "," + c0065a.brm.presentationTimeUs);
        this.bsC.add(c0065a);
    }

    private void bPn(long j, String str) {
        Object obj = null;
        if (this.bsz <= 0) {
            obj = 1;
        }
        if (obj == null) {
            if (str.contains("video/")) {
                this.bss = j;
            } else if (str.contains("audio/")) {
                this.bsr = j;
            }
            this.bsA = ((this.bss + this.bsr) * 100) / (this.bsz * ((long) this.bsq));
            bPo(this.bsA);
        }
    }

    private void bPo(long j) {
        if (this.bsx != null) {
            this.bsx.aLo(j);
        }
    }

    public void bPp(String str) {
        int i = this.bsy + 1;
        this.bsy = i;
        if (i >= this.bsq) {
            Log.i("MuxerWriter", "onOutputComplete");
            if ((this.bsz <= 0 ? 1 : null) == null) {
                bPo(100);
            }
            if (this.bsw != null) {
                this.bsw.aLn();
            }
        }
    }

    public void stop() {
        Log.e("MuxerWriter", "stop");
        if (this.bsp != null) {
            if (this.bst.get()) {
                try {
                    synchronized (this.bsB) {
                        this.bsp.stop();
                    }
                } catch (IllegalStateException e) {
                    e.printStackTrace();
                }
                this.bst.set(false);
            }
            release();
        }
    }

    public void release() {
        try {
            synchronized (this.bsB) {
                if (this.bsp != null) {
                    this.bsp.release();
                }
            }
            this.bsp = null;
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }

    public void bPq(C0066b c0066b) {
        this.bsw = c0066b;
    }

    public void bPr(C0067c c0067c) {
        this.bsx = c0067c;
    }

    public void bPs(long j) {
        this.bsz = j;
    }
}
