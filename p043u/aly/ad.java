package p043u.aly;

import com.umeng.analytics.ReportPolicy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map.Entry;

class ad extends C1341b {
    private ad() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bUr(dlVar, (bp) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bUq(dlVar, (bp) cjVar);
    }

    public void bUq(dl dlVar, bp bpVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                bP bQX;
                int i;
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 12) {
                            bpVar.f907a = new ar();
                            bpVar.f907a.bQD(dlVar);
                            bpVar.m1109a(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 12) {
                            bpVar.f908b = new aq();
                            bpVar.f908b.bQD(dlVar);
                            bpVar.bWm(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 3:
                        if (l.f935b == (byte) 12) {
                            bpVar.f909c = new at();
                            bpVar.f909c.bQD(dlVar);
                            bpVar.bWo(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 4:
                        if (l.f935b == (byte) 12) {
                            bpVar.f910d = new bh();
                            bpVar.f910d.bQD(dlVar);
                            bpVar.bWq(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 5:
                        if (l.f935b == (byte) 12) {
                            bpVar.f911e = new ao();
                            bpVar.f911e.bQD(dlVar);
                            bpVar.bWt(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                        if (l.f935b == (byte) 15) {
                            bQX = dlVar.bQX();
                            bpVar.f912f = new ArrayList(bQX.f800b);
                            for (i = 0; i < bQX.f800b; i++) {
                                be beVar = new be();
                                beVar.bQD(dlVar);
                                bpVar.f912f.add(beVar);
                            }
                            dlVar.bQY();
                            bpVar.bWy(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 7:
                        if (l.f935b == (byte) 15) {
                            bQX = dlVar.bQX();
                            bpVar.f913g = new ArrayList(bQX.f800b);
                            for (i = 0; i < bQX.f800b; i++) {
                                bn bnVar = new bn();
                                bnVar.bQD(dlVar);
                                bpVar.f913g.add(bnVar);
                            }
                            dlVar.bQY();
                            bpVar.bWD(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 8:
                        if (l.f935b == (byte) 12) {
                            bpVar.f914h = new bc();
                            bpVar.f914h.bQD(dlVar);
                            bpVar.bWG(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 9:
                        if (l.f935b == (byte) 12) {
                            bpVar.f915i = new bb();
                            bpVar.f915i.bQD(dlVar);
                            bpVar.bWJ(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 10:
                        if (l.f935b == (byte) 12) {
                            bpVar.f916j = new ap();
                            bpVar.f916j.bQD(dlVar);
                            bpVar.bWM(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 11:
                        if (l.f935b == (byte) 12) {
                            bpVar.f917k = new as();
                            bpVar.f917k.bQD(dlVar);
                            bpVar.bWP(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 12:
                        if (l.f935b == (byte) 13) {
                            dh n = dlVar.mo1005n();
                            bpVar.f918l = new HashMap(n.f986c * 2);
                            for (i = 0; i < n.f986c; i++) {
                                bpVar.f918l.put(dlVar.bRh(), Integer.valueOf(dlVar.bRe()));
                            }
                            dlVar.bQW();
                            bpVar.bWS(true);
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
                bpVar.bWT();
                return;
            }
        }
    }

    public void bUr(dl dlVar, bp bpVar) {
        bpVar.bWT();
        dlVar.bQO(bp.bxS);
        if (bpVar.f907a != null) {
            dlVar.bQP(bp.bxT);
            bpVar.f907a.bQE(dlVar);
            dlVar.mo997c();
        }
        if (bpVar.f908b != null) {
            dlVar.bQP(bp.bxU);
            bpVar.f908b.bQE(dlVar);
            dlVar.mo997c();
        }
        if (bpVar.f909c != null) {
            dlVar.bQP(bp.bxV);
            bpVar.f909c.bQE(dlVar);
            dlVar.mo997c();
        }
        if (bpVar.f910d != null) {
            dlVar.bQP(bp.bxW);
            bpVar.f910d.bQE(dlVar);
            dlVar.mo997c();
        }
        if (bpVar.f911e != null && bpVar.bWs()) {
            dlVar.bQP(bp.bxX);
            bpVar.f911e.bQE(dlVar);
            dlVar.mo997c();
        }
        if (bpVar.f912f != null && bpVar.bWx()) {
            dlVar.bQP(bp.bxY);
            dlVar.bQR(new bP((byte) 12, bpVar.f912f.size()));
            for (be bQE : bpVar.f912f) {
                bQE.bQE(dlVar);
            }
            dlVar.mo1000f();
            dlVar.mo997c();
        }
        if (bpVar.f913g != null && bpVar.bWC()) {
            dlVar.bQP(bp.bxZ);
            dlVar.bQR(new bP((byte) 12, bpVar.f913g.size()));
            for (bn bQE2 : bpVar.f913g) {
                bQE2.bQE(dlVar);
            }
            dlVar.mo1000f();
            dlVar.mo997c();
        }
        if (bpVar.f914h != null && bpVar.bWF()) {
            dlVar.bQP(bp.bya);
            bpVar.f914h.bQE(dlVar);
            dlVar.mo997c();
        }
        if (bpVar.f915i != null && bpVar.bWI()) {
            dlVar.bQP(bp.byb);
            bpVar.f915i.bQE(dlVar);
            dlVar.mo997c();
        }
        if (bpVar.f916j != null && bpVar.bWL()) {
            dlVar.bQP(bp.byc);
            bpVar.f916j.bQE(dlVar);
            dlVar.mo997c();
        }
        if (bpVar.f917k != null && bpVar.bWO()) {
            dlVar.bQP(bp.byd);
            bpVar.f917k.bQE(dlVar);
            dlVar.mo997c();
        }
        if (bpVar.f918l != null && bpVar.bWR()) {
            dlVar.bQP(bp.bye);
            dlVar.bQQ(new dh((byte) 11, (byte) 8, bpVar.f918l.size()));
            for (Entry entry : bpVar.f918l.entrySet()) {
                dlVar.mo973a((String) entry.getKey());
                dlVar.mo971a(((Integer) entry.getValue()).intValue());
            }
            dlVar.mo999e();
            dlVar.mo997c();
        }
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
