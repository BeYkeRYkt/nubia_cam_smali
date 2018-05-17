package com.android.common.exif;

import java.io.Closeable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;

class C0509a {
    private final ByteBuffer AB;
    private final C0523o AC;
    private int AD;
    private final List AE = new ArrayList();
    private final C0511c AF;

    protected C0509a(ByteBuffer byteBuffer, C0523o c0523o) {
        Closeable c0521m;
        Throwable th;
        this.AB = byteBuffer;
        this.AD = byteBuffer.position();
        this.AC = c0523o;
        try {
            c0521m = new C0521m(byteBuffer);
            try {
                C0517i Bb = C0517i.Bb(c0521m, this.AC);
                this.AF = new C0511c(Bb.Bc());
                this.AD = Bb.Bd() + this.AD;
                this.AB.position(0);
                C0523o.BU(c0521m);
            } catch (Throwable th2) {
                th = th2;
                C0523o.BU(c0521m);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            c0521m = null;
            C0523o.BU(c0521m);
            throw th;
        }
    }

    protected ByteOrder zs() {
        return this.AF.zw();
    }

    protected boolean commit() {
        Throwable th;
        Closeable c0521m;
        try {
            int i;
            int Bf;
            c0521m = new C0521m(this.AB);
            C0515g[] c0515gArr = new C0515g[]{this.AF.zx(0), this.AF.zx(1), this.AF.zx(2), this.AF.zx(3), this.AF.zx(4)};
            if (c0515gArr[0] != null) {
                i = 1;
            } else {
                i = 0;
            }
            if (c0515gArr[1] != null) {
                i |= 2;
            }
            if (c0515gArr[2] != null) {
                i |= 4;
            }
            if (c0515gArr[4] != null) {
                i |= 8;
            }
            if (c0515gArr[3] != null) {
                i |= 16;
            }
            C0517i Be = C0517i.Be(c0521m, i, this.AC);
            C0515g c0515g = null;
            for (Bf = Be.Bf(); Bf != 5; Bf = Be.Bf()) {
                switch (Bf) {
                    case 0:
                        c0515g = c0515gArr[Be.Bg()];
                        if (c0515g != null) {
                            break;
                        }
                        Be.Bh();
                        break;
                    case 1:
                        C0514f Bi = Be.Bi();
                        C0514f AR = c0515g.AR(Bi.Aa());
                        if (AR != null) {
                            if (AR.Ab() == Bi.Ab() && AR.Ac() == Bi.Ac()) {
                                try {
                                    this.AE.add(new C0510b(AR, Bi.Ad()));
                                    c0515g.AS(Bi.Aa());
                                    if (c0515g.AT() != 0) {
                                        break;
                                    }
                                    Be.Bh();
                                    break;
                                } catch (Throwable th2) {
                                    th = th2;
                                    break;
                                }
                            }
                            C0523o.BU(c0521m);
                            return false;
                        }
                        continue;
                        break;
                    default:
                        break;
                }
            }
            Bf = c0515gArr.length;
            i = 0;
            while (i < Bf) {
                C0515g c0515g2 = c0515gArr[i];
                if (c0515g2 == null || c0515g2.AT() <= 0) {
                    i++;
                } else {
                    C0523o.BU(c0521m);
                    return false;
                }
            }
            zt();
            C0523o.BU(c0521m);
            return true;
        } catch (Throwable th3) {
            th = th3;
            c0521m = null;
            C0523o.BU(c0521m);
            throw th;
        }
    }

    private void zt() {
        this.AB.order(zs());
        for (C0510b c0510b : this.AE) {
            zv(c0510b.AH, c0510b.AG);
        }
    }

    private void zv(C0514f c0514f, int i) {
        int i2 = 0;
        this.AB.position(this.AD + i);
        int Ab;
        switch (c0514f.Ac()) {
            case (short) 1:
            case (short) 7:
                byte[] bArr = new byte[c0514f.Ab()];
                c0514f.Ah(bArr);
                this.AB.put(bArr);
                return;
            case (short) 2:
                byte[] Ae = c0514f.Ae();
                if (Ae.length == c0514f.Ab()) {
                    Ae[Ae.length - 1] = (byte) 0;
                    this.AB.put(Ae);
                    return;
                }
                this.AB.put(Ae);
                this.AB.put((byte) 0);
                return;
            case (short) 3:
                Ab = c0514f.Ab();
                while (i2 < Ab) {
                    this.AB.putShort((short) ((int) c0514f.Af(i2)));
                    i2++;
                }
                return;
            case (short) 4:
            case (short) 9:
                Ab = c0514f.Ab();
                while (i2 < Ab) {
                    this.AB.putInt((int) c0514f.Af(i2));
                    i2++;
                }
                return;
            case (short) 5:
            case (short) 10:
                Ab = c0514f.Ab();
                while (i2 < Ab) {
                    C0513e Ag = c0514f.Ag(i2);
                    this.AB.putInt((int) Ag.zX());
                    this.AB.putInt((int) Ag.zY());
                    i2++;
                }
                return;
            default:
                return;
        }
    }

    public void zu(C0514f c0514f) {
        this.AF.zy(c0514f);
    }
}
