package p043u.aly;

import java.util.BitSet;

class aO extends dB {
    private aO() {
    }

    public /* bridge */ /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bVB(dlVar, (ar) cjVar);
    }

    public /* bridge */ /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bVC(dlVar, (ar) cjVar);
    }

    public void bVB(dl dlVar, ar arVar) {
        aC aCVar = (aC) dlVar;
        aCVar.mo971a(arVar.f739a);
        aCVar.mo971a(arVar.f740b);
        BitSet bitSet = new BitSet();
        if (arVar.m917l()) {
            bitSet.set(0);
        }
        aCVar.bUw(bitSet, 1);
        if (arVar.m917l()) {
            aCVar.mo971a(arVar.f741c);
        }
    }

    public void bVC(dl dlVar, ar arVar) {
        aC aCVar = (aC) dlVar;
        arVar.f739a = aCVar.bRe();
        arVar.m914a(true);
        arVar.f740b = aCVar.bRe();
        arVar.bYF(true);
        if (aCVar.bUx(1).get(0)) {
            arVar.f741c = aCVar.bRe();
            arVar.bYH(true);
        }
    }
}
