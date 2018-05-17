package p043u.aly;

class dv extends C1341b {
    private dv() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        caX(dlVar, (bg) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        caW(dlVar, (bg) cjVar);
    }

    public void caW(dl dlVar, bg bgVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 4) {
                            bgVar.f856a = dlVar.bRg();
                            bgVar.m1046a(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 4) {
                            bgVar.f857b = dlVar.bRg();
                            bgVar.bSk(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 3:
                        if (l.f935b == (byte) 10) {
                            bgVar.f858c = dlVar.bRf();
                            bgVar.bSl(true);
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
                if (!bgVar.m1047e()) {
                    throw new dj("Required field 'lat' was not found in serialized data! Struct: " + toString());
                } else if (!bgVar.m1048i()) {
                    throw new dj("Required field 'lng' was not found in serialized data! Struct: " + toString());
                } else if (bgVar.m1049l()) {
                    bgVar.m1050m();
                    return;
                } else {
                    throw new dj("Required field 'ts' was not found in serialized data! Struct: " + toString());
                }
            }
        }
    }

    public void caX(dl dlVar, bg bgVar) {
        bgVar.m1050m();
        dlVar.bQO(bg.buQ);
        dlVar.bQP(bg.buR);
        dlVar.bQU(bgVar.f856a);
        dlVar.mo997c();
        dlVar.bQP(bg.buS);
        dlVar.bQU(bgVar.f857b);
        dlVar.mo997c();
        dlVar.bQP(bg.buT);
        dlVar.mo972a(bgVar.f858c);
        dlVar.mo997c();
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
