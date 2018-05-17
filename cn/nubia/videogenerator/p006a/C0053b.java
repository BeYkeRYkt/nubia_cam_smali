package cn.nubia.videogenerator.p006a;

import android.media.MediaFormat;
import android.util.Log;

public class C0053b {
    private String bqo;
    private boolean bqp;
    private boolean bqq;
    private int bqr;
    private int bqs;
    private int bqt;
    private int bqu;
    private int bqv;
    private int bqw;

    public C0053b() {
        bMY();
    }

    private void bMY() {
        this.bqo = "video/avc";
        this.bqu = 2130708361;
        this.bqs = 640;
        this.bqt = 480;
        this.bqv = 4194304;
        this.bqr = 5;
        this.bqw = 1;
        this.bqp = false;
        this.bqq = false;
    }

    public boolean bMZ() {
        return this.bqp;
    }

    public boolean bNa() {
        return this.bqq;
    }

    public void bNb(int i) {
        this.bqr = i;
    }

    public int bNc() {
        return this.bqr;
    }

    public void bNd(int i) {
        this.bqv = i;
    }

    public void bNe(int i) {
        this.bqw = i;
    }

    public void bNf(String str) {
        this.bqo = str;
    }

    public String bNg() {
        return this.bqo;
    }

    public int bNh() {
        return this.bqs;
    }

    public int bNi() {
        return this.bqt;
    }

    public void bNj(int i, int i2) {
        Log.i("woo", "setSize width: " + i + " height: " + i2);
        this.bqs = i;
        this.bqt = i2;
    }

    public int bNk() {
        return this.bqu;
    }

    public void bNl(int i) {
        this.bqu = i;
    }

    public MediaFormat bNm() {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", this.bqo);
        mediaFormat.setInteger("width", this.bqs);
        mediaFormat.setInteger("stride", this.bqs);
        mediaFormat.setInteger("height", this.bqt);
        mediaFormat.setInteger("slice-height", this.bqt);
        Log.d("woo", "getMediaFormat   mWidth: " + this.bqs + " mHeight: " + this.bqt + " colorFormat: " + this.bqu);
        mediaFormat.setInteger("bitrate", this.bqv);
        mediaFormat.setInteger("frame-rate", this.bqr);
        mediaFormat.setInteger("color-format", this.bqu);
        mediaFormat.setInteger("i-frame-interval", this.bqw);
        return mediaFormat;
    }
}
