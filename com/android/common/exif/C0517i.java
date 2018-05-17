package com.android.common.exif;

import com.android.p035d.C0774a;
import com.p010a.C0090a;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Map.Entry;
import java.util.TreeMap;

class C0517i {
    private static final short Bm = C0523o.BV(C0523o.Ci);
    private static final short Bn = C0523o.BV(C0523o.Cj);
    private static final short Bo = C0523o.BV(C0523o.Ck);
    private static final short Bp = C0523o.BV(C0523o.Cl);
    private static final short Bq = C0523o.BV(C0523o.Cm);
    private static final short Br = C0523o.BV(C0523o.Co);
    private static final short Bs = C0523o.BV(C0523o.Cn);
    private static final Charset Bt = Charset.forName("US-ASCII");
    private int BA;
    private C0518j BB;
    private final C0523o BC;
    private C0514f BD;
    private boolean BE;
    private int BF = 0;
    private int BG = 0;
    private final int BH;
    private C0514f BI;
    private C0514f BJ;
    private int BK;
    private final C0522n BL;
    private int Bu;
    private boolean Bv = false;
    private final TreeMap Bw = new TreeMap();
    private byte[] Bx;
    private int By;
    private int Bz = 0;

    private boolean Br(int i) {
        boolean z = true;
        switch (i) {
            case 0:
                if ((this.BH & 1) == 0) {
                    z = false;
                }
                return z;
            case 1:
                if ((this.BH & 2) == 0) {
                    z = false;
                }
                return z;
            case 2:
                if ((this.BH & 4) == 0) {
                    z = false;
                }
                return z;
            case 3:
                if ((this.BH & 16) == 0) {
                    z = false;
                }
                return z;
            case 4:
                if ((this.BH & 8) == 0) {
                    z = false;
                }
                return z;
            default:
                return false;
        }
    }

    private boolean Bs() {
        return (this.BH & 32) != 0;
    }

    private C0517i(InputStream inputStream, int i, C0523o c0523o) {
        if (inputStream == null) {
            throw new IOException("Null argument inputStream to ExifParser");
        }
        this.BC = c0523o;
        this.Bv = BG(inputStream);
        this.BL = new C0522n(inputStream);
        this.BH = i;
        if (this.Bv) {
            Bu();
            long BI = this.BL.BI();
            if (BI > 2147483647L) {
                throw new ExifInvalidFormatException("Invalid offset " + BI);
            }
            this.By = (int) BI;
            this.BA = 0;
            if (Br(0) || Bt()) {
                BE(0, BI);
                if (BI != 8) {
                    this.Bx = new byte[(((int) BI) - 8)];
                    read(this.Bx);
                }
            }
        }
    }

    protected static C0517i Be(InputStream inputStream, int i, C0523o c0523o) {
        return new C0517i(inputStream, i, c0523o);
    }

    protected static C0517i Bb(InputStream inputStream, C0523o c0523o) {
        return new C0517i(inputStream, 63, c0523o);
    }

    protected int Bf() {
        if (!this.Bv) {
            return 5;
        }
        int BJ = this.BL.BJ();
        int i = (this.Bz + 2) + (this.BF * 12);
        if (BJ < i) {
            this.BJ = Bz();
            if (this.BJ == null) {
                return Bf();
            }
            if (this.BE) {
                Bp(this.BJ);
            }
            return 1;
        }
        if (BJ == i) {
            long BA;
            if (this.BA == 0) {
                BA = BA();
                if ((Br(1) || Bs()) && BA != 0) {
                    BE(1, BA);
                }
            } else {
                if (this.Bw.size() > 0) {
                    BJ = ((Integer) this.Bw.firstEntry().getKey()).intValue() - this.BL.BJ();
                } else {
                    BJ = 4;
                }
                if (BJ < 4) {
                    C0090a.bvj("ExifParser", "Invalid size of link to next IFD: " + BJ);
                } else {
                    BA = BA();
                    if (BA != 0) {
                        C0090a.bvj("ExifParser", "Invalid link to next IFD: " + BA);
                    }
                }
            }
        }
        while (this.Bw.size() != 0) {
            Entry pollFirstEntry = this.Bw.pollFirstEntry();
            Object value = pollFirstEntry.getValue();
            try {
                BH(((Integer) pollFirstEntry.getKey()).intValue());
                if (value instanceof C0519k) {
                    this.BA = ((C0519k) value).BO;
                    this.BF = this.BL.BK();
                    this.Bz = ((Integer) pollFirstEntry.getKey()).intValue();
                    if (((this.BF * 12) + this.Bz) + 2 > this.Bu) {
                        C0090a.bvj("ExifParser", "Invalid size of IFD " + this.BA);
                        return 5;
                    }
                    this.BE = Bt();
                    if (((C0519k) value).BP) {
                        return 0;
                    }
                    Bh();
                } else if (value instanceof C0518j) {
                    this.BB = (C0518j) value;
                    return this.BB.BN;
                } else {
                    C0520l c0520l = (C0520l) value;
                    this.BJ = c0520l.BR;
                    if (this.BJ.Ac() != (short) 7) {
                        Bk(this.BJ);
                        Bp(this.BJ);
                    }
                    if (c0520l.BQ) {
                        return 2;
                    }
                }
            } catch (IOException e) {
                C0090a.bvj("ExifParser", "Failed to skip to data at: " + pollFirstEntry.getKey() + " for " + value.getClass().getName() + ", the file may be broken.");
            }
        }
        return 5;
    }

    protected void Bh() {
        int i = (this.BF * 12) + (this.Bz + 2);
        int BJ = this.BL.BJ();
        if (BJ <= i) {
            if (this.BE) {
                while (BJ < i) {
                    this.BJ = Bz();
                    BJ += 12;
                    if (this.BJ != null) {
                        Bp(this.BJ);
                    }
                }
            } else {
                BH(i);
            }
            long BA = BA();
            if (this.BA == 0 && ((Br(1) || Bs()) && BA > 0)) {
                BE(1, BA);
            }
        }
    }

    private boolean Bt() {
        boolean z = true;
        switch (this.BA) {
            case 0:
                if (!(Br(2) || Br(4) || Br(3))) {
                    z = Br(1);
                }
                return z;
            case 1:
                return Bs();
            case 2:
                return Br(3);
            default:
                return false;
        }
    }

    protected C0514f Bi() {
        return this.BJ;
    }

    protected int Bg() {
        return this.BA;
    }

    protected int Bn() {
        return this.BB.BM;
    }

    protected int Bm() {
        if (this.BI == null) {
            return 0;
        }
        return (int) this.BI.Af(0);
    }

    protected int Bl() {
        if (this.BD == null) {
            return 0;
        }
        return (int) this.BD.Af(0);
    }

    private void BH(int i) {
        this.BL.BL((long) i);
        while (!this.Bw.isEmpty() && ((Integer) this.Bw.firstKey()).intValue() < i) {
            this.Bw.pollFirstEntry();
        }
    }

    protected void Bj(C0514f c0514f) {
        if (c0514f.Ad() >= this.BL.BJ()) {
            this.Bw.put(Integer.valueOf(c0514f.Ad()), new C0520l(c0514f, true));
        }
    }

    private void BE(int i, long j) {
        this.Bw.put(Integer.valueOf((int) j), new C0519k(i, Br(i)));
    }

    private void BD(long j) {
        this.Bw.put(Integer.valueOf((int) j), new C0518j(3));
    }

    private void BF(int i, long j) {
        this.Bw.put(Integer.valueOf((int) j), new C0518j(4, i));
    }

    private C0514f Bz() {
        boolean z = true;
        short BM = this.BL.BM();
        short BM2 = this.BL.BM();
        long BI = this.BL.BI();
        if (BI > 2147483647L) {
            throw new ExifInvalidFormatException("Number of component is larger then Integer.MAX_VALUE");
        } else if (C0514f.AF(BM2)) {
            int i = (int) BI;
            int i2 = this.BA;
            if (((int) BI) == 0) {
                z = false;
            }
            C0514f c0514f = new C0514f(BM, BM2, i, i2, z);
            int Am = c0514f.Am();
            if (Am > 4) {
                long BI2 = this.BL.BI();
                if (BI2 > 2147483647L) {
                    throw new ExifInvalidFormatException("offset is larger then Integer.MAX_VALUE");
                } else if (BI2 >= ((long) this.By) || BM2 != (short) 7) {
                    c0514f.An((int) BI2);
                } else {
                    byte[] bArr = new byte[((int) BI)];
                    C0774a.boG(this.Bx, ((int) BI2) - 8, bArr, 0, (int) BI);
                    c0514f.AN(bArr);
                }
            } else {
                boolean AD = c0514f.AD();
                c0514f.AG(false);
                Bk(c0514f);
                c0514f.AG(AD);
                this.BL.skip((long) (4 - Am));
                c0514f.An(this.BL.BJ() - 4);
            }
            return c0514f;
        } else {
            C0090a.bvj("ExifParser", String.format("Tag %04x: Invalid data type %d", new Object[]{Short.valueOf(BM), Short.valueOf(BM2)}));
            this.BL.skip(4);
            return null;
        }
    }

    private void Bp(C0514f c0514f) {
        int i = 0;
        if (c0514f.Ab() != 0) {
            short Aa = c0514f.Aa();
            int Aj = c0514f.Aj();
            if (Aa == Bm && Bo(Aj, C0523o.Ci)) {
                if (Br(2) || Br(3)) {
                    BE(2, c0514f.Af(0));
                }
            } else if (Aa == Bn && Bo(Aj, C0523o.Cj)) {
                if (Br(4)) {
                    BE(4, c0514f.Af(0));
                }
            } else if (Aa == Bo && Bo(Aj, C0523o.Ck)) {
                if (Br(3)) {
                    BE(3, c0514f.Af(0));
                }
            } else if (Aa == Bp && Bo(Aj, C0523o.Cl)) {
                if (Bs()) {
                    BD(c0514f.Af(0));
                }
            } else if (Aa == Bq && Bo(Aj, C0523o.Cm)) {
                if (Bs()) {
                    this.BD = c0514f;
                }
            } else if (Aa == Bs && Bo(Aj, C0523o.Cn)) {
                if (Bs()) {
                    if (c0514f.AE()) {
                        while (i < c0514f.Ab()) {
                            if (c0514f.Ac() == (short) 3) {
                                BF(i, c0514f.Af(i));
                            } else {
                                BF(i, c0514f.Af(i));
                            }
                            i++;
                        }
                    } else {
                        this.Bw.put(Integer.valueOf(c0514f.Ad()), new C0520l(c0514f, false));
                    }
                }
            } else if (Aa == Br && Bo(Aj, C0523o.Co) && Bs() && c0514f.AE()) {
                this.BI = c0514f;
            }
        }
    }

    private boolean Bo(int i, int i2) {
        int i3 = this.BC.Cn().get(i2);
        if (i3 == 0) {
            return false;
        }
        return C0523o.Co(i3, i);
    }

    protected void Bk(C0514f c0514f) {
        int[] iArr;
        int length;
        long[] jArr;
        C0513e[] c0513eArr;
        C0513e[] c0513eArr2;
        int length2;
        int i;
        int i2 = 0;
        short Ac = c0514f.Ac();
        if (!(Ac == (short) 2 || Ac == (short) 7)) {
            if (Ac == (short) 1) {
            }
            switch (c0514f.Ac()) {
                case (short) 1:
                case (short) 7:
                    byte[] bArr = new byte[c0514f.Ab()];
                    read(bArr);
                    c0514f.AN(bArr);
                    return;
                case (short) 2:
                    c0514f.AK(Bx(c0514f.Ab()));
                    return;
                case (short) 3:
                    iArr = new int[c0514f.Ab()];
                    length = iArr.length;
                    while (i2 < length) {
                        iArr[i2] = BC();
                        i2++;
                    }
                    c0514f.AI(iArr);
                    return;
                case (short) 4:
                    jArr = new long[c0514f.Ab()];
                    length = jArr.length;
                    while (i2 < length) {
                        jArr[i2] = BA();
                        i2++;
                    }
                    c0514f.Ap(jArr);
                    return;
                case (short) 5:
                    c0513eArr = new C0513e[c0514f.Ab()];
                    length = c0513eArr.length;
                    while (i2 < length) {
                        c0513eArr[i2] = BB();
                        i2++;
                    }
                    c0514f.AL(c0513eArr);
                    return;
                case (short) 9:
                    iArr = new int[c0514f.Ab()];
                    length = iArr.length;
                    while (i2 < length) {
                        iArr[i2] = Bv();
                        i2++;
                    }
                    c0514f.AI(iArr);
                    return;
                case (short) 10:
                    c0513eArr2 = new C0513e[c0514f.Ab()];
                    length2 = c0513eArr2.length;
                    for (i = 0; i < length2; i++) {
                        c0513eArr2[i] = Bw();
                    }
                    c0514f.AL(c0513eArr2);
                    return;
                default:
                    return;
            }
        }
        length = c0514f.Ab();
        if (this.Bw.size() > 0 && ((Integer) this.Bw.firstEntry().getKey()).intValue() < length + this.BL.BJ()) {
            Object value = this.Bw.firstEntry().getValue();
            if (value instanceof C0518j) {
                C0090a.bvj("ExifParser", "Thumbnail overlaps value for tag: \n" + c0514f.toString());
                C0090a.bvj("ExifParser", "Invalid thumbnail offset: " + this.Bw.pollFirstEntry().getKey());
            } else {
                if (value instanceof C0519k) {
                    C0090a.bvj("ExifParser", "Ifd " + ((C0519k) value).BO + " overlaps value for tag: \n" + c0514f.toString());
                } else if (value instanceof C0520l) {
                    C0090a.bvj("ExifParser", "Tag value for tag: \n" + ((C0520l) value).BR.toString() + " overlaps value for tag: \n" + c0514f.toString());
                }
                i = ((Integer) this.Bw.firstEntry().getKey()).intValue() - this.BL.BJ();
                C0090a.bvj("ExifParser", "Invalid size of tag: \n" + c0514f.toString() + " setting count to: " + i);
                c0514f.Ay(i);
            }
        }
        switch (c0514f.Ac()) {
            case (short) 1:
            case (short) 7:
                byte[] bArr2 = new byte[c0514f.Ab()];
                read(bArr2);
                c0514f.AN(bArr2);
                return;
            case (short) 2:
                c0514f.AK(Bx(c0514f.Ab()));
                return;
            case (short) 3:
                iArr = new int[c0514f.Ab()];
                length = iArr.length;
                while (i2 < length) {
                    iArr[i2] = BC();
                    i2++;
                }
                c0514f.AI(iArr);
                return;
            case (short) 4:
                jArr = new long[c0514f.Ab()];
                length = jArr.length;
                while (i2 < length) {
                    jArr[i2] = BA();
                    i2++;
                }
                c0514f.Ap(jArr);
                return;
            case (short) 5:
                c0513eArr = new C0513e[c0514f.Ab()];
                length = c0513eArr.length;
                while (i2 < length) {
                    c0513eArr[i2] = BB();
                    i2++;
                }
                c0514f.AL(c0513eArr);
                return;
            case (short) 9:
                iArr = new int[c0514f.Ab()];
                length = iArr.length;
                while (i2 < length) {
                    iArr[i2] = Bv();
                    i2++;
                }
                c0514f.AI(iArr);
                return;
            case (short) 10:
                c0513eArr2 = new C0513e[c0514f.Ab()];
                length2 = c0513eArr2.length;
                for (i = 0; i < length2; i++) {
                    c0513eArr2[i] = Bw();
                }
                c0514f.AL(c0513eArr2);
                return;
            default:
                return;
        }
    }

    private void Bu() {
        short BM = this.BL.BM();
        if ((short) 18761 == BM) {
            this.BL.BN(ByteOrder.LITTLE_ENDIAN);
        } else if ((short) 19789 == BM) {
            this.BL.BN(ByteOrder.BIG_ENDIAN);
        } else {
            throw new ExifInvalidFormatException("Invalid TIFF header");
        }
        if (this.BL.BM() != (short) 42) {
            throw new ExifInvalidFormatException("Invalid TIFF header");
        }
    }

    private boolean BG(InputStream inputStream) {
        C0522n c0522n = new C0522n(inputStream);
        if (c0522n.BM() != (short) -40) {
            throw new ExifInvalidFormatException("Invalid JPEG format");
        }
        short BM = c0522n.BM();
        while (BM != (short) -39 && !C0524p.CL(BM)) {
            int BK = c0522n.BK();
            if (BM == (short) -31 && BK >= 8) {
                int BO = c0522n.BO();
                short BM2 = c0522n.BM();
                BK -= 6;
                if (BO == 1165519206 && BM2 == (short) 0) {
                    this.BK = c0522n.BJ();
                    this.Bu = BK;
                    this.BG = this.BK + this.Bu;
                    return true;
                }
            }
            if (BK < 2 || ((long) (BK - 2)) != c0522n.skip((long) (BK - 2))) {
                C0090a.bvj("ExifParser", "Invalid JPEG format.");
                return false;
            }
            BM = c0522n.BM();
        }
        return false;
    }

    protected int Bq() {
        return this.BG;
    }

    protected int Bd() {
        return this.BK;
    }

    protected int read(byte[] bArr) {
        return this.BL.read(bArr);
    }

    protected String Bx(int i) {
        return By(i, Bt);
    }

    protected String By(int i, Charset charset) {
        if (i > 0) {
            return this.BL.BP(i, charset);
        }
        return "";
    }

    protected int BC() {
        return this.BL.BM() & 65535;
    }

    protected long BA() {
        return ((long) Bv()) & 4294967295L;
    }

    protected C0513e BB() {
        return new C0513e(BA(), BA());
    }

    protected int Bv() {
        return this.BL.BO();
    }

    protected C0513e Bw() {
        return new C0513e((long) Bv(), (long) Bv());
    }

    protected ByteOrder Bc() {
        return this.BL.BQ();
    }
}
