package p043u.aly;

public abstract class cU {
    public abstract int bYc(byte[] bArr, int i, int i2);

    public abstract void bYd(byte[] bArr, int i, int i2);

    public int bZe(byte[] bArr, int i, int i2) {
        int i3 = 0;
        while (i3 < i2) {
            int bYc = bYc(bArr, i + i3, i2 - i3);
            if (bYc > 0) {
                i3 += bYc;
            } else {
                throw new dx("Cannot read. Remote side has closed. Tried to read " + i2 + " bytes, but only got " + i3 + " bytes. (This is often indicative of an internal error on the server side. Please check your server logs.)");
            }
        }
        return i3;
    }

    public void m1165b(byte[] bArr) {
        bYd(bArr, 0, bArr.length);
    }

    public byte[] mo1031f() {
        return null;
    }

    public int mo1032g() {
        return 0;
    }

    public int mo1033h() {
        return -1;
    }

    public void mo1028a(int i) {
    }
}
