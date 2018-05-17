package p043u.aly;

import com.umeng.analytics.ReportPolicy;

class dz extends C1341b {
    private dz() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        cbH(dlVar, (br) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        cbG(dlVar, (br) cjVar);
    }

    public void cbG(dl dlVar, br brVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 11) {
                            brVar.f923a = dlVar.bRh();
                            brVar.m1121a(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 11) {
                            brVar.f924b = dlVar.bRh();
                            brVar.caY(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 3:
                        if (l.f935b == (byte) 11) {
                            brVar.f925c = dlVar.bRh();
                            brVar.cba(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 4:
                        if (l.f935b == (byte) 8) {
                            brVar.f926d = dlVar.bRe();
                            brVar.cbc(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 5:
                        if (l.f935b == (byte) 8) {
                            brVar.f927e = dlVar.bRe();
                            brVar.cbf(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                        if (l.f935b == (byte) 8) {
                            brVar.f928f = dlVar.bRe();
                            brVar.cbi(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 7:
                        if (l.f935b == (byte) 11) {
                            brVar.f929g = dlVar.bRj();
                            brVar.cbk(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 8:
                        if (l.f935b == (byte) 11) {
                            brVar.f930h = dlVar.bRh();
                            brVar.cbm(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 9:
                        if (l.f935b == (byte) 11) {
                            brVar.f931i = dlVar.bRh();
                            brVar.cbo(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 10:
                        if (l.f935b == (byte) 8) {
                            brVar.f932j = dlVar.bRe();
                            brVar.cbr(true);
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
                if (!brVar.cbb()) {
                    throw new dj("Required field 'serial_num' was not found in serialized data! Struct: " + toString());
                } else if (!brVar.cbe()) {
                    throw new dj("Required field 'ts_secs' was not found in serialized data! Struct: " + toString());
                } else if (brVar.cbh()) {
                    brVar.cbs();
                    return;
                } else {
                    throw new dj("Required field 'length' was not found in serialized data! Struct: " + toString());
                }
            }
        }
    }

    public void cbH(dl dlVar, br brVar) {
        brVar.cbs();
        dlVar.bQO(br.bBr);
        if (brVar.f923a != null) {
            dlVar.bQP(br.bBs);
            dlVar.mo973a(brVar.f923a);
            dlVar.mo997c();
        }
        if (brVar.f924b != null) {
            dlVar.bQP(br.bBt);
            dlVar.mo973a(brVar.f924b);
            dlVar.mo997c();
        }
        if (brVar.f925c != null) {
            dlVar.bQP(br.bBu);
            dlVar.mo973a(brVar.f925c);
            dlVar.mo997c();
        }
        dlVar.bQP(br.bBv);
        dlVar.mo971a(brVar.f926d);
        dlVar.mo997c();
        dlVar.bQP(br.bBw);
        dlVar.mo971a(brVar.f927e);
        dlVar.mo997c();
        dlVar.bQP(br.bBx);
        dlVar.mo971a(brVar.f928f);
        dlVar.mo997c();
        if (brVar.f929g != null) {
            dlVar.bQP(br.bBy);
            dlVar.bQV(brVar.f929g);
            dlVar.mo997c();
        }
        if (brVar.f930h != null) {
            dlVar.bQP(br.bBz);
            dlVar.mo973a(brVar.f930h);
            dlVar.mo997c();
        }
        if (brVar.f931i != null) {
            dlVar.bQP(br.bBA);
            dlVar.mo973a(brVar.f931i);
            dlVar.mo997c();
        }
        if (brVar.cbq()) {
            dlVar.bQP(br.bBB);
            dlVar.mo971a(brVar.f932j);
            dlVar.mo997c();
        }
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
