package p043u.aly;

class C1411x extends C1341b {
    private C1411x() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bRC(dlVar, (as) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bRB(dlVar, (as) cjVar);
    }

    public void bRB(dl dlVar, as asVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 12) {
                            asVar.f748a = new bf();
                            asVar.f748a.bQD(dlVar);
                            asVar.m923a(true);
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
                asVar.m925f();
                return;
            }
        }
    }

    public void bRC(dl dlVar, as asVar) {
        asVar.m925f();
        dlVar.bQO(as.bxP);
        if (asVar.f748a != null && asVar.m924e()) {
            dlVar.bQP(as.bxQ);
            asVar.f748a.bQE(dlVar);
            dlVar.mo997c();
        }
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
