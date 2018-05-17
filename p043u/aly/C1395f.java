package p043u.aly;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

public class C1395f extends dl {
    private static final aP btC = new aP();
    protected boolean btD = false;
    protected boolean btE = false;
    private byte[] btF = new byte[2];
    private byte[] btG = new byte[4];
    private byte[] btH = new byte[8];
    private byte[] btI = new byte[1];
    private byte[] btJ = new byte[2];
    private byte[] btK = new byte[4];
    private byte[] btL = new byte[8];
    protected boolean f995d = true;
    protected int f996e;
    private byte[] f997i = new byte[1];

    public C1395f(cU cUVar, boolean z, boolean z2) {
        super(cUVar);
        this.btD = z;
        this.f995d = z2;
    }

    public void bQO(aP aPVar) {
    }

    public void mo975b() {
    }

    public void bQP(cB cBVar) {
        bQS(cBVar.f935b);
        bQT(cBVar.f936c);
    }

    public void mo997c() {
    }

    public void mo998d() {
        bQS((byte) 0);
    }

    public void bQQ(dh dhVar) {
        bQS(dhVar.f984a);
        bQS(dhVar.f985b);
        mo971a(dhVar.f986c);
    }

    public void mo999e() {
    }

    public void bQR(bP bPVar) {
        bQS(bPVar.f799a);
        mo971a(bPVar.f800b);
    }

    public void mo1000f() {
    }

    public void mo974a(boolean z) {
        byte b = (byte) 0;
        if (z) {
            b = (byte) 1;
        }
        bQS(b);
    }

    public void bQS(byte b) {
        this.f997i[0] = (byte) b;
        this.bAU.bYd(this.f997i, 0, 1);
    }

    public void bQT(short s) {
        this.btF[0] = (byte) ((byte) ((s >> 8) & 255));
        this.btF[1] = (byte) ((byte) (s & 255));
        this.bAU.bYd(this.btF, 0, 2);
    }

    public void mo971a(int i) {
        this.btG[0] = (byte) ((byte) ((i >> 24) & 255));
        this.btG[1] = (byte) ((byte) ((i >> 16) & 255));
        this.btG[2] = (byte) ((byte) ((i >> 8) & 255));
        this.btG[3] = (byte) ((byte) (i & 255));
        this.bAU.bYd(this.btG, 0, 4);
    }

    public void mo972a(long j) {
        this.btH[0] = (byte) ((byte) ((int) ((j >> 56) & 255)));
        this.btH[1] = (byte) ((byte) ((int) ((j >> 48) & 255)));
        this.btH[2] = (byte) ((byte) ((int) ((j >> 40) & 255)));
        this.btH[3] = (byte) ((byte) ((int) ((j >> 32) & 255)));
        this.btH[4] = (byte) ((byte) ((int) ((j >> 24) & 255)));
        this.btH[5] = (byte) ((byte) ((int) ((j >> 16) & 255)));
        this.btH[6] = (byte) ((byte) ((int) ((j >> 8) & 255)));
        this.btH[7] = (byte) ((byte) ((int) (255 & j)));
        this.bAU.bYd(this.btH, 0, 8);
    }

    public void bQU(double d) {
        mo972a(Double.doubleToLongBits(d));
    }

    public void mo973a(String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            mo971a(bytes.length);
            this.bAU.bYd(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException e) {
            throw new cp("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    public void bQV(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit() - byteBuffer.position();
        mo971a(limit);
        this.bAU.bYd(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), limit);
    }

    public aP mo1001j() {
        return btC;
    }

    public void mo1002k() {
    }

    public cB mo1003l() {
        short s = (short) 0;
        byte bRc = bRc();
        if (bRc != (byte) 0) {
            s = bRd();
        }
        return new cB("", bRc, s);
    }

    public void mo1004m() {
    }

    public dh mo1005n() {
        return new dh(bRc(), bRc(), bRe());
    }

    public void bQW() {
    }

    public bP bQX() {
        return new bP(bRc(), bRe());
    }

    public void bQY() {
    }

    public C1402m bQZ() {
        return new C1402m(bRc(), bRe());
    }

    public void bRa() {
    }

    public boolean bRb() {
        return bRc() == (byte) 1;
    }

    public byte bRc() {
        if (this.bAU.mo1033h() < 1) {
            bRk(this.btI, 0, 1);
            return this.btI[0];
        }
        byte b = this.bAU.mo1031f()[this.bAU.mo1032g()];
        this.bAU.mo1028a(1);
        return b;
    }

    public short bRd() {
        int i = 0;
        byte[] bArr = this.btJ;
        if (this.bAU.mo1033h() < 2) {
            bRk(this.btJ, 0, 2);
        } else {
            bArr = this.bAU.mo1031f();
            i = this.bAU.mo1032g();
            this.bAU.mo1028a(2);
        }
        return (short) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    public int bRe() {
        int i = 0;
        byte[] bArr = this.btK;
        if (this.bAU.mo1033h() < 4) {
            bRk(this.btK, 0, 4);
        } else {
            bArr = this.bAU.mo1031f();
            i = this.bAU.mo1032g();
            this.bAU.mo1028a(4);
        }
        return (bArr[i + 3] & 255) | ((((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16)) | ((bArr[i + 2] & 255) << 8));
    }

    public long bRf() {
        int i = 0;
        byte[] bArr = this.btL;
        if (this.bAU.mo1033h() < 8) {
            bRk(this.btL, 0, 8);
        } else {
            bArr = this.bAU.mo1031f();
            i = this.bAU.mo1032g();
            this.bAU.mo1028a(8);
        }
        return ((long) (bArr[i + 7] & 255)) | (((((((((long) (bArr[i] & 255)) << 56) | (((long) (bArr[i + 1] & 255)) << 48)) | (((long) (bArr[i + 2] & 255)) << 40)) | (((long) (bArr[i + 3] & 255)) << 32)) | (((long) (bArr[i + 4] & 255)) << 24)) | (((long) (bArr[i + 5] & 255)) << 16)) | (((long) (bArr[i + 6] & 255)) << 8));
    }

    public double bRg() {
        return Double.longBitsToDouble(bRf());
    }

    public String bRh() {
        int bRe = bRe();
        if (this.bAU.mo1033h() < bRe) {
            return bRi(bRe);
        }
        try {
            String str = new String(this.bAU.mo1031f(), this.bAU.mo1032g(), bRe, "UTF-8");
            this.bAU.mo1028a(bRe);
            return str;
        } catch (UnsupportedEncodingException e) {
            throw new cp("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    public String bRi(int i) {
        try {
            bRm(i);
            byte[] bArr = new byte[i];
            this.bAU.bZe(bArr, 0, i);
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new cp("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    public ByteBuffer bRj() {
        int bRe = bRe();
        bRm(bRe);
        if (this.bAU.mo1033h() < bRe) {
            byte[] bArr = new byte[bRe];
            this.bAU.bZe(bArr, 0, bRe);
            return ByteBuffer.wrap(bArr);
        }
        ByteBuffer wrap = ByteBuffer.wrap(this.bAU.mo1031f(), this.bAU.mo1032g(), bRe);
        this.bAU.mo1028a(bRe);
        return wrap;
    }

    private int bRk(byte[] bArr, int i, int i2) {
        bRm(i2);
        return this.bAU.bZe(bArr, i, i2);
    }

    public void bRl(int i) {
        this.f996e = i;
        this.btE = true;
    }

    protected void bRm(int i) {
        if (i < 0) {
            throw new dj("Negative length: " + i);
        } else if (this.btE) {
            this.f996e -= i;
            if (this.f996e < 0) {
                throw new dj("Message length exceeded: " + i);
            }
        }
    }
}
