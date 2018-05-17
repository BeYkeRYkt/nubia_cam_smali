package cn.nubia.videogenerator.local;

import android.media.MediaFormat;
import android.util.Log;
import cn.nubia.videogenerator.p007b.C0057l;
import cn.nubia.videogenerator.p007b.C0060d;
import java.util.HashMap;

public class C0079a {
    private static final HashMap bsD = new AudioLocalSource$1();
    private MediaFormat bsE = null;
    private C0057l bsF;
    private String bsG;
    private String bsH;
    private C0080b bsI;
    private boolean bsJ = true;
    private boolean bsK = false;
    private C0060d bsL = null;
    private long bsM = 0;
    private long bsN = 0;
    private long bsO = -1;
    private long bsP = -1;
    private int bsQ = -1;
    private int bsR = 0;
    private int bsS = 44100;
    private long bsT = 0;
    private long bsU = 0;
    private long bsV = 0;

    public C0079a(String str, long j) {
        this.bsG = str;
        this.bsM = j;
        this.bsI = new C0080b(this);
        this.bsK = bPv();
    }

    public void bPt(C0057l c0057l, C0060d c0060d) {
        this.bsF = c0057l;
        this.bsL = c0060d;
    }

    public MediaFormat bPu() {
        return this.bsE;
    }

    public void start() {
        if (!(this.bsK || this.bsE == null)) {
            this.bsL.aRP(this.bsE);
        }
        new Thread(this.bsI, "AudioLocalSource").start();
    }

    public void stop() {
        this.bsJ = false;
    }

    public boolean bPv() {
        if (this.bsE == null) {
            return true;
        }
        this.bsH = this.bsE.getString("mime");
        Log.e("AudioLocalSource", "isNeedToDecoer mimetype:" + this.bsH);
        if (bsD.containsKey(this.bsH)) {
            return false;
        }
        return true;
    }
}
