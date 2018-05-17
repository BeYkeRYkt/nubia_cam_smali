package p043u.aly;

import java.util.BitSet;

class C1347K extends dB {
    private C1347K() {
    }

    public /* bridge */ /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bSQ(dlVar, (bd) cjVar);
    }

    public /* bridge */ /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bSR(dlVar, (bd) cjVar);
    }

    public void bSQ(dl dlVar, bd bdVar) {
        aC aCVar = (aC) dlVar;
        aCVar.mo972a(bdVar.f836b);
        aCVar.mo973a(bdVar.f837c);
        BitSet bitSet = new BitSet();
        if (bdVar.m1021e()) {
            bitSet.set(0);
        }
        aCVar.bUw(bitSet, 1);
        if (bdVar.m1021e()) {
            aCVar.mo973a(bdVar.f835a);
        }
    }

    public void bSR(dl dlVar, bd bdVar) {
        aC aCVar = (aC) dlVar;
        bdVar.f836b = aCVar.bRf();
        bdVar.cbS(true);
        bdVar.f837c = aCVar.bRh();
        bdVar.cbT(true);
        if (aCVar.bUx(1).get(0)) {
            bdVar.f835a = aCVar.bRh();
            bdVar.m1019a(true);
        }
    }
}
