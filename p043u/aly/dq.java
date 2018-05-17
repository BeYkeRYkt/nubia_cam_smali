package p043u.aly;

class dq extends C1341b {
    private dq() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        caT(dlVar, (bo) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        caS(dlVar, (bo) cjVar);
    }

    public void caS(dl dlVar, bo boVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 8) {
                            boVar.f901a = dlVar.bRe();
                            boVar.m1100a(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 8) {
                            boVar.f902b = dlVar.bRe();
                            boVar.bZA(true);
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
                if (!boVar.m1101e()) {
                    throw new dj("Required field 'upload_traffic' was not found in serialized data! Struct: " + toString());
                } else if (boVar.m1102i()) {
                    boVar.m1103j();
                    return;
                } else {
                    throw new dj("Required field 'download_traffic' was not found in serialized data! Struct: " + toString());
                }
            }
        }
    }

    public void caT(dl dlVar, bo boVar) {
        boVar.m1103j();
        dlVar.bQO(bo.bAm);
        dlVar.bQP(bo.bAn);
        dlVar.mo971a(boVar.f901a);
        dlVar.mo997c();
        dlVar.bQP(bo.bAo);
        dlVar.mo971a(boVar.f902b);
        dlVar.mo997c();
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
