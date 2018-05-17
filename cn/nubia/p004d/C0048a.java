package cn.nubia.p004d;

import android.util.Log;

public class C0048a {
    public static final int bsY = (("NUBIA".length() * 2) + 20);
    private static final String[] bsZ = new String[]{"type", "version", "reserved1", "reserved2", "datasize"};
    private byte[] bta;

    private C0048a() {
        this.bta = null;
        this.bta = new byte[bsY];
        this.bta[20] = (byte) 0;
        this.bta[21] = (byte) 78;
        this.bta[22] = (byte) 0;
        this.bta[23] = (byte) 85;
        this.bta[24] = (byte) 0;
        this.bta[25] = (byte) 66;
        this.bta[26] = (byte) 0;
        this.bta[27] = (byte) 73;
        this.bta[28] = (byte) 0;
        this.bta[29] = (byte) 65;
    }

    public static C0048a bPS() {
        return new C0048a();
    }

    public void bPT(int i, int i2) {
        if (i >= 0 && i <= 4) {
            this.bta[i * 4] = (byte) ((byte) ((i2 >> 24) & 255));
            this.bta[(i * 4) + 1] = (byte) ((byte) ((i2 >> 16) & 255));
            this.bta[(i * 4) + 2] = (byte) ((byte) ((i2 >> 8) & 255));
            this.bta[(i * 4) + 3] = (byte) ((byte) ((i2 >> 0) & 255));
            return;
        }
        Log.w("NubiaFileHeader", "Invalid KEY_ID:" + i);
    }

    public byte[] bPU() {
        return this.bta;
    }

    public void bPV() {
        for (int i = 0; i <= 4; i++) {
            Log.i("NubiaFileHeader", new StringBuilder(String.valueOf(bsZ[i])).append(":").append(C0048a.bPW(this.bta, i * 4)).toString());
        }
    }

    private static int bPW(byte[] bArr, int i) {
        return ((((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16)) | ((bArr[i + 2] & 255) << 8)) | (bArr[i + 3] & 255);
    }
}
