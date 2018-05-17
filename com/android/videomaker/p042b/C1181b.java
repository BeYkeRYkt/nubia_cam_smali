package com.android.videomaker.p042b;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import cn.nubia.videogenerator.p006a.C0052a;
import cn.nubia.videogenerator.p006a.C0053b;
import cn.nubia.videogenerator.p006a.C0059e;
import cn.nubia.videogenerator.p006a.C0061f;
import cn.nubia.videogenerator.p008c.C0075a;
import com.p010a.C0090a;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;

public class C1181b {
    private int awS = 0;
    private BufferInfo awT;
    private MediaFormat awU = null;
    private C0061f awV;
    private C1184e awW;
    private MediaExtractor awX = null;
    private String awY = null;
    private ArrayList awZ;
    private long axa = 0;
    private Handler axb = new C1185f(this, Looper.getMainLooper());
    private ArrayList axc = null;
    private boolean axd = false;
    private String axe = null;
    private C1182c axf = null;
    private C1183d axg = null;
    private String axh = null;
    private C0059e axi;
    private int axj = 44100;
    private long axk = 0;
    private int axl;
    private C0075a axm;
    private int mState = 0;

    public C1181b() {
        aKY("VideoGenerator CONSTRUCTOR ");
    }

    private void aKZ(int i, int i2, long j) {
        aKY("notifyMessage");
        Message message = new Message();
        message.what = i;
        message.arg1 = i2;
        this.axb.sendMessageDelayed(message, j);
    }

    public void aKK(String str) {
        if (this.axc == null) {
            this.axc = new ArrayList();
        }
        this.axc.add(str);
    }

    public int aKL() {
        if (this.axc == null) {
            return -1;
        }
        aKY("removeAllImageItems");
        this.axc.clear();
        this.axc = null;
        return 0;
    }

    public void aKI(C1182c c1182c) {
        this.axf = c1182c;
    }

    public void aLd(C1183d c1183d) {
        this.axg = c1183d;
    }

    private boolean aKX(int i) {
        return this.awZ != null && i < this.awZ.size();
    }

    private boolean aKW(int i) {
        return i == 0 ? aKV() : false;
    }

    private boolean aKV() {
        if (this.awY == null || this.awZ != null) {
            return this.awZ != null && this.awZ.size() <= 1;
        } else {
            return true;
        }
    }

    private synchronized void aLe(int i) {
        if (this.axg != null) {
            this.axg.aLm(this, i);
        }
    }

    private int aKT(MediaFormat mediaFormat) {
        int integer = mediaFormat.getInteger("bitrate", 12800);
        if (integer <= 0) {
            return 12800;
        }
        return integer;
    }

    private MediaFormat aLb(String str) {
        aKY("prepareAudioInput filename:" + str);
        if (this.awX != null) {
            this.awX.release();
        }
        if (this.awX == null) {
            this.awT = new BufferInfo();
        }
        this.awX = new MediaExtractor();
        this.awX.setDataSource(str);
        if (this.awX.getTrackCount() < 0) {
            return null;
        }
        this.awX.selectTrack(0);
        MediaFormat trackFormat = this.awX.getTrackFormat(0);
        this.axe = trackFormat.getString("mime");
        aKY("prepareAudioInput  audioFormat: " + trackFormat.toString());
        this.awS = aKT(trackFormat);
        this.awX.seekTo(0, 0);
        C0090a.m1e("VideoGenerator", "prepareAudioInput  audioBitRate: " + this.awS);
        return trackFormat;
    }

    public void aLc() {
        ByteBuffer allocate = ByteBuffer.allocate(20480);
        this.axm.aRP(this.awU);
        while (this.axm != null) {
            if (this.axm.aRM()) {
                break;
            }
        }
        C0090a.m1e("VideoGenerator", "readAudioDirect  start: ");
        int i = 0;
        long j = 0;
        while (true) {
            if (aKW(i) || aKX(i)) {
                if (this.awX != null && i <= 0) {
                    if (this.axa != 0 && i == 0) {
                    }
                    while (!Thread.interrupted() && !this.axd) {
                        this.awT.offset = 100;
                        this.awT.size = this.awX.readSampleData(allocate, 100);
                        this.awT.presentationTimeUs = this.axa + this.awX.getSampleTime();
                        if (this.awT.presentationTimeUs >= this.axk) {
                            this.awT.size = 0;
                            i = this.awZ.size();
                            if (this.axm != null) {
                                this.axm.aRO(this.axe);
                            }
                        } else if (this.awT.size >= 0) {
                            this.axa = j;
                            if (this.awZ != null && i + 1 == this.awZ.size()) {
                                i = -1;
                            }
                        } else {
                            j = this.awT.presentationTimeUs;
                            if (this.axm != null) {
                                this.axm.aRN(allocate, this.awT, this.axe);
                            }
                            if (this.awX != null) {
                                this.awX.advance();
                            }
                        }
                    }
                    i++;
                }
                if (!(Thread.interrupted() || this.axd)) {
                    try {
                        aLb((String) this.awZ.get(i));
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                while (!Thread.interrupted()) {
                    this.awT.offset = 100;
                    this.awT.size = this.awX.readSampleData(allocate, 100);
                    this.awT.presentationTimeUs = this.axa + this.awX.getSampleTime();
                    if (this.awT.presentationTimeUs >= this.axk) {
                        this.awT.size = 0;
                        i = this.awZ.size();
                        if (this.axm != null) {
                            this.axm.aRO(this.axe);
                        }
                    } else if (this.awT.size >= 0) {
                        j = this.awT.presentationTimeUs;
                        if (this.axm != null) {
                            this.axm.aRN(allocate, this.awT, this.axe);
                        }
                        if (this.awX != null) {
                            this.awX.advance();
                        }
                    } else {
                        this.axa = j;
                        i = -1;
                    }
                }
                i++;
            } else {
                return;
            }
        }
    }

    private boolean aKU() {
        return this.awY == null && this.awZ == null;
    }

    public void aKJ(String str, int i, C1183d c1183d) {
        if (str != null) {
            int width;
            int height;
            this.axl = i;
            this.axh = str;
            aKR();
            File file = new File(str);
            C0090a.m0d("VideoGenerator", "filename: " + file.getAbsolutePath() + "fps = " + this.axl + "videoduration:" + this.axk);
            aLd(c1183d);
            C0053b c0053b = new C0053b();
            if (this.axc != null) {
                Bitmap decodeFile = BitmapFactory.decodeFile((String) this.axc.get(0), new Options());
                if (decodeFile != null) {
                    width = decodeFile.getWidth();
                    height = decodeFile.getHeight();
                    if (width <= height) {
                        c0053b.bNj(640, 480);
                    } else {
                        c0053b.bNj(480, 640);
                    }
                    c0053b.bNb(this.axl);
                    this.axi = new C0059e();
                    this.axi.bNT(this.axc);
                    this.axm = new C0075a(this.axk);
                    this.axm.bOT(c0053b);
                    if (!aKU()) {
                        C0090a.m1e("chenpeng", "mAudioPath=" + this.awY + " " + this.awZ);
                        if (this.awY == null) {
                            this.axm.bOR(this.awY);
                            this.axm.bOU(new C0052a());
                            this.awV = new C0061f();
                            this.axm.bOX(this.awV);
                            this.axm.bOY(this.awV);
                        } else {
                            this.axm.bOU(null);
                        }
                    }
                    this.axm.bOQ(file.getAbsolutePath());
                    this.axm.bOW(this.axi);
                    this.axm.bOZ(new C1186g(this));
                    this.axm.bPa(new C1187h(this));
                    this.axm.bPb(this.axk);
                    this.axm.bOS();
                    if (!(this.awZ == null || this.axd)) {
                        this.awW = new C1184e();
                        this.awW.start();
                    }
                    if (this.axd) {
                        this.mState = 2;
                    } else {
                        this.mState = 0;
                    }
                }
            }
            height = 480;
            width = 640;
            if (width <= height) {
                c0053b.bNj(480, 640);
            } else {
                c0053b.bNj(640, 480);
            }
            c0053b.bNb(this.axl);
            this.axi = new C0059e();
            this.axi.bNT(this.axc);
            this.axm = new C0075a(this.axk);
            try {
                this.axm.bOT(c0053b);
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
                C0090a.m1e("VideoGenerator", "video do not support");
            }
            try {
                if (aKU()) {
                    C0090a.m1e("chenpeng", "mAudioPath=" + this.awY + " " + this.awZ);
                    if (this.awY == null) {
                        this.axm.bOU(null);
                    } else {
                        this.axm.bOR(this.awY);
                        this.axm.bOU(new C0052a());
                        this.awV = new C0061f();
                        this.axm.bOX(this.awV);
                        this.axm.bOY(this.awV);
                    }
                }
                this.axm.bOQ(file.getAbsolutePath());
            } catch (IOException e2) {
                e2.printStackTrace();
            } catch (IllegalArgumentException e3) {
                e3.printStackTrace();
                C0090a.m1e("VideoGenerator", "audio do not support");
            }
            this.axm.bOW(this.axi);
            this.axm.bOZ(new C1186g(this));
            this.axm.bPa(new C1187h(this));
            this.axm.bPb(this.axk);
            this.axm.bOS();
            this.awW = new C1184e();
            this.awW.start();
            if (this.axd) {
                this.mState = 2;
            } else {
                this.mState = 0;
            }
        }
    }

    public void aLa(int i) {
        C0090a.bvm("VideoGenerator", " generate Movie end");
        this.mState = 4;
        aKH();
        if (this.axf != null) {
            this.axf.aLl(this, i);
        }
    }

    public void aKQ(String str) {
        C0090a.bvm("VideoGenerator", "cancelExport ");
        if (this.mState == 2) {
            this.axd = true;
            this.mState = 3;
            try {
                if (this.axi != null) {
                    this.axi.stop();
                }
                if (this.awW != null) {
                    this.awW.join();
                }
                if (this.axm != null) {
                    this.axm.stop();
                }
                aKH();
                try {
                    if (this.awZ != null) {
                        this.awU = aLb((String) this.awZ.get(0));
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
                new File(str).delete();
            } catch (Exception e2) {
                e2.printStackTrace();
                aKH();
                try {
                    if (this.awZ != null) {
                        this.awU = aLb((String) this.awZ.get(0));
                    }
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
                new File(str).delete();
            } catch (Throwable th) {
                Throwable th2 = th;
                aKH();
                try {
                    if (this.awZ != null) {
                        this.awU = aLb((String) this.awZ.get(0));
                    }
                } catch (IOException e32) {
                    e32.printStackTrace();
                }
                new File(str).delete();
            }
        }
    }

    private void aKS() {
        if (this.awZ != null) {
            C0090a.m1e("woo", "clearAudioPathList");
            this.awZ.clear();
            this.awZ = null;
        }
    }

    public void aKM(String str) {
        this.awY = str;
    }

    public void aKN(ArrayList arrayList) {
        C0090a.m1e("woo", "AddAudioTraqck audioList: size: " + arrayList.size());
        if (arrayList != null && arrayList.size() > 0) {
            this.awY = null;
            this.awZ = arrayList;
            try {
                this.awU = aLb((String) this.awZ.get(0));
            } catch (IOException e) {
                aKP(this.awZ);
                throw e;
            }
        }
    }

    public void aKO() {
        if (this.awY != null) {
            this.awY = null;
        }
    }

    public void aKP(ArrayList arrayList) {
        if (this.awZ != null && this.awZ.size() > 0) {
            aKS();
        }
    }

    private void aKR() {
        this.axk = (((long) this.axc.size()) * 1000000) / ((long) this.axl);
    }

    public int aKG() {
        return this.mState;
    }

    public void aKH() {
        C0090a.bvm("VideoGenerator", "************releaseGenerator*************");
        if (this.awX != null) {
            this.awX.release();
            this.awX = null;
        }
        if (this.axm != null) {
            this.axm = null;
        }
        if (this.axi != null) {
            this.axi = null;
        }
        if (this.awV != null) {
            this.awV = null;
        }
        this.axa = 0;
        this.axd = false;
        this.mState = 0;
    }

    private void aKY(String str) {
        C0090a.m0d("VideoGenerator", str);
    }
}
