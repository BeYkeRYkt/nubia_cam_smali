package p043u.aly;

import java.util.BitSet;

class C1356U extends dB {
    private C1356U() {
    }

    public /* bridge */ /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bTJ(dlVar, (bl) cjVar);
    }

    public /* bridge */ /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bTK(dlVar, (bl) cjVar);
    }

    public void bTJ(dl dlVar, bl blVar) {
        aC aCVar = (aC) dlVar;
        aCVar.mo971a(blVar.f891a);
        BitSet bitSet = new BitSet();
        if (blVar.m1086i()) {
            bitSet.set(0);
        }
        if (blVar.m1088l()) {
            bitSet.set(1);
        }
        aCVar.bUw(bitSet, 2);
        if (blVar.m1086i()) {
            aCVar.mo973a(blVar.f892b);
        }
        if (blVar.m1088l()) {
            blVar.f893c.bQE(aCVar);
        }
    }

    public void bTK(dl dlVar, bl blVar) {
        aC aCVar = (aC) dlVar;
        blVar.f891a = aCVar.bRe();
        blVar.m1083a(true);
        BitSet bUx = aCVar.bUx(2);
        if (bUx.get(0)) {
            blVar.f892b = aCVar.bRh();
            blVar.bVp(true);
        }
        if (bUx.get(1)) {
            blVar.f893c = new bc();
            blVar.f893c.bQD(aCVar);
            blVar.bVq(true);
        }
    }
}
