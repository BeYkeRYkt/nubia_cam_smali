package p043u.aly;

import java.util.HashMap;
import java.util.Map.Entry;

class cX extends C1341b {
    private cX() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bZi(dlVar, (ax) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bZh(dlVar, (ax) cjVar);
    }

    public void bZh(dl dlVar, ax axVar) {
        dlVar.mo1001j();
        while (true) {
            cB l = dlVar.mo1003l();
            if (l.f935b != (byte) 0) {
                switch (l.f936c) {
                    case (short) 1:
                        if (l.f935b == (byte) 11) {
                            axVar.f684a = dlVar.bRh();
                            axVar.m859a(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 2:
                        if (l.f935b == (byte) 13) {
                            dh n = dlVar.mo1005n();
                            axVar.f685b = new HashMap(n.f986c * 2);
                            for (int i = 0; i < n.f986c; i++) {
                                String bRh = dlVar.bRh();
                                bj bjVar = new bj();
                                bjVar.bQD(dlVar);
                                axVar.f685b.put(bRh, bjVar);
                            }
                            dlVar.bQW();
                            axVar.bYj(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 3:
                        if (l.f935b == (byte) 10) {
                            axVar.f686c = dlVar.bRf();
                            axVar.bYk(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 4:
                        if (l.f935b == (byte) 8) {
                            axVar.f687d = dlVar.bRe();
                            axVar.bYm(true);
                            break;
                        }
                        C1362Z.bUm(dlVar, l.f935b);
                        break;
                    case (short) 5:
                        if (l.f935b == (byte) 10) {
                            axVar.f688e = dlVar.bRf();
                            axVar.bYp(true);
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
                if (axVar.bYo()) {
                    axVar.bYq();
                    return;
                }
                throw new dj("Required field 'ts' was not found in serialized data! Struct: " + toString());
            }
        }
    }

    public void bZi(dl dlVar, ax axVar) {
        axVar.bYq();
        dlVar.bQO(ax.bzd);
        if (axVar.f684a != null) {
            dlVar.bQP(ax.bze);
            dlVar.mo973a(axVar.f684a);
            dlVar.mo997c();
        }
        if (axVar.f685b != null) {
            dlVar.bQP(ax.bzf);
            dlVar.bQQ(new dh((byte) 11, (byte) 12, axVar.f685b.size()));
            for (Entry entry : axVar.f685b.entrySet()) {
                dlVar.mo973a((String) entry.getKey());
                ((bj) entry.getValue()).bQE(dlVar);
            }
            dlVar.mo999e();
            dlVar.mo997c();
        }
        if (axVar.m860m()) {
            dlVar.bQP(ax.bzg);
            dlVar.mo972a(axVar.f686c);
            dlVar.mo997c();
        }
        if (axVar.bYl()) {
            dlVar.bQP(ax.bzh);
            dlVar.mo971a(axVar.f687d);
            dlVar.mo997c();
        }
        dlVar.bQP(ax.bzi);
        dlVar.mo972a(axVar.f688e);
        dlVar.mo997c();
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
