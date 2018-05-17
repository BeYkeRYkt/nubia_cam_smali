package p043u.aly;

import java.util.BitSet;

class dy extends dB {
    private dy() {
    }

    public /* bridge */ /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        cbE(dlVar, (av) cjVar);
    }

    public /* bridge */ /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        cbF(dlVar, (av) cjVar);
    }

    public void cbE(dl dlVar, av avVar) {
        aC aCVar = (aC) dlVar;
        aCVar.mo972a(avVar.f692a);
        aCVar.mo973a(avVar.f693b);
        BitSet bitSet = new BitSet();
        if (avVar.m865l()) {
            bitSet.set(0);
        }
        aCVar.bUw(bitSet, 1);
        if (avVar.m865l()) {
            aCVar.mo971a(avVar.f694c.m939a());
        }
    }

    public void cbF(dl dlVar, av avVar) {
        aC aCVar = (aC) dlVar;
        avVar.f692a = aCVar.bRf();
        avVar.cbL(true);
        avVar.f693b = aCVar.bRh();
        avVar.cbM(true);
        if (aCVar.bUx(1).get(0)) {
            avVar.f694c = aw.m938a(aCVar.bRe());
            avVar.cbO(true);
        }
    }
}
