package p043u.aly;

import java.util.BitSet;

class cK extends dB {
    private cK() {
    }

    public /* bridge */ /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bYS(dlVar, (as) cjVar);
    }

    public /* bridge */ /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bYT(dlVar, (as) cjVar);
    }

    public void bYS(dl dlVar, as asVar) {
        aC aCVar = (aC) dlVar;
        BitSet bitSet = new BitSet();
        if (asVar.m924e()) {
            bitSet.set(0);
        }
        aCVar.bUw(bitSet, 1);
        if (asVar.m924e()) {
            asVar.f748a.bQE(aCVar);
        }
    }

    public void bYT(dl dlVar, as asVar) {
        aC aCVar = (aC) dlVar;
        if (aCVar.bUx(1).get(0)) {
            asVar.f748a = new bf();
            asVar.f748a.bQD(aCVar);
            asVar.m923a(true);
        }
    }
}
