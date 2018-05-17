package p043u.aly;

class cV extends C1341b {
    private cV() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bZg(dlVar, (bd) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bZf(dlVar, (bd) cjVar);
    }

    public void bZf(dl dlVar, bd bdVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 11) {
                            bdVar.f835a = dlVar.bRh();
                            bdVar.m1019a(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 10) {
                            bdVar.f836b = dlVar.bRf();
                            bdVar.cbS(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 3:
                        if (l.f935b == (byte) 11) {
                            bdVar.f837c = dlVar.bRh();
                            bdVar.cbT(true);
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
                if (bdVar.m1023i()) {
                    bdVar.m1025m();
                    return;
                }
                throw new dj("Required field 'ts' was not found in serialized data! Struct: " + toString());
            }
        }
    }

    public void bZg(dl dlVar, bd bdVar) {
        bdVar.m1025m();
        dlVar.bQO(bd.bBZ);
        if (bdVar.f835a != null && bdVar.m1021e()) {
            dlVar.bQP(bd.bCa);
            dlVar.mo973a(bdVar.f835a);
            dlVar.mo997c();
        }
        dlVar.bQP(bd.bCb);
        dlVar.mo972a(bdVar.f836b);
        dlVar.mo997c();
        if (bdVar.f837c != null) {
            dlVar.bQP(bd.bCc);
            dlVar.mo973a(bdVar.f837c);
            dlVar.mo997c();
        }
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
