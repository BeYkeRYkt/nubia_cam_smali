package p043u.aly;

class bL extends C1341b {
    private bL() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bXw(dlVar, (az) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bXv(dlVar, (az) cjVar);
    }

    public void bXv(dl dlVar, az azVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 11) {
                            azVar.f780a = dlVar.bRh();
                            azVar.m946a(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 11) {
                            azVar.f781b = dlVar.bRh();
                            azVar.bUb(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 3:
                        if (l.f935b == (byte) 11) {
                            azVar.f782c = dlVar.bRh();
                            azVar.bUd(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 4:
                        if (l.f935b == (byte) 10) {
                            azVar.f783d = dlVar.bRf();
                            azVar.bUf(true);
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
                if (azVar.bUe()) {
                    azVar.bUg();
                    return;
                }
                throw new dj("Required field 'ts' was not found in serialized data! Struct: " + toString());
            }
        }
    }

    public void bXw(dl dlVar, az azVar) {
        azVar.bUg();
        dlVar.bQO(az.bwf);
        if (azVar.f780a != null) {
            dlVar.bQP(az.bwg);
            dlVar.mo973a(azVar.f780a);
            dlVar.mo997c();
        }
        if (azVar.f781b != null && azVar.m948i()) {
            dlVar.bQP(az.bwh);
            dlVar.mo973a(azVar.f781b);
            dlVar.mo997c();
        }
        if (azVar.f782c != null) {
            dlVar.bQP(az.bwi);
            dlVar.mo973a(azVar.f782c);
            dlVar.mo997c();
        }
        dlVar.bQP(az.bwj);
        dlVar.mo972a(azVar.f783d);
        dlVar.mo997c();
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
