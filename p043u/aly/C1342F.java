package p043u.aly;

import java.util.ArrayList;

class C1342F extends C1341b {
    private C1342F() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bSt(dlVar, (be) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bSs(dlVar, (be) cjVar);
    }

    public void bSs(dl dlVar, be beVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                bP bQX;
                int i;
                ax axVar;
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 11) {
                            beVar.f842a = dlVar.bRh();
                            beVar.m1029a(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 15) {
                            bQX = dlVar.bQX();
                            beVar.f843b = new ArrayList(bQX.f800b);
                            for (i = 0; i < bQX.f800b; i++) {
                                av avVar = new av();
                                avVar.bQD(dlVar);
                                beVar.f843b.add(avVar);
                            }
                            dlVar.bQY();
                            beVar.bXg(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 3:
                        if (l.f935b == (byte) 15) {
                            bQX = dlVar.bQX();
                            beVar.f844c = new ArrayList(bQX.f800b);
                            for (i = 0; i < bQX.f800b; i++) {
                                axVar = new ax();
                                axVar.bQD(dlVar);
                                beVar.f844c.add(axVar);
                            }
                            dlVar.bQY();
                            beVar.bXj(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 4:
                        if (l.f935b == (byte) 15) {
                            bQX = dlVar.bQX();
                            beVar.f845d = new ArrayList(bQX.f800b);
                            for (i = 0; i < bQX.f800b; i++) {
                                axVar = new ax();
                                axVar.bQD(dlVar);
                                beVar.f845d.add(axVar);
                            }
                            dlVar.bQY();
                            beVar.bXo(true);
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
                beVar.bXp();
                return;
            }
        }
    }

    public void bSt(dl dlVar, be beVar) {
        beVar.bXp();
        dlVar.bQO(be.byh);
        if (beVar.f842a != null) {
            dlVar.bQP(be.byi);
            dlVar.mo973a(beVar.f842a);
            dlVar.mo997c();
        }
        if (beVar.f843b != null && beVar.m1031k()) {
            dlVar.bQP(be.byj);
            dlVar.bQR(new bP((byte) 12, beVar.f843b.size()));
            for (av bQE : beVar.f843b) {
                bQE.bQE(dlVar);
            }
            dlVar.mo1000f();
            dlVar.mo997c();
        }
        if (beVar.f844c != null && beVar.bXi()) {
            dlVar.bQP(be.byk);
            dlVar.bQR(new bP((byte) 12, beVar.f844c.size()));
            for (ax bQE2 : beVar.f844c) {
                bQE2.bQE(dlVar);
            }
            dlVar.mo1000f();
            dlVar.mo997c();
        }
        if (beVar.f845d != null && beVar.bXn()) {
            dlVar.bQP(be.byl);
            dlVar.bQR(new bP((byte) 12, beVar.f845d.size()));
            for (ax bQE22 : beVar.f845d) {
                bQE22.bQE(dlVar);
            }
            dlVar.mo1000f();
            dlVar.mo997c();
        }
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
