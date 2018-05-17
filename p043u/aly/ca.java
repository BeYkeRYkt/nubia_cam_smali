package p043u.aly;

class ca extends C1341b {
    private ca() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bXT(dlVar, (ao) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bXS(dlVar, (ao) cjVar);
    }

    public void bXS(dl dlVar, ao aoVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 10) {
                            aoVar.f715a = dlVar.bRf();
                            aoVar.m892a(true);
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
                if (aoVar.m893e()) {
                    aoVar.m894f();
                    return;
                }
                throw new dj("Required field 'ts' was not found in serialized data! Struct: " + toString());
            }
        }
    }

    public void bXT(dl dlVar, ao aoVar) {
        aoVar.m894f();
        dlVar.bQO(ao.bxq);
        dlVar.bQP(ao.bxr);
        dlVar.mo972a(aoVar.f715a);
        dlVar.mo997c();
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
