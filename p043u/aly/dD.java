package p043u.aly;

class dD extends C1341b {
    private dD() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        cbJ(dlVar, (ap) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        cbI(dlVar, (ap) cjVar);
    }

    public void cbI(dl dlVar, ap apVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 11) {
                            apVar.f719a = dlVar.bRh();
                            apVar.m900a(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 11) {
                            apVar.f720b = dlVar.bRh();
                            apVar.bQC(true);
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
                apVar.m901j();
                return;
            }
        }
    }

    public void cbJ(dl dlVar, ap apVar) {
        apVar.m901j();
        dlVar.bQO(ap.bts);
        if (apVar.f719a != null) {
            dlVar.bQP(ap.btt);
            dlVar.mo973a(apVar.f719a);
            dlVar.mo997c();
        }
        if (apVar.f720b != null) {
            dlVar.bQP(ap.btu);
            dlVar.mo973a(apVar.f720b);
            dlVar.mo997c();
        }
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
