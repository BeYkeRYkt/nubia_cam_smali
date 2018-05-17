package p043u.aly;

class bE extends C1341b {
    private bE() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bWf(dlVar, (bk) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bWe(dlVar, (bk) cjVar);
    }

    public void bWe(dl dlVar, bk bkVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 8) {
                            bkVar.f884a = dlVar.bRe();
                            bkVar.m1076a(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 8) {
                            bkVar.f885b = dlVar.bRe();
                            bkVar.bVV(true);
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
                if (!bkVar.m1077e()) {
                    throw new dj("Required field 'height' was not found in serialized data! Struct: " + toString());
                } else if (bkVar.m1078i()) {
                    bkVar.m1079j();
                    return;
                } else {
                    throw new dj("Required field 'width' was not found in serialized data! Struct: " + toString());
                }
            }
        }
    }

    public void bWf(dl dlVar, bk bkVar) {
        bkVar.m1079j();
        dlVar.bQO(bk.bxt);
        dlVar.bQP(bk.bxu);
        dlVar.mo971a(bkVar.f884a);
        dlVar.mo997c();
        dlVar.bQP(bk.bxv);
        dlVar.mo971a(bkVar.f885b);
        dlVar.mo997c();
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
