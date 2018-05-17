package p043u.aly;

class di extends C1341b {
    private di() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        caK(dlVar, (bl) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        caJ(dlVar, (bl) cjVar);
    }

    public void caJ(dl dlVar, bl blVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 8) {
                            blVar.f891a = dlVar.bRe();
                            blVar.m1083a(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 11) {
                            blVar.f892b = dlVar.bRh();
                            blVar.bVp(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 3:
                        if (l.f935b == (byte) 12) {
                            blVar.f893c = new bc();
                            blVar.f893c.bQD(dlVar);
                            blVar.bVq(true);
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
                if (blVar.m1084e()) {
                    blVar.m1089m();
                    return;
                }
                throw new dj("Required field 'resp_code' was not found in serialized data! Struct: " + toString());
            }
        }
    }

    public void caK(dl dlVar, bl blVar) {
        blVar.m1089m();
        dlVar.bQO(bl.bwK);
        dlVar.bQP(bl.bwL);
        dlVar.mo971a(blVar.f891a);
        dlVar.mo997c();
        if (blVar.f892b != null && blVar.m1086i()) {
            dlVar.bQP(bl.bwM);
            dlVar.mo973a(blVar.f892b);
            dlVar.mo997c();
        }
        if (blVar.f893c != null && blVar.m1088l()) {
            dlVar.bQP(bl.bwN);
            blVar.f893c.bQE(dlVar);
            dlVar.mo997c();
        }
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
