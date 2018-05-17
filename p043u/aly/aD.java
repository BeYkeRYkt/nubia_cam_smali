package p043u.aly;

import com.umeng.analytics.ReportPolicy;

class aD extends C1341b {
    private aD() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bUG(dlVar, (aq) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bUF(dlVar, (aq) cjVar);
    }

    public void bUF(dl dlVar, aq aqVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 11) {
                            aqVar.f724a = dlVar.bRh();
                            aqVar.m906a(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 11) {
                            aqVar.f725b = dlVar.bRh();
                            aqVar.bUH(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 3:
                        if (l.f935b == (byte) 8) {
                            aqVar.f726c = dlVar.bRe();
                            aqVar.bUI(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 4:
                        if (l.f935b == (byte) 11) {
                            aqVar.f727d = dlVar.bRh();
                            aqVar.bUL(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 5:
                        if (l.f935b == (byte) 8) {
                            aqVar.f728e = bm.m1090a(dlVar.bRe());
                            aqVar.bUN(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                        if (l.f935b == (byte) 11) {
                            aqVar.f729f = dlVar.bRh();
                            aqVar.bUP(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 7:
                        if (l.f935b == (byte) 11) {
                            aqVar.f730g = dlVar.bRh();
                            aqVar.bUR(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 8:
                        if (l.f935b == (byte) 11) {
                            aqVar.f731h = dlVar.bRh();
                            aqVar.bUU(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 9:
                        if (l.f935b == (byte) 11) {
                            aqVar.f732i = dlVar.bRh();
                            aqVar.bUX(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 10:
                        if (l.f935b == (byte) 8) {
                            aqVar.f733j = dlVar.bRe();
                            aqVar.bVa(true);
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
                aqVar.bVb();
                return;
            }
        }
    }

    public void bUG(dl dlVar, aq aqVar) {
        aqVar.bVb();
        dlVar.bQO(aq.bwx);
        if (aqVar.f724a != null) {
            dlVar.bQP(aq.bwy);
            dlVar.mo973a(aqVar.f724a);
            dlVar.mo997c();
        }
        if (aqVar.f725b != null && aqVar.m908i()) {
            dlVar.bQP(aq.bwz);
            dlVar.mo973a(aqVar.f725b);
            dlVar.mo997c();
        }
        if (aqVar.m909l()) {
            dlVar.bQP(aq.bwA);
            dlVar.mo971a(aqVar.f726c);
            dlVar.mo997c();
        }
        if (aqVar.f727d != null && aqVar.bUK()) {
            dlVar.bQP(aq.bwB);
            dlVar.mo973a(aqVar.f727d);
            dlVar.mo997c();
        }
        if (aqVar.f728e != null) {
            dlVar.bQP(aq.bwC);
            dlVar.mo971a(aqVar.f728e.m1091a());
            dlVar.mo997c();
        }
        if (aqVar.f729f != null) {
            dlVar.bQP(aq.bwD);
            dlVar.mo973a(aqVar.f729f);
            dlVar.mo997c();
        }
        if (aqVar.f730g != null) {
            dlVar.bQP(aq.bwE);
            dlVar.mo973a(aqVar.f730g);
            dlVar.mo997c();
        }
        if (aqVar.f731h != null && aqVar.bUT()) {
            dlVar.bQP(aq.bwF);
            dlVar.mo973a(aqVar.f731h);
            dlVar.mo997c();
        }
        if (aqVar.f732i != null && aqVar.bUW()) {
            dlVar.bQP(aq.bwG);
            dlVar.mo973a(aqVar.f732i);
            dlVar.mo997c();
        }
        if (aqVar.bUZ()) {
            dlVar.bQP(aq.bwH);
            dlVar.mo971a(aqVar.f733j);
            dlVar.mo997c();
        }
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
