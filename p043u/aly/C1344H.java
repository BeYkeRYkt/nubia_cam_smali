package p043u.aly;

import com.umeng.analytics.ReportPolicy;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

public class C1344H extends dl {
    private static final aP bvd = new aP("");
    private static final cB bve = new cB("", (byte) 0, (short) 0);
    private static final byte[] bvf = new byte[16];
    byte[] f653a = new byte[5];
    byte[] f654b = new byte[10];
    private bY bvg = new bY(15);
    private cB bvh = null;
    private Boolean bvi = null;
    private final long bvj;
    private byte[] bvk = new byte[1];
    byte[] f655c = new byte[1];
    private short f656n = (short) 0;

    static {
        bvf[0] = (byte) 0;
        bvf[2] = (byte) 1;
        bvf[3] = (byte) 3;
        bvf[6] = (byte) 4;
        bvf[8] = (byte) 5;
        bvf[10] = (byte) 6;
        bvf[4] = (byte) 7;
        bvf[11] = (byte) 8;
        bvf[15] = (byte) 9;
        bvf[14] = (byte) 10;
        bvf[13] = (byte) 11;
        bvf[12] = (byte) 12;
    }

    public C1344H(cU cUVar, long j) {
        super(cUVar);
        this.bvj = j;
    }

    public void bSw() {
        this.bvg.m972c();
        this.f656n = (short) 0;
    }

    public void bQO(aP aPVar) {
        this.bvg.bXO(this.f656n);
        this.f656n = (short) 0;
    }

    public void mo975b() {
        this.f656n = (short) this.bvg.m971a();
    }

    public void bQP(cB cBVar) {
        if (cBVar.f935b != (byte) 2) {
            bSx(cBVar, (byte) -1);
        } else {
            this.bvh = cBVar;
        }
    }

    private void bSx(cB cBVar, byte b) {
        if (b == (byte) -1) {
            b = bSP(cBVar.f935b);
        }
        if (cBVar.f936c > this.f656n && cBVar.f936c - this.f656n <= 15) {
            bSG(((cBVar.f936c - this.f656n) << 4) | b);
        } else {
            bSF(b);
            bQT(cBVar.f936c);
        }
        this.f656n = (short) cBVar.f936c;
    }

    public void mo998d() {
        bSF((byte) 0);
    }

    public void bQQ(dh dhVar) {
        if (dhVar.f986c != 0) {
            bSA(dhVar.f986c);
            bSG((bSP(dhVar.f984a) << 4) | bSP(dhVar.f985b));
            return;
        }
        bSG(0);
    }

    public void bQR(bP bPVar) {
        bSz(bPVar.f799a, bPVar.f800b);
    }

    public void mo974a(boolean z) {
        byte b = (byte) 2;
        if (this.bvh == null) {
            if (z) {
                b = (byte) 1;
            }
            bSF(b);
            return;
        }
        cB cBVar = this.bvh;
        if (z) {
            b = (byte) 1;
        }
        bSx(cBVar, b);
        this.bvh = null;
    }

    public void bQS(byte b) {
        bSF(b);
    }

    public void bQT(short s) {
        bSA(bSD(s));
    }

    public void mo971a(int i) {
        bSA(bSD(i));
    }

    public void mo972a(long j) {
        bSB(bSC(j));
    }

    public void bQU(double d) {
        byte[] bArr = new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0};
        bSE(Double.doubleToLongBits(d), bArr, 0);
        this.bAU.m1165b(bArr);
    }

    public void mo973a(String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            bSy(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException e) {
            throw new cp("UTF-8 not supported!");
        }
    }

    public void bQV(ByteBuffer byteBuffer) {
        bSy(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), byteBuffer.limit() - byteBuffer.position());
    }

    private void bSy(byte[] bArr, int i, int i2) {
        bSA(i2);
        this.bAU.bYd(bArr, i, i2);
    }

    public void mo999e() {
    }

    public void mo1000f() {
    }

    public void mo997c() {
    }

    protected void bSz(byte b, int i) {
        if (i > 14) {
            bSG(bSP(b) | 240);
            bSA(i);
            return;
        }
        bSG((i << 4) | bSP(b));
    }

    private void bSA(int i) {
        int i2 = 0;
        while ((i & -128) != 0) {
            int i3 = i2 + 1;
            this.f653a[i2] = (byte) ((byte) ((i & 127) | 128));
            i >>>= 7;
            i2 = i3;
        }
        int i4 = i2 + 1;
        this.f653a[i2] = (byte) ((byte) i);
        this.bAU.bYd(this.f653a, 0, i4);
    }

    private void bSB(long j) {
        int i = 0;
        while ((-128 & j) != 0) {
            int i2 = i + 1;
            this.f654b[i] = (byte) ((byte) ((int) ((127 & j) | 128)));
            j >>>= 7;
            i = i2;
        }
        int i3 = i + 1;
        this.f654b[i] = (byte) ((byte) ((int) j));
        this.bAU.bYd(this.f654b, 0, i3);
    }

    private long bSC(long j) {
        return (j << 1) ^ (j >> 63);
    }

    private int bSD(int i) {
        return (i << 1) ^ (i >> 31);
    }

    private void bSE(long j, byte[] bArr, int i) {
        bArr[i + 0] = (byte) ((byte) ((int) (j & 255)));
        bArr[i + 1] = (byte) ((byte) ((int) ((j >> 8) & 255)));
        bArr[i + 2] = (byte) ((byte) ((int) ((j >> 16) & 255)));
        bArr[i + 3] = (byte) ((byte) ((int) ((j >> 24) & 255)));
        bArr[i + 4] = (byte) ((byte) ((int) ((j >> 32) & 255)));
        bArr[i + 5] = (byte) ((byte) ((int) ((j >> 40) & 255)));
        bArr[i + 6] = (byte) ((byte) ((int) ((j >> 48) & 255)));
        bArr[i + 7] = (byte) ((byte) ((int) ((j >> 56) & 255)));
    }

    private void bSF(byte b) {
        this.bvk[0] = (byte) b;
        this.bAU.m1165b(this.bvk);
    }

    private void bSG(int i) {
        bSF((byte) i);
    }

    public aP mo1001j() {
        this.bvg.bXO(this.f656n);
        this.f656n = (short) 0;
        return bvd;
    }

    public void mo1002k() {
        this.f656n = (short) this.bvg.m971a();
    }

    public cB mo1003l() {
        byte bRc = bRc();
        if (bRc == (byte) 0) {
            return bve;
        }
        short s = (short) ((bRc & 240) >> 4);
        if (s != (short) 0) {
            s = (short) (s + this.f656n);
        } else {
            s = bRd();
        }
        cB cBVar = new cB("", bSO((byte) (bRc & 15)), s);
        if (bSN(bRc)) {
            this.bvi = ((byte) (bRc & 15)) != (byte) 1 ? Boolean.FALSE : Boolean.TRUE;
        }
        this.f656n = (short) cBVar.f936c;
        return cBVar;
    }

    public dh mo1005n() {
        int i = 0;
        int bSJ = bSJ();
        if (bSJ != 0) {
            i = bRc();
        }
        return new dh(bSO((byte) (i >> 4)), bSO((byte) (i & 15)), bSJ);
    }

    public bP bQX() {
        byte bRc = bRc();
        int i = (bRc >> 4) & 15;
        if (i == 15) {
            i = bSJ();
        }
        return new bP(bSO(bRc), i);
    }

    public C1402m bQZ() {
        return new C1402m(bQX());
    }

    public boolean bRb() {
        boolean z = true;
        if (this.bvi == null) {
            if (bRc() != (byte) 1) {
                z = false;
            }
            return z;
        }
        z = this.bvi.booleanValue();
        this.bvi = null;
        return z;
    }

    public byte bRc() {
        if (this.bAU.mo1033h() <= 0) {
            this.bAU.bZe(this.f655c, 0, 1);
            return this.f655c[0];
        }
        byte b = this.bAU.mo1031f()[this.bAU.mo1032g()];
        this.bAU.mo1028a(1);
        return b;
    }

    public short bRd() {
        return (short) bSL(bSJ());
    }

    public int bRe() {
        return bSL(bSJ());
    }

    public long bRf() {
        return bSM(bSK());
    }

    public double bRg() {
        byte[] bArr = new byte[8];
        this.bAU.bZe(bArr, 0, 8);
        return Double.longBitsToDouble(m754a(bArr));
    }

    public String bRh() {
        int bSJ = bSJ();
        bSI(bSJ);
        if (bSJ == 0) {
            return "";
        }
        try {
            if (this.bAU.mo1033h() < bSJ) {
                return new String(bSH(bSJ), "UTF-8");
            }
            String str = new String(this.bAU.mo1031f(), this.bAU.mo1032g(), bSJ, "UTF-8");
            this.bAU.mo1028a(bSJ);
            return str;
        } catch (UnsupportedEncodingException e) {
            throw new cp("UTF-8 not supported!");
        }
    }

    public ByteBuffer bRj() {
        int bSJ = bSJ();
        bSI(bSJ);
        if (bSJ == 0) {
            return ByteBuffer.wrap(new byte[0]);
        }
        byte[] bArr = new byte[bSJ];
        this.bAU.bZe(bArr, 0, bSJ);
        return ByteBuffer.wrap(bArr);
    }

    private byte[] bSH(int i) {
        if (i == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i];
        this.bAU.bZe(bArr, 0, i);
        return bArr;
    }

    private void bSI(int i) {
        Object obj = null;
        if (i < 0) {
            throw new dj("Negative length: " + i);
        } else if (this.bvj != -1) {
            if (((long) i) <= this.bvj) {
                obj = 1;
            }
            if (obj == null) {
                throw new dj("Length exceeded max allowed: " + i);
            }
        }
    }

    public void mo1004m() {
    }

    public void bQW() {
    }

    public void bQY() {
    }

    public void bRa() {
    }

    private int bSJ() {
        int i = 0;
        int i2;
        if (this.bAU.mo1033h() < 5) {
            i2 = 0;
            while (true) {
                byte bRc = bRc();
                i2 |= (bRc & 127) << i;
                if ((bRc & 128) != 128) {
                    return i2;
                }
                i += 7;
            }
        } else {
            byte[] f = this.bAU.mo1031f();
            int g = this.bAU.mo1032g();
            i2 = 0;
            int i3 = 0;
            while (true) {
                byte b = f[g + i];
                i3 |= (b & 127) << i2;
                if ((b & 128) == 128) {
                    i2 += 7;
                    i++;
                } else {
                    this.bAU.mo1028a(i + 1);
                    return i3;
                }
            }
        }
    }

    private long bSK() {
        int i = 0;
        long j = 0;
        if (this.bAU.mo1033h() < 10) {
            while (true) {
                long j2;
                byte bRc = bRc();
                j |= ((long) (bRc & 127)) << j2;
                if ((bRc & 128) != 128) {
                    break;
                }
                j2 += 7;
            }
        } else {
            byte[] f = this.bAU.mo1031f();
            int g = this.bAU.mo1032g();
            long j3 = 0;
            while (true) {
                byte b = f[g + i];
                j |= ((long) (b & 127)) << j3;
                if ((b & 128) != 128) {
                    break;
                }
                j3 += 7;
                i++;
            }
            this.bAU.mo1028a(i + 1);
        }
        return j;
    }

    private int bSL(int i) {
        return (i >>> 1) ^ (-(i & 1));
    }

    private long bSM(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    private long m754a(byte[] bArr) {
        return ((((((((((long) bArr[7]) & 255) << 56) | ((((long) bArr[6]) & 255) << 48)) | ((((long) bArr[5]) & 255) << 40)) | ((((long) bArr[4]) & 255) << 32)) | ((((long) bArr[3]) & 255) << 24)) | ((((long) bArr[2]) & 255) << 16)) | ((((long) bArr[1]) & 255) << 8)) | (((long) bArr[0]) & 255);
    }

    private boolean bSN(byte b) {
        int i = b & 15;
        if (i == 1 || i == 2) {
            return true;
        }
        return false;
    }

    private byte bSO(byte b) {
        switch ((byte) (b & 15)) {
            case (byte) 0:
                return (byte) 0;
            case (byte) 1:
            case (byte) 2:
                return (byte) 2;
            case (byte) 3:
                return (byte) 3;
            case (byte) 4:
                return (byte) 6;
            case (byte) 5:
                return (byte) 8;
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                return (byte) 10;
            case (byte) 7:
                return (byte) 4;
            case (byte) 8:
                return (byte) 11;
            case (byte) 9:
                return (byte) 15;
            case (byte) 10:
                return (byte) 14;
            case (byte) 11:
                return (byte) 13;
            case (byte) 12:
                return (byte) 12;
            default:
                throw new dj("don't know what type: " + ((byte) (b & 15)));
        }
    }

    private byte bSP(byte b) {
        return bvf[b];
    }
}
