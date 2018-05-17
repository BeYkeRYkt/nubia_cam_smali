package p043u.aly;

class ch extends C1341b {
    private ch() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bYf(dlVar, (bi) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bYe(dlVar, (bi) cjVar);
    }

    public void bYe(dl dlVar, bi biVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 11) {
                            biVar.f697a = dlVar.bRh();
                            biVar.m874a(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 10) {
                            biVar.f698b = dlVar.bRf();
                            biVar.bVu(true);
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
                if (biVar.m875i()) {
                    biVar.m876j();
                    return;
                }
                throw new dj("Required field 'duration' was not found in serialized data! Struct: " + toString());
            }
        }
    }

    public void bYf(dl dlVar, bi biVar) {
        biVar.m876j();
        dlVar.bQO(bi.bwU);
        if (biVar.f697a != null) {
            dlVar.bQP(bi.bwV);
            dlVar.mo973a(biVar.f697a);
            dlVar.mo997c();
        }
        dlVar.bQP(bi.bwW);
        dlVar.mo972a(biVar.f698b);
        dlVar.mo997c();
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
