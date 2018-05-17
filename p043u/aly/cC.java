package p043u.aly;

class cC extends C1341b {
    private cC() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bYM(dlVar, (ar) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bYL(dlVar, (ar) cjVar);
    }

    public void bYL(dl dlVar, ar arVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 8) {
                            arVar.f739a = dlVar.bRe();
                            arVar.m914a(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 8) {
                            arVar.f740b = dlVar.bRe();
                            arVar.bYF(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 3:
                        if (l.f935b == (byte) 8) {
                            arVar.f741c = dlVar.bRe();
                            arVar.bYH(true);
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
                if (!arVar.m915e()) {
                    throw new dj("Required field 'successful_requests' was not found in serialized data! Struct: " + toString());
                } else if (arVar.m916i()) {
                    arVar.m918m();
                    return;
                } else {
                    throw new dj("Required field 'failed_requests' was not found in serialized data! Struct: " + toString());
                }
            }
        }
    }

    public void bYM(dl dlVar, ar arVar) {
        arVar.m918m();
        dlVar.bQO(ar.bzo);
        dlVar.bQP(ar.bzp);
        dlVar.mo971a(arVar.f739a);
        dlVar.mo997c();
        dlVar.bQP(ar.bzq);
        dlVar.mo971a(arVar.f740b);
        dlVar.mo997c();
        if (arVar.m917l()) {
            dlVar.bQP(ar.bzr);
            dlVar.mo971a(arVar.f741c);
            dlVar.mo997c();
        }
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
