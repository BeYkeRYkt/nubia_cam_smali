package p043u.aly;

class C1363a extends C1341b {
    private C1363a() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bQj(dlVar, (av) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bQi(dlVar, (av) cjVar);
    }

    public void bQi(dl dlVar, av avVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 10) {
                            avVar.f692a = dlVar.bRf();
                            avVar.cbL(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 11) {
                            avVar.f693b = dlVar.bRh();
                            avVar.cbM(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 3:
                        if (l.f935b == (byte) 8) {
                            avVar.f694c = aw.m938a(dlVar.bRe());
                            avVar.cbO(true);
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
                if (avVar.m864e()) {
                    avVar.m866m();
                    return;
                }
                throw new dj("Required field 'ts' was not found in serialized data! Struct: " + toString());
            }
        }
    }

    public void bQj(dl dlVar, av avVar) {
        avVar.m866m();
        dlVar.bQO(av.bBU);
        dlVar.bQP(av.bBV);
        dlVar.mo972a(avVar.f692a);
        dlVar.mo997c();
        if (avVar.f693b != null) {
            dlVar.bQP(av.bBW);
            dlVar.mo973a(avVar.f693b);
            dlVar.mo997c();
        }
        if (avVar.f694c != null && avVar.m865l()) {
            dlVar.bQP(av.bBX);
            dlVar.mo971a(avVar.f694c.m939a());
            dlVar.mo997c();
        }
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
