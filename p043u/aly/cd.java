package p043u.aly;

import com.umeng.analytics.ReportPolicy;
import java.util.ArrayList;

class cd extends C1341b {
    private cd() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bXX(dlVar, (bn) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bXW(dlVar, (bn) cjVar);
    }

    public void bXW(dl dlVar, bn bnVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                bP bQX;
                int i;
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 11) {
                            bnVar.f700a = dlVar.bRh();
                            bnVar.m880a(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 10) {
                            bnVar.f701b = dlVar.bRf();
                            bnVar.bRD(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 3:
                        if (l.f935b == (byte) 10) {
                            bnVar.f702c = dlVar.bRf();
                            bnVar.bRF(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 4:
                        if (l.f935b == (byte) 10) {
                            bnVar.f703d = dlVar.bRf();
                            bnVar.bRI(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 5:
                        if (l.f935b == (byte) 15) {
                            bQX = dlVar.bQX();
                            bnVar.f704e = new ArrayList(bQX.f800b);
                            for (i = 0; i < bQX.f800b; i++) {
                                bi biVar = new bi();
                                biVar.bQD(dlVar);
                                bnVar.f704e.add(biVar);
                            }
                            dlVar.bQY();
                            bnVar.bRL(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                        if (l.f935b == (byte) 15) {
                            bQX = dlVar.bQX();
                            bnVar.f705f = new ArrayList(bQX.f800b);
                            for (i = 0; i < bQX.f800b; i++) {
                                bg bgVar = new bg();
                                bgVar.bQD(dlVar);
                                bnVar.f705f.add(bgVar);
                            }
                            dlVar.bQY();
                            bnVar.bRP(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 7:
                        if (l.f935b == (byte) 12) {
                            bnVar.f706g = new bo();
                            bnVar.f706g.bQD(dlVar);
                            bnVar.bRS(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    default:
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                }
                dlVar.mo1004m();
            } else {
                dlVar.mo1002k();
                if (!bnVar.m881i()) {
                    throw new dj("Required field 'start_time' was not found in serialized data! Struct: " + toString());
                } else if (!bnVar.m882l()) {
                    throw new dj("Required field 'end_time' was not found in serialized data! Struct: " + toString());
                } else if (bnVar.bRH()) {
                    bnVar.bRT();
                    return;
                } else {
                    throw new dj("Required field 'duration' was not found in serialized data! Struct: " + toString());
                }
            }
        }
    }

    public void bXX(dl dlVar, bn bnVar) {
        bnVar.bRT();
        dlVar.bQO(bn.buy);
        if (bnVar.f700a != null) {
            dlVar.bQP(bn.buz);
            dlVar.mo973a(bnVar.f700a);
            dlVar.mo997c();
        }
        dlVar.bQP(bn.buA);
        dlVar.mo972a(bnVar.f701b);
        dlVar.mo997c();
        dlVar.bQP(bn.buB);
        dlVar.mo972a(bnVar.f702c);
        dlVar.mo997c();
        dlVar.bQP(bn.buC);
        dlVar.mo972a(bnVar.f703d);
        dlVar.mo997c();
        if (bnVar.f704e != null && bnVar.bRK()) {
            dlVar.bQP(bn.buD);
            dlVar.bQR(new bP((byte) 12, bnVar.f704e.size()));
            for (bi bQE : bnVar.f704e) {
                bQE.bQE(dlVar);
            }
            dlVar.mo1000f();
            dlVar.mo997c();
        }
        if (bnVar.f705f != null && bnVar.bRO()) {
            dlVar.bQP(bn.buE);
            dlVar.bQR(new bP((byte) 12, bnVar.f705f.size()));
            for (bg bQE2 : bnVar.f705f) {
                bQE2.bQE(dlVar);
            }
            dlVar.mo1000f();
            dlVar.mo997c();
        }
        if (bnVar.f706g != null && bnVar.bRR()) {
            dlVar.bQP(bn.buF);
            bnVar.f706g.bQE(dlVar);
            dlVar.mo997c();
        }
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
