package p043u.aly;

class dd extends C1341b {
    private dd() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bZn(dlVar, (ba) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bZm(dlVar, (ba) cjVar);
    }

    public void bZm(dl dlVar, ba baVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 11) {
                            baVar.f811a = dlVar.bRh();
                            baVar.m991a(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 10) {
                            baVar.f812b = dlVar.bRf();
                            baVar.bTz(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 3:
                        if (l.f935b == (byte) 8) {
                            baVar.f813c = dlVar.bRe();
                            baVar.bTA(true);
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
                if (!baVar.m994i()) {
                    throw new dj("Required field 'ts' was not found in serialized data! Struct: " + toString());
                } else if (baVar.m996l()) {
                    baVar.m997m();
                    return;
                } else {
                    throw new dj("Required field 'version' was not found in serialized data! Struct: " + toString());
                }
            }
        }
    }

    public void bZn(dl dlVar, ba baVar) {
        baVar.m997m();
        dlVar.bQO(ba.bvO);
        if (baVar.f811a != null) {
            dlVar.bQP(ba.bvP);
            dlVar.mo973a(baVar.f811a);
            dlVar.mo997c();
        }
        dlVar.bQP(ba.bvQ);
        dlVar.mo972a(baVar.f812b);
        dlVar.mo997c();
        dlVar.bQP(ba.bvR);
        dlVar.mo971a(baVar.f813c);
        dlVar.mo997c();
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
