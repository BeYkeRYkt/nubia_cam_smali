package p043u.aly;

import java.util.ArrayList;
import java.util.BitSet;

class aX extends dB {
    private aX() {
    }

    public /* bridge */ /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bVJ(dlVar, (bn) cjVar);
    }

    public /* bridge */ /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bVK(dlVar, (bn) cjVar);
    }

    public void bVJ(dl dlVar, bn bnVar) {
        aC aCVar = (aC) dlVar;
        aCVar.mo973a(bnVar.f700a);
        aCVar.mo972a(bnVar.f701b);
        aCVar.mo972a(bnVar.f702c);
        aCVar.mo972a(bnVar.f703d);
        BitSet bitSet = new BitSet();
        if (bnVar.bRK()) {
            bitSet.set(0);
        }
        if (bnVar.bRO()) {
            bitSet.set(1);
        }
        if (bnVar.bRR()) {
            bitSet.set(2);
        }
        aCVar.bUw(bitSet, 3);
        if (bnVar.bRK()) {
            aCVar.mo971a(bnVar.f704e.size());
            for (bi bQE : bnVar.f704e) {
                bQE.bQE(aCVar);
            }
        }
        if (bnVar.bRO()) {
            aCVar.mo971a(bnVar.f705f.size());
            for (bg bQE2 : bnVar.f705f) {
                bQE2.bQE(aCVar);
            }
        }
        if (bnVar.bRR()) {
            bnVar.f706g.bQE(aCVar);
        }
    }

    public void bVK(dl dlVar, bn bnVar) {
        int i = 0;
        aC aCVar = (aC) dlVar;
        bnVar.f700a = aCVar.bRh();
        bnVar.m880a(true);
        bnVar.f701b = aCVar.bRf();
        bnVar.bRD(true);
        bnVar.f702c = aCVar.bRf();
        bnVar.bRF(true);
        bnVar.f703d = aCVar.bRf();
        bnVar.bRI(true);
        BitSet bUx = aCVar.bUx(3);
        if (bUx.get(0)) {
            bP bPVar = new bP((byte) 12, aCVar.bRe());
            bnVar.f704e = new ArrayList(bPVar.f800b);
            for (int i2 = 0; i2 < bPVar.f800b; i2++) {
                bi biVar = new bi();
                biVar.bQD(aCVar);
                bnVar.f704e.add(biVar);
            }
            bnVar.bRL(true);
        }
        if (bUx.get(1)) {
            bP bPVar2 = new bP((byte) 12, aCVar.bRe());
            bnVar.f705f = new ArrayList(bPVar2.f800b);
            while (i < bPVar2.f800b) {
                bg bgVar = new bg();
                bgVar.bQD(aCVar);
                bnVar.f705f.add(bgVar);
                i++;
            }
            bnVar.bRP(true);
        }
        if (bUx.get(2)) {
            bnVar.f706g = new bo();
            bnVar.f706g.bQD(aCVar);
            bnVar.bRS(true);
        }
    }
}
