package p043u.aly;

import java.util.HashMap;
import java.util.Map.Entry;

class cb extends C1341b {
    private cb() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bXV(dlVar, (bc) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bXU(dlVar, (bc) cjVar);
    }

    public void bXU(dl dlVar, bc bcVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 13) {
                            dh n = dlVar.mo1005n();
                            bcVar.f827a = new HashMap(n.f986c * 2);
                            for (int i = 0; i < n.f986c; i++) {
                                String bRh = dlVar.bRh();
                                bd bdVar = new bd();
                                bdVar.bQD(dlVar);
                                bcVar.f827a.put(bRh, bdVar);
                            }
                            dlVar.bQW();
                            bcVar.m1009a(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 8) {
                            bcVar.f828b = dlVar.bRe();
                            bcVar.bZq(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 3:
                        if (l.f935b == (byte) 11) {
                            bcVar.f829c = dlVar.bRh();
                            bcVar.bZr(true);
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
                if (bcVar.m1013j()) {
                    bcVar.m1015n();
                    return;
                }
                throw new dj("Required field 'version' was not found in serialized data! Struct: " + toString());
            }
        }
    }

    public void bXV(dl dlVar, bc bcVar) {
        bcVar.m1015n();
        dlVar.bQO(bc.bAh);
        if (bcVar.f827a != null) {
            dlVar.bQP(bc.bAi);
            dlVar.bQQ(new dh((byte) 11, (byte) 12, bcVar.f827a.size()));
            for (Entry entry : bcVar.f827a.entrySet()) {
                dlVar.mo973a((String) entry.getKey());
                ((bd) entry.getValue()).bQE(dlVar);
            }
            dlVar.mo999e();
            dlVar.mo997c();
        }
        dlVar.bQP(bc.bAj);
        dlVar.mo971a(bcVar.f828b);
        dlVar.mo997c();
        if (bcVar.f829c != null) {
            dlVar.bQP(bc.bAk);
            dlVar.mo973a(bcVar.f829c);
            dlVar.mo997c();
        }
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
