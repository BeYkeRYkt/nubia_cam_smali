package p043u.aly;

import java.util.BitSet;

class cI extends dB {
    private cI() {
    }

    public /* bridge */ /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bYQ(dlVar, (aq) cjVar);
    }

    public /* bridge */ /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bYR(dlVar, (aq) cjVar);
    }

    public void bYQ(dl dlVar, aq aqVar) {
        aC aCVar = (aC) dlVar;
        aCVar.mo973a(aqVar.f724a);
        aCVar.mo971a(aqVar.f728e.m1091a());
        aCVar.mo973a(aqVar.f729f);
        aCVar.mo973a(aqVar.f730g);
        BitSet bitSet = new BitSet();
        if (aqVar.m908i()) {
            bitSet.set(0);
        }
        if (aqVar.m909l()) {
            bitSet.set(1);
        }
        if (aqVar.bUK()) {
            bitSet.set(2);
        }
        if (aqVar.bUT()) {
            bitSet.set(3);
        }
        if (aqVar.bUW()) {
            bitSet.set(4);
        }
        if (aqVar.bUZ()) {
            bitSet.set(5);
        }
        aCVar.bUw(bitSet, 6);
        if (aqVar.m908i()) {
            aCVar.mo973a(aqVar.f725b);
        }
        if (aqVar.m909l()) {
            aCVar.mo971a(aqVar.f726c);
        }
        if (aqVar.bUK()) {
            aCVar.mo973a(aqVar.f727d);
        }
        if (aqVar.bUT()) {
            aCVar.mo973a(aqVar.f731h);
        }
        if (aqVar.bUW()) {
            aCVar.mo973a(aqVar.f732i);
        }
        if (aqVar.bUZ()) {
            aCVar.mo971a(aqVar.f733j);
        }
    }

    public void bYR(dl dlVar, aq aqVar) {
        aC aCVar = (aC) dlVar;
        aqVar.f724a = aCVar.bRh();
        aqVar.m906a(true);
        aqVar.f728e = bm.m1090a(aCVar.bRe());
        aqVar.bUN(true);
        aqVar.f729f = aCVar.bRh();
        aqVar.bUP(true);
        aqVar.f730g = aCVar.bRh();
        aqVar.bUR(true);
        BitSet bUx = aCVar.bUx(6);
        if (bUx.get(0)) {
            aqVar.f725b = aCVar.bRh();
            aqVar.bUH(true);
        }
        if (bUx.get(1)) {
            aqVar.f726c = aCVar.bRe();
            aqVar.bUI(true);
        }
        if (bUx.get(2)) {
            aqVar.f727d = aCVar.bRh();
            aqVar.bUL(true);
        }
        if (bUx.get(3)) {
            aqVar.f731h = aCVar.bRh();
            aqVar.bUU(true);
        }
        if (bUx.get(4)) {
            aqVar.f732i = aCVar.bRh();
            aqVar.bUX(true);
        }
        if (bUx.get(5)) {
            aqVar.f733j = aCVar.bRe();
            aqVar.bVa(true);
        }
    }
}
