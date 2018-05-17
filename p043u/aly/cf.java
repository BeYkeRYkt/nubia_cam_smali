package p043u.aly;

public final class cf extends cU {
    private byte[] f951a;
    private int f952b;
    private int f953c;

    public void m1184a(byte[] bArr) {
        bYb(bArr, 0, bArr.length);
    }

    public void bYb(byte[] bArr, int i, int i2) {
        this.f951a = bArr;
        this.f952b = i;
        this.f953c = i + i2;
    }

    public void m1185e() {
        this.f951a = null;
    }

    public int bYc(byte[] bArr, int i, int i2) {
        int h = mo1033h();
        if (i2 > h) {
            i2 = h;
        }
        if (i2 > 0) {
            System.arraycopy(this.f951a, this.f952b, bArr, i, i2);
            mo1028a(i2);
        }
        return i2;
    }

    public void bYd(byte[] bArr, int i, int i2) {
        throw new UnsupportedOperationException("No writing allowed!");
    }

    public byte[] mo1031f() {
        return this.f951a;
    }

    public int mo1032g() {
        return this.f952b;
    }

    public int mo1033h() {
        return this.f953c - this.f952b;
    }

    public void mo1028a(int i) {
        this.f952b += i;
    }
}
