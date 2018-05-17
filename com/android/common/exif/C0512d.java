package com.android.common.exif;

import com.fotonation.vfb.VfbEngineCtx;
import java.io.BufferedOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;

class C0512d extends FilterOutputStream {
    private ByteBuffer AP = ByteBuffer.allocate(4);
    private int AQ;
    private int AR;
    private C0511c AS;
    private final C0523o AT;
    private byte[] AU = new byte[1];
    private int mState = 0;

    protected C0512d(OutputStream outputStream, C0523o c0523o) {
        super(new BufferedOutputStream(outputStream, VfbEngineCtx.INIT_FLAG_MODE_TEXTURE_TO_TEXTURE));
        this.AT = c0523o;
    }

    protected void zQ(C0511c c0511c) {
        this.AS = c0511c;
    }

    private int zP(int i, byte[] bArr, int i2, int i3) {
        int position = i - this.AP.position();
        if (i3 > position) {
            i3 = position;
        }
        this.AP.put(bArr, i2, i3);
        return i3;
    }

    public void write(byte[] bArr, int i, int i2) {
        while (true) {
            if ((this.AR > 0 || this.AQ > 0 || this.mState != 2) && i2 > 0) {
                int i3;
                if (this.AR > 0) {
                    if (i2 > this.AR) {
                        i3 = this.AR;
                    } else {
                        i3 = i2;
                    }
                    i2 -= i3;
                    this.AR -= i3;
                    i += i3;
                }
                if (this.AQ > 0) {
                    if (i2 > this.AQ) {
                        i3 = this.AQ;
                    } else {
                        i3 = i2;
                    }
                    this.out.write(bArr, i, i3);
                    i2 -= i3;
                    this.AQ -= i3;
                    i += i3;
                }
                if (i2 != 0) {
                    switch (this.mState) {
                        case 0:
                            i3 = zP(2, bArr, i, i2);
                            i += i3;
                            i2 -= i3;
                            if (this.AP.position() >= 2) {
                                this.AP.rewind();
                                if (this.AP.getShort() == (short) -40) {
                                    this.out.write(this.AP.array(), 0, 2);
                                    this.mState = 1;
                                    this.AP.rewind();
                                    zT();
                                    break;
                                }
                                throw new IOException("Not a valid jpeg image, cannot write exif");
                            }
                            return;
                        case 1:
                            i3 = zP(4, bArr, i, i2);
                            i += i3;
                            i2 -= i3;
                            if (this.AP.position() == 2 && this.AP.getShort() == (short) -39) {
                                this.out.write(this.AP.array(), 0, 2);
                                this.AP.rewind();
                            }
                            if (this.AP.position() >= 4) {
                                this.AP.rewind();
                                short s = this.AP.getShort();
                                if (s == (short) -31) {
                                    this.AR = (this.AP.getShort() & 65535) - 2;
                                    this.mState = 2;
                                } else if (C0524p.CL(s)) {
                                    this.out.write(this.AP.array(), 0, 4);
                                    this.mState = 2;
                                } else {
                                    this.out.write(this.AP.array(), 0, 4);
                                    this.AQ = (this.AP.getShort() & 65535) - 2;
                                }
                                this.AP.rewind();
                                break;
                            }
                            return;
                        default:
                            break;
                    }
                }
                return;
            }
            if (i2 > 0) {
                this.out.write(bArr, i, i2);
            }
            return;
        }
    }

    public void write(int i) {
        this.AU[0] = (byte) (i & 255);
        write(this.AU);
    }

    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    private void zT() {
        if (this.AS != null) {
            Iterable<C0514f> zR = zR(this.AS);
            zO();
            int zM = zM();
            if (zM + 8 > 65535) {
                throw new IOException("Exif header is too large (>64Kb)");
            }
            C0525q c0525q = new C0525q(this.out);
            c0525q.CM(ByteOrder.BIG_ENDIAN);
            c0525q.CN((short) -31);
            c0525q.CN((short) (zM + 8));
            c0525q.CO(1165519206);
            c0525q.CN((short) 0);
            if (this.AS.zw() == ByteOrder.BIG_ENDIAN) {
                c0525q.CN((short) 19789);
            } else {
                c0525q.CN((short) 18761);
            }
            c0525q.CM(this.AS.zw());
            c0525q.CN((short) 42);
            c0525q.CO(8);
            zS(c0525q);
            zW(c0525q);
            for (C0514f zy : zR) {
                this.AS.zy(zy);
            }
        }
    }

    private ArrayList zR(C0511c c0511c) {
        ArrayList arrayList = new ArrayList();
        for (C0514f c0514f : c0511c.zB()) {
            if (c0514f.Al() == null && !C0523o.Cl(c0514f.Aa())) {
                c0511c.zJ(c0514f.Aa(), c0514f.Aj());
                arrayList.add(c0514f);
            }
        }
        return arrayList;
    }

    private void zW(C0525q c0525q) {
        if (this.AS.zH()) {
            c0525q.write(this.AS.zC());
        } else if (this.AS.zI()) {
            for (int i = 0; i < this.AS.zF(); i++) {
                c0525q.write(this.AS.zE(i));
            }
        }
    }

    private void zS(C0525q c0525q) {
        zU(this.AS.zx(0), c0525q);
        zU(this.AS.zx(2), c0525q);
        C0515g zx = this.AS.zx(3);
        if (zx != null) {
            zU(zx, c0525q);
        }
        zx = this.AS.zx(4);
        if (zx != null) {
            zU(zx, c0525q);
        }
        if (this.AS.zx(1) != null) {
            zU(this.AS.zx(1), c0525q);
        }
    }

    private void zU(C0515g c0515g, C0525q c0525q) {
        int i;
        int i2 = 0;
        C0514f[] AW = c0515g.AW();
        c0525q.CN((short) AW.length);
        for (C0514f c0514f : AW) {
            c0525q.CN(c0514f.Aa());
            c0525q.CN(c0514f.Ac());
            c0525q.CO(c0514f.Ab());
            if (c0514f.Am() > 4) {
                c0525q.CO(c0514f.Ad());
            } else {
                C0512d.zV(c0514f, c0525q);
                int Am = 4 - c0514f.Am();
                for (i = 0; i < Am; i++) {
                    c0525q.write(0);
                }
            }
        }
        c0525q.CO(c0515g.AX());
        i = AW.length;
        while (i2 < i) {
            C0514f c0514f2 = AW[i2];
            if (c0514f2.Am() > 4) {
                C0512d.zV(c0514f2, c0525q);
            }
            i2++;
        }
    }

    private int zN(C0515g c0515g, int i) {
        int AT = i + (((c0515g.AT() * 12) + 2) + 4);
        int i2 = AT;
        for (C0514f c0514f : c0515g.AW()) {
            if (c0514f.Am() > 4) {
                c0514f.An(i2);
                i2 += c0514f.Am();
            }
        }
        return i2;
    }

    private void zO() {
        C0515g zx = this.AS.zx(0);
        if (zx == null) {
            zx = new C0515g(0);
            this.AS.zz(zx);
        }
        C0514f Cm = this.AT.Cm(C0523o.Ci);
        if (Cm == null) {
            throw new IOException("No definition for crucial exif tag: " + C0523o.Ci);
        }
        C0514f Cm2;
        zx.AV(Cm);
        C0515g zx2 = this.AS.zx(2);
        if (zx2 == null) {
            zx2 = new C0515g(2);
            this.AS.zz(zx2);
        }
        if (this.AS.zx(4) != null) {
            Cm2 = this.AT.Cm(C0523o.Cj);
            if (Cm2 == null) {
                throw new IOException("No definition for crucial exif tag: " + C0523o.Cj);
            }
            zx.AV(Cm2);
        }
        if (this.AS.zx(3) != null) {
            C0514f Cm3 = this.AT.Cm(C0523o.Ck);
            if (Cm3 == null) {
                throw new IOException("No definition for crucial exif tag: " + C0523o.Ck);
            }
            zx2.AV(Cm3);
        }
        zx = this.AS.zx(1);
        if (this.AS.zH()) {
            if (zx == null) {
                zx = new C0515g(1);
                this.AS.zz(zx);
            }
            Cm = this.AT.Cm(C0523o.Cl);
            if (Cm == null) {
                throw new IOException("No definition for crucial exif tag: " + C0523o.Cl);
            }
            zx.AV(Cm);
            Cm = this.AT.Cm(C0523o.Cm);
            if (Cm == null) {
                throw new IOException("No definition for crucial exif tag: " + C0523o.Cm);
            }
            Cm.Ao(this.AS.zC().length);
            zx.AV(Cm);
            zx.AS(C0523o.BV(C0523o.Cn));
            zx.AS(C0523o.BV(C0523o.Co));
        } else if (this.AS.zI()) {
            if (zx == null) {
                zx = new C0515g(1);
                this.AS.zz(zx);
            }
            int zF = this.AS.zF();
            Cm2 = this.AT.Cm(C0523o.Cn);
            if (Cm2 == null) {
                throw new IOException("No definition for crucial exif tag: " + C0523o.Cn);
            }
            C0514f Cm4 = this.AT.Cm(C0523o.Co);
            if (Cm4 == null) {
                throw new IOException("No definition for crucial exif tag: " + C0523o.Co);
            }
            long[] jArr = new long[zF];
            for (zF = 0; zF < this.AS.zF(); zF++) {
                jArr[zF] = (long) this.AS.zE(zF).length;
            }
            Cm4.Ap(jArr);
            zx.AV(Cm2);
            zx.AV(Cm4);
            zx.AS(C0523o.BV(C0523o.Cl));
            zx.AS(C0523o.BV(C0523o.Cm));
        } else if (zx != null) {
            zx.AS(C0523o.BV(C0523o.Cn));
            zx.AS(C0523o.BV(C0523o.Co));
            zx.AS(C0523o.BV(C0523o.Cl));
            zx.AS(C0523o.BV(C0523o.Cm));
        }
    }

    private int zM() {
        C0515g zx = this.AS.zx(0);
        int zN = zN(zx, 8);
        zx.AR(C0523o.BV(C0523o.Ci)).Ao(zN);
        C0515g zx2 = this.AS.zx(2);
        zN = zN(zx2, zN);
        C0515g zx3 = this.AS.zx(3);
        if (zx3 != null) {
            zx2.AR(C0523o.BV(C0523o.Ck)).Ao(zN);
            zN = zN(zx3, zN);
        }
        zx2 = this.AS.zx(4);
        if (zx2 != null) {
            zx.AR(C0523o.BV(C0523o.Cj)).Ao(zN);
            zN = zN(zx2, zN);
        }
        zx2 = this.AS.zx(1);
        if (zx2 != null) {
            zx.AY(zN);
            zN = zN(zx2, zN);
        }
        if (this.AS.zH()) {
            zx2.AR(C0523o.BV(C0523o.Cl)).Ao(zN);
            return this.AS.zC().length + zN;
        } else if (!this.AS.zI()) {
            return zN;
        } else {
            long[] jArr = new long[this.AS.zF()];
            int i = zN;
            for (zN = 0; zN < this.AS.zF(); zN++) {
                jArr[zN] = (long) i;
                i += this.AS.zE(zN).length;
            }
            zx2.AR(C0523o.BV(C0523o.Cn)).Ap(jArr);
            return i;
        }
    }

    static void zV(C0514f c0514f, C0525q c0525q) {
        int i = 0;
        int Ab;
        switch (c0514f.Ac()) {
            case (short) 1:
            case (short) 7:
                byte[] bArr = new byte[c0514f.Ab()];
                c0514f.Ah(bArr);
                c0525q.write(bArr);
                return;
            case (short) 2:
                byte[] Ae = c0514f.Ae();
                if (Ae.length == c0514f.Ab()) {
                    Ae[Ae.length - 1] = (byte) 0;
                    c0525q.write(Ae);
                    return;
                }
                c0525q.write(Ae);
                c0525q.write(0);
                return;
            case (short) 3:
                Ab = c0514f.Ab();
                while (i < Ab) {
                    c0525q.CN((short) ((int) c0514f.Af(i)));
                    i++;
                }
                return;
            case (short) 4:
            case (short) 9:
                Ab = c0514f.Ab();
                while (i < Ab) {
                    c0525q.CO((int) c0514f.Af(i));
                    i++;
                }
                return;
            case (short) 5:
            case (short) 10:
                Ab = c0514f.Ab();
                while (i < Ab) {
                    c0525q.CP(c0514f.Ag(i));
                    i++;
                }
                return;
            default:
                return;
        }
    }
}
