package cn.nubia.videogenerator.p006a;

import android.media.MediaFormat;

public class C0052a {
    private String bqi;
    private int bqj;
    private int bqk;
    private int bql;
    private int bqm;
    private int bqn;

    public C0052a() {
        bMM();
    }

    private void bMM() {
        this.bqi = "audio/mp4a-latm";
        this.bqj = 2;
        this.bqk = 128000;
        this.bql = 44100;
        this.bqn = 16;
        this.bqm = 1;
    }

    public void bMN(String str) {
        this.bqi = str;
    }

    public void bMO(int i) {
        this.bql = i;
    }

    public void bMP(int i) {
        this.bqm = i;
    }

    public void bMQ(int i) {
        this.bqn = i;
    }

    public void bMR(int i) {
        this.bqk = i;
    }

    public String bMS() {
        return this.bqi;
    }

    public int bMT() {
        return this.bqj;
    }

    public void bMU(int i) {
        this.bqj = i;
    }

    public int bMV() {
        return this.bql;
    }

    public int bMW() {
        return this.bqn;
    }

    public MediaFormat bMX() {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", this.bqi);
        if (this.bqi.equals("audio/mp4a-latm")) {
            mediaFormat.setInteger("aac-profile", 2);
        }
        mediaFormat.setInteger("bitrate", this.bqk);
        mediaFormat.setInteger("sample-rate", this.bql);
        mediaFormat.setInteger("channel-count", this.bqm);
        mediaFormat.setInteger("max-input-size", 16384);
        return mediaFormat;
    }
}
