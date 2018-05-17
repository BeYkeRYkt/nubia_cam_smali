package p043u.aly;

import java.util.ArrayList;
import java.util.BitSet;

class bI extends dB {
    private bI() {
    }

    public /* bridge */ /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bWi(dlVar, (be) cjVar);
    }

    public /* bridge */ /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bWj(dlVar, (be) cjVar);
    }

    public void bWi(dl dlVar, be beVar) {
        aC aCVar = (aC) dlVar;
        aCVar.mo973a(beVar.f842a);
        BitSet bitSet = new BitSet();
        if (beVar.m1031k()) {
            bitSet.set(0);
        }
        if (beVar.bXi()) {
            bitSet.set(1);
        }
        if (beVar.bXn()) {
            bitSet.set(2);
        }
        aCVar.bUw(bitSet, 3);
        if (beVar.m1031k()) {
            aCVar.mo971a(beVar.f843b.size());
            for (av bQE : beVar.f843b) {
                bQE.bQE(aCVar);
            }
        }
        if (beVar.bXi()) {
            aCVar.mo971a(beVar.f844c.size());
            for (ax bQE2 : beVar.f844c) {
                bQE2.bQE(aCVar);
            }
        }
        if (beVar.bXn()) {
            aCVar.mo971a(beVar.f845d.size());
            for (ax bQE22 : beVar.f845d) {
                bQE22.bQE(aCVar);
            }
        }
    }

    public void bWj(dl dlVar, be beVar) {
        int i;
        int i2 = 0;
        aC aCVar = (aC) dlVar;
        beVar.f842a = aCVar.bRh();
        beVar.m1029a(true);
        BitSet bUx = aCVar.bUx(3);
        if (bUx.get(0)) {
            bP bPVar;
            bPVar = new bP((byte) 12, aCVar.bRe());
            beVar.f843b = new ArrayList(bPVar.f800b);
            for (i = 0; i < bPVar.f800b; i++) {
                av avVar = new av();
                avVar.bQD(aCVar);
                beVar.f843b.add(avVar);
            }
            beVar.bXg(true);
        }
        if (bUx.get(1)) {
            bPVar = new bP((byte) 12, aCVar.bRe());
            beVar.f844c = new ArrayList(bPVar.f800b);
            for (i = 0; i < bPVar.f800b; i++) {
                ax axVar = new ax();
                axVar.bQD(aCVar);
                beVar.f844c.add(axVar);
            }
            beVar.bXj(true);
        }
        if (bUx.get(2)) {
            bP bPVar2 = new bP((byte) 12, aCVar.bRe());
            beVar.f845d = new ArrayList(bPVar2.f800b);
            while (i2 < bPVar2.f800b) {
                ax axVar2 = new ax();
                axVar2.bQD(aCVar);
                beVar.f845d.add(axVar2);
                i2++;
            }
            beVar.bXo(true);
        }
    }
}
