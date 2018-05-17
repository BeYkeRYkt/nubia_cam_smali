package cn.nubia.videogenerator.p008c;

import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import android.util.Log;
import cn.nubia.videogenerator.local.C0079a;
import cn.nubia.videogenerator.p006a.C0052a;
import cn.nubia.videogenerator.p006a.C0053b;
import cn.nubia.videogenerator.p006a.C0055c;
import cn.nubia.videogenerator.p006a.C0058d;
import cn.nubia.videogenerator.p006a.C0059e;
import cn.nubia.videogenerator.p006a.C0061f;
import cn.nubia.videogenerator.p007b.C0060d;
import cn.nubia.videogenerator.p007b.C0066b;
import cn.nubia.videogenerator.p007b.C0067c;
import cn.nubia.videogenerator.p009d.C0078a;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;

public class C0075a implements C0060d {
    private C0078a brW = null;
    private C0055c brX = null;
    private C0055c brY = null;
    private C0058d brZ = null;
    private C0079a bsa = null;
    private String bsb = null;
    private long bsc;
    private int bsd = 0;
    private C0066b bse;
    private C0067c bsf;
    private int bsg = 0;
    private long bsh = 0;
    private ArrayList bsi = new ArrayList();
    private Thread bsj = null;
    private Thread bsk = null;
    private String bsl = null;
    private C0059e bsm = null;

    public C0075a(long j) {
        this.bsh = j;
    }

    public void bOQ(String str) {
        this.bsb = str;
        this.brW = new C0078a(this.bsb, 0);
    }

    public void bOR(String str) {
        this.bsl = str;
    }

    public void bOS() {
        if (this.brW != null) {
            this.brW.bPh(this.bsd);
            this.brW.setOrientation(this.bsg);
            if ((this.bsc <= 0 ? 1 : null) == null) {
                this.brW.bPs(this.bsc);
            }
            this.brW.bPq(this.bse);
            this.brW.bPr(this.bsf);
        }
        if (this.brX != null) {
            this.brX.bNv(this);
        }
        if (this.brY != null) {
            this.brY.bNv(this);
        }
        this.bsj = new C0077c();
        this.bsj.start();
        this.bsk = new C0076b();
        this.bsk.start();
    }

    public void stop() {
        if (this.bsm != null) {
            this.bsm.stop();
            this.bsm = null;
        }
        if (this.bsa != null) {
            this.bsa.stop();
            this.bsa = null;
        }
        if (this.brZ != null) {
            this.brZ.release();
            this.brZ = null;
        }
        if (this.brY != null) {
            this.brY.release();
            this.brY = null;
        }
        if (this.brX != null) {
            this.brX.release();
            this.brX = null;
        }
        if (this.brW != null) {
            this.brW.stop();
            this.brW = null;
        }
    }

    public void bOT(C0053b c0053b) {
        if (this.brX == null) {
            try {
                this.brX = new C0055c(c0053b);
            } catch (IOException e) {
                this.brX = null;
                e.printStackTrace();
            }
            this.bsd++;
        }
    }

    public void bOU(C0052a c0052a) {
        try {
            if (this.bsl != null) {
                this.bsa = new C0079a(this.bsl, this.bsh);
            }
            if (this.bsa != null) {
                if (this.bsa.bPv()) {
                    this.brZ = new C0058d(this.bsa.bPu());
                    this.bsa.bPt(this.brZ, this);
                    c0052a.bMO(this.bsa.bPu().getInteger("sample-rate"));
                    c0052a.bMP(this.bsa.bPu().getInteger("channel-count"));
                    this.brY = new C0055c(c0052a);
                } else {
                    this.bsa.bPt(null, this);
                }
            }
            this.bsd++;
        } catch (IOException e) {
            bOV();
            e.printStackTrace();
        } catch (IllegalArgumentException e2) {
            bOV();
            e2.printStackTrace();
        }
    }

    private void bOV() {
        if (this.bsa != null) {
            this.bsa.stop();
            this.bsa = null;
        }
        if (this.brZ != null) {
            this.brZ.release();
            this.brZ = null;
        }
        if (this.brY != null) {
            this.brY.release();
            this.brY = null;
        }
    }

    public void bOW(C0059e c0059e) {
        this.bsm = c0059e;
        if (this.brX != null) {
            this.brX.bNp(c0059e);
        }
    }

    public void bOX(C0061f c0061f) {
        if (this.brZ != null && c0061f != null) {
            c0061f.bOe(this.brZ);
        }
    }

    public void bOY(C0061f c0061f) {
        if (this.brY != null && c0061f != null) {
            this.brY.bNo(c0061f);
        }
    }

    public void bOZ(C0066b c0066b) {
        this.bse = c0066b;
    }

    public void bPa(C0067c c0067c) {
        this.bsf = c0067c;
    }

    public void bPb(long j) {
        this.bsc = j;
    }

    public void aRP(MediaFormat mediaFormat) {
        if (this.bsi.isEmpty()) {
            this.bsi = new ArrayList(this.bsd);
        }
        Log.i("VideoMakerGenerator", " onOutputFormatChanged  format: " + mediaFormat.toString());
        if (!this.bsi.contains(mediaFormat) && this.brW != null) {
            this.bsi.add(mediaFormat);
            this.brW.bPj(mediaFormat);
        }
    }

    public void aRO(String str) {
        if (this.brW != null) {
            this.brW.bPp(str);
        }
    }

    public void aRN(ByteBuffer byteBuffer, BufferInfo bufferInfo, String str) {
        if (this.brW != null) {
            this.brW.bPi(byteBuffer, bufferInfo, str);
        }
    }

    public boolean aRM() {
        return this.brW.bPk();
    }

    public boolean aRL(int i) {
        return false;
    }
}
