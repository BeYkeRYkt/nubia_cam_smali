package com.android.common.exif;

import com.p010a.C0090a;
import java.io.InputStream;

class C0516h {
    private final C0523o Bl;

    C0516h(C0523o c0523o) {
        this.Bl = c0523o;
    }

    protected C0511c Ba(InputStream inputStream) {
        C0517i Bb = C0517i.Bb(inputStream, this.Bl);
        C0511c c0511c = new C0511c(Bb.Bc());
        for (int Bf = Bb.Bf(); Bf != 5; Bf = Bb.Bf()) {
            C0514f Bi;
            byte[] bArr;
            switch (Bf) {
                case 0:
                    c0511c.zz(new C0515g(Bb.Bg()));
                    break;
                case 1:
                    Bi = Bb.Bi();
                    if (!Bi.AE()) {
                        Bb.Bj(Bi);
                        break;
                    }
                    c0511c.zx(Bi.Aj()).AV(Bi);
                    break;
                case 2:
                    Bi = Bb.Bi();
                    if (Bi.Ac() == (short) 7) {
                        Bb.Bk(Bi);
                    }
                    c0511c.zx(Bi.Aj()).AV(Bi);
                    break;
                case 3:
                    bArr = new byte[Bb.Bl()];
                    if (bArr.length != Bb.read(bArr)) {
                        C0090a.bvj("ExifReader", "Failed to read the compressed thumbnail");
                        break;
                    }
                    c0511c.zK(bArr);
                    break;
                case 4:
                    bArr = new byte[Bb.Bm()];
                    if (bArr.length != Bb.read(bArr)) {
                        C0090a.bvj("ExifReader", "Failed to read the strip bytes");
                        break;
                    }
                    c0511c.zL(Bb.Bn(), bArr);
                    break;
                default:
                    break;
            }
        }
        return c0511c;
    }
}
