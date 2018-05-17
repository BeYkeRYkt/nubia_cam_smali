package p043u.aly;

import com.umeng.analytics.ReportPolicy;

class aa extends C1341b {
    private aa() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bUp(dlVar, (bh) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bUo(dlVar, (bh) cjVar);
    }

    public void bUo(dl dlVar, bh bhVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 8) {
                            bhVar.f864a = dlVar.bRe();
                            bhVar.m1055a(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 11) {
                            bhVar.f865b = dlVar.bRh();
                            bhVar.bST(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 3:
                        if (l.f935b == (byte) 11) {
                            bhVar.f866c = dlVar.bRh();
                            bhVar.bSU(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 4:
                        if (l.f935b == (byte) 4) {
                            bhVar.f867d = dlVar.bRg();
                            bhVar.bSW(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 5:
                        if (l.f935b == (byte) 4) {
                            bhVar.f868e = dlVar.bRg();
                            bhVar.bSY(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                        if (l.f935b == (byte) 11) {
                            bhVar.f869f = dlVar.bRh();
                            bhVar.bTb(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 7:
                        if (l.f935b == (byte) 8) {
                            bhVar.f870g = dlVar.bRe();
                            bhVar.bTd(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 8:
                        if (l.f935b == (byte) 11) {
                            bhVar.f871h = dlVar.bRh();
                            bhVar.bTf(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 9:
                        if (l.f935b == (byte) 8) {
                            bhVar.f872i = an.m886a(dlVar.bRe());
                            bhVar.bTi(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 10:
                        if (l.f935b == (byte) 11) {
                            bhVar.f873j = dlVar.bRh();
                            bhVar.bTl(true);
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
                bhVar.bTm();
                return;
            }
        }
    }

    public void bUp(dl dlVar, bh bhVar) {
        bhVar.bTm();
        dlVar.bQO(bh.bvs);
        if (bhVar.m1057e()) {
            dlVar.bQP(bh.bvt);
            dlVar.mo971a(bhVar.f864a);
            dlVar.mo997c();
        }
        if (bhVar.f865b != null && bhVar.m1058i()) {
            dlVar.bQP(bh.bvu);
            dlVar.mo973a(bhVar.f865b);
            dlVar.mo997c();
        }
        if (bhVar.f866c != null && bhVar.m1059l()) {
            dlVar.bQP(bh.bvv);
            dlVar.mo973a(bhVar.f866c);
            dlVar.mo997c();
        }
        if (bhVar.bSV()) {
            dlVar.bQP(bh.bvw);
            dlVar.bQU(bhVar.f867d);
            dlVar.mo997c();
        }
        if (bhVar.bSX()) {
            dlVar.bQP(bh.bvx);
            dlVar.bQU(bhVar.f868e);
            dlVar.mo997c();
        }
        if (bhVar.f869f != null && bhVar.bTa()) {
            dlVar.bQP(bh.bvy);
            dlVar.mo973a(bhVar.f869f);
            dlVar.mo997c();
        }
        if (bhVar.bTc()) {
            dlVar.bQP(bh.bvz);
            dlVar.mo971a(bhVar.f870g);
            dlVar.mo997c();
        }
        if (bhVar.f871h != null && bhVar.bTe()) {
            dlVar.bQP(bh.bvA);
            dlVar.mo973a(bhVar.f871h);
            dlVar.mo997c();
        }
        if (bhVar.f872i != null && bhVar.bTh()) {
            dlVar.bQP(bh.bvB);
            dlVar.mo971a(bhVar.f872i.m887a());
            dlVar.mo997c();
        }
        if (bhVar.f873j != null && bhVar.bTk()) {
            dlVar.bQP(bh.bvC);
            dlVar.mo973a(bhVar.f873j);
            dlVar.mo997c();
        }
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
