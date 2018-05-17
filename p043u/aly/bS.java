package p043u.aly;

class bS extends C1341b {
    private bS() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bXJ(dlVar, (bf) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bXI(dlVar, (bf) cjVar);
    }

    public void bXI(dl dlVar, bf bfVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 8) {
                            bfVar.f849a = dlVar.bRe();
                            bfVar.m1039a(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 10) {
                            bfVar.f850b = dlVar.bRf();
                            bfVar.bZB(true);
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
                if (!bfVar.m1040e()) {
                    throw new dj("Required field 'latency' was not found in serialized data! Struct: " + toString());
                } else if (bfVar.m1041i()) {
                    bfVar.m1042j();
                    return;
                } else {
                    throw new dj("Required field 'interval' was not found in serialized data! Struct: " + toString());
                }
            }
        }
    }

    public void bXJ(dl dlVar, bf bfVar) {
        bfVar.m1042j();
        dlVar.bQO(bf.bAr);
        dlVar.bQP(bf.bAs);
        dlVar.mo971a(bfVar.f849a);
        dlVar.mo997c();
        dlVar.bQP(bf.bAt);
        dlVar.mo972a(bfVar.f850b);
        dlVar.mo997c();
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
