package p043u.aly;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map.Entry;

class C1353R extends C1341b {
    private C1353R() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bTF(dlVar, (bb) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bTE(dlVar, (bb) cjVar);
    }

    public void bTE(dl dlVar, bb bbVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                int i;
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 13) {
                            dh n = dlVar.mo1005n();
                            bbVar.f819a = new HashMap(n.f986c * 2);
                            for (i = 0; i < n.f986c; i++) {
                                String bRh = dlVar.bRh();
                                ba baVar = new ba();
                                baVar.bQD(dlVar);
                                bbVar.f819a.put(bRh, baVar);
                            }
                            dlVar.bQW();
                            bbVar.m1001a(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 15) {
                            bP bQX = dlVar.bQX();
                            bbVar.f820b = new ArrayList(bQX.f800b);
                            for (i = 0; i < bQX.f800b; i++) {
                                az azVar = new az();
                                azVar.bQD(dlVar);
                                bbVar.f820b.add(azVar);
                            }
                            dlVar.bQY();
                            bbVar.bQG(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 3:
                        if (l.f935b == (byte) 11) {
                            bbVar.f821c = dlVar.bRh();
                            bbVar.bQI(true);
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
                bbVar.bQJ();
                return;
            }
        }
    }

    public void bTF(dl dlVar, bb bbVar) {
        bbVar.bQJ();
        dlVar.bQO(bb.btx);
        if (bbVar.f819a != null) {
            dlVar.bQP(bb.bty);
            dlVar.bQQ(new dh((byte) 11, (byte) 12, bbVar.f819a.size()));
            for (Entry entry : bbVar.f819a.entrySet()) {
                dlVar.mo973a((String) entry.getKey());
                ((ba) entry.getValue()).bQE(dlVar);
            }
            dlVar.mo999e();
            dlVar.mo997c();
        }
        if (bbVar.f820b != null && bbVar.m1004l()) {
            dlVar.bQP(bb.btz);
            dlVar.bQR(new bP((byte) 12, bbVar.f820b.size()));
            for (az bQE : bbVar.f820b) {
                bQE.bQE(dlVar);
            }
            dlVar.mo1000f();
            dlVar.mo997c();
        }
        if (bbVar.f821c != null && bbVar.bQH()) {
            dlVar.bQP(bb.btA);
            dlVar.mo973a(bbVar.f821c);
            dlVar.mo997c();
        }
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
