package p043u.aly;

import com.umeng.analytics.ReportPolicy;

public class C1362Z {
    private static int f666a = Integer.MAX_VALUE;

    public static void bUm(dl dlVar, byte b) {
        C1362Z.bUn(dlVar, b, f666a);
    }

    public static void bUn(dl dlVar, byte b, int i) {
        int i2 = 0;
        if (i > 0) {
            switch (b) {
                case (byte) 2:
                    dlVar.bRb();
                    return;
                case (byte) 3:
                    dlVar.bRc();
                    return;
                case (byte) 4:
                    dlVar.bRg();
                    return;
                case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                    dlVar.bRd();
                    return;
                case (byte) 8:
                    dlVar.bRe();
                    return;
                case (byte) 10:
                    dlVar.bRf();
                    return;
                case (byte) 11:
                    dlVar.bRj();
                    return;
                case (byte) 12:
                    dlVar.mo1001j();
                    while (true) {
                        cB l = dlVar.mo1003l();
                        if (l.f935b != (byte) 0) {
                            C1362Z.bUn(dlVar, l.f935b, i - 1);
                            dlVar.mo1004m();
                        } else {
                            dlVar.mo1002k();
                            return;
                        }
                    }
                case (byte) 13:
                    dh n = dlVar.mo1005n();
                    while (i2 < n.f986c) {
                        C1362Z.bUn(dlVar, n.f984a, i - 1);
                        C1362Z.bUn(dlVar, n.f985b, i - 1);
                        i2++;
                    }
                    dlVar.bQW();
                    return;
                case (byte) 14:
                    C1402m bQZ = dlVar.bQZ();
                    while (i2 < bQZ.f1000b) {
                        C1362Z.bUn(dlVar, bQZ.f999a, i - 1);
                        i2++;
                    }
                    dlVar.bRa();
                    return;
                case (byte) 15:
                    bP bQX = dlVar.bQX();
                    while (i2 < bQX.f800b) {
                        C1362Z.bUn(dlVar, bQX.f799a, i - 1);
                        i2++;
                    }
                    dlVar.bQY();
                    return;
                default:
                    return;
            }
        }
        throw new cp("Maximum skip depth exceeded");
    }
}
