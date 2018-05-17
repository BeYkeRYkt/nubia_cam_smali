package cn.nubia.bigAperture;

import android.util.Log;
import com.p010a.C0090a;
import java.io.File;

public class C0038n {
    private File bpd;
    private File bpe;
    private File bpf;
    private boolean bpg = false;
    private final boolean bph = Log.isLoggable("ApertureBackground", 3);
    private File bpi;
    private String bpj = null;

    public C0038n(String str) {
        this.bpj = str;
        this.bpg = bLQ(str);
    }

    public boolean bLI() {
        return this.bpg;
    }

    public File bLJ() {
        return this.bpe;
    }

    public File bLK() {
        return this.bpi;
    }

    public File bLN() {
        return this.bpd;
    }

    public File bLL() {
        return this.bpf;
    }

    public void bLM(byte[] bArr) {
        C0027c.bKv(this.bpj + "/depth.yuv", bArr);
        this.bpf = new File(this.bpj + "/depth.yuv");
    }

    public void bLO(byte[] bArr) {
        C0027c.bKv(this.bpj + "/0.jpg", bArr);
        this.bpd = new File(this.bpj + "/0.jpg");
    }

    public boolean bLQ(String str) {
        boolean z;
        File file = new File(str);
        long currentTimeMillis = System.currentTimeMillis();
        if (!file.exists()) {
            z = false;
        } else if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            int i = 0;
            while (i < listFiles.length) {
                if (listFiles[i] != null && listFiles[i].exists()) {
                    String absolutePath = listFiles[i].getAbsolutePath();
                    if (absolutePath.equals(str + "/0.yuv")) {
                        this.bpe = listFiles[i];
                    } else if (absolutePath.equals(str + "/2.yuv")) {
                        this.bpi = listFiles[i];
                    } else if (absolutePath.equals(str + "/0.jpg")) {
                        this.bpd = listFiles[i];
                    } else if (absolutePath.equals(str + "/depth.yuv")) {
                        this.bpf = listFiles[i];
                    }
                }
                i++;
            }
            z = true;
        } else {
            z = false;
        }
        bLP("parseBigApertureTmpFiles: " + (System.currentTimeMillis() - currentTimeMillis) + "ms");
        if (this.bpe != null && this.bpi != null && this.bpe.exists() && this.bpi.exists()) {
            return z;
        }
        C0090a.m1e("BigAperatureTempFiles", "To be care, color or mono yuv has been deleted");
        return false;
    }

    private void bLP(String str) {
        if (this.bph) {
            C0090a.m0d("BigAperatureTempFiles", str);
        }
    }
}
