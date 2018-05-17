package p043u.aly;

import com.umeng.analytics.ReportPolicy;

class bC extends C1341b {
    private bC() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bWa(dlVar, (at) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bVZ(dlVar, (at) cjVar);
    }

    public void bVZ(dl dlVar, at atVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 11) {
                            atVar.f754a = dlVar.bRh();
                            atVar.m931a(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 11) {
                            atVar.f755b = dlVar.bRh();
                            atVar.bZC(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 3:
                        if (l.f935b == (byte) 11) {
                            atVar.f756c = dlVar.bRh();
                            atVar.bZE(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 4:
                        if (l.f935b == (byte) 11) {
                            atVar.f757d = dlVar.bRh();
                            atVar.bZG(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 5:
                        if (l.f935b == (byte) 11) {
                            atVar.f758e = dlVar.bRh();
                            atVar.bZJ(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                        if (l.f935b == (byte) 11) {
                            atVar.f759f = dlVar.bRh();
                            atVar.bZM(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 7:
                        if (l.f935b == (byte) 11) {
                            atVar.f760g = dlVar.bRh();
                            atVar.bZP(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 8:
                        if (l.f935b == (byte) 11) {
                            atVar.f761h = dlVar.bRh();
                            atVar.bZS(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 9:
                        if (l.f935b == (byte) 12) {
                            atVar.f762i = new bk();
                            atVar.f762i.bQD(dlVar);
                            atVar.bZV(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 10:
                        if (l.f935b == (byte) 2) {
                            atVar.f763j = dlVar.bRb();
                            atVar.bZX(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 11:
                        if (l.f935b == (byte) 2) {
                            atVar.f764k = dlVar.bRb();
                            atVar.bZZ(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 12:
                        if (l.f935b == (byte) 11) {
                            atVar.f765l = dlVar.bRh();
                            atVar.cac(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 13:
                        if (l.f935b == (byte) 11) {
                            atVar.f766m = dlVar.bRh();
                            atVar.caf(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 14:
                        if (l.f935b == (byte) 10) {
                            atVar.f767n = dlVar.bRf();
                            atVar.cah(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 15:
                        if (l.f935b == (byte) 11) {
                            atVar.f768o = dlVar.bRh();
                            atVar.cak(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 16:
                        if (l.f935b == (byte) 11) {
                            atVar.f769p = dlVar.bRh();
                            atVar.cam(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 17:
                        if (l.f935b == (byte) 11) {
                            atVar.f770q = dlVar.bRh();
                            atVar.cap(true);
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
                atVar.caq();
                return;
            }
        }
    }

    public void bWa(dl dlVar, at atVar) {
        atVar.caq();
        dlVar.bQO(at.bAA);
        if (atVar.f754a != null && atVar.m933e()) {
            dlVar.bQP(at.bAB);
            dlVar.mo973a(atVar.f754a);
            dlVar.mo997c();
        }
        if (atVar.f755b != null && atVar.m934i()) {
            dlVar.bQP(at.bAC);
            dlVar.mo973a(atVar.f755b);
            dlVar.mo997c();
        }
        if (atVar.f756c != null && atVar.m935l()) {
            dlVar.bQP(at.bAD);
            dlVar.mo973a(atVar.f756c);
            dlVar.mo997c();
        }
        if (atVar.f757d != null && atVar.bZF()) {
            dlVar.bQP(at.bAE);
            dlVar.mo973a(atVar.f757d);
            dlVar.mo997c();
        }
        if (atVar.f758e != null && atVar.bZI()) {
            dlVar.bQP(at.bAF);
            dlVar.mo973a(atVar.f758e);
            dlVar.mo997c();
        }
        if (atVar.f759f != null && atVar.bZL()) {
            dlVar.bQP(at.bAG);
            dlVar.mo973a(atVar.f759f);
            dlVar.mo997c();
        }
        if (atVar.f760g != null && atVar.bZO()) {
            dlVar.bQP(at.bAH);
            dlVar.mo973a(atVar.f760g);
            dlVar.mo997c();
        }
        if (atVar.f761h != null && atVar.bZR()) {
            dlVar.bQP(at.bAI);
            dlVar.mo973a(atVar.f761h);
            dlVar.mo997c();
        }
        if (atVar.f762i != null && atVar.bZU()) {
            dlVar.bQP(at.bAJ);
            atVar.f762i.bQE(dlVar);
            dlVar.mo997c();
        }
        if (atVar.bZW()) {
            dlVar.bQP(at.bAK);
            dlVar.mo974a(atVar.f763j);
            dlVar.mo997c();
        }
        if (atVar.bZY()) {
            dlVar.bQP(at.bAL);
            dlVar.mo974a(atVar.f764k);
            dlVar.mo997c();
        }
        if (atVar.f765l != null && atVar.cab()) {
            dlVar.bQP(at.bAM);
            dlVar.mo973a(atVar.f765l);
            dlVar.mo997c();
        }
        if (atVar.f766m != null && atVar.cae()) {
            dlVar.bQP(at.bAN);
            dlVar.mo973a(atVar.f766m);
            dlVar.mo997c();
        }
        if (atVar.cag()) {
            dlVar.bQP(at.bAO);
            dlVar.mo972a(atVar.f767n);
            dlVar.mo997c();
        }
        if (atVar.f768o != null && atVar.caj()) {
            dlVar.bQP(at.bAP);
            dlVar.mo973a(atVar.f768o);
            dlVar.mo997c();
        }
        if (atVar.f769p != null && atVar.m928Y()) {
            dlVar.bQP(at.bAQ);
            dlVar.mo973a(atVar.f769p);
            dlVar.mo997c();
        }
        if (atVar.f770q != null && atVar.cao()) {
            dlVar.bQP(at.bAR);
            dlVar.mo973a(atVar.f770q);
            dlVar.mo997c();
        }
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
