package p043u.aly;

import java.util.BitSet;

class df extends dB {
    private df() {
    }

    public /* bridge */ /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bZo(dlVar, (br) cjVar);
    }

    public /* bridge */ /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bZp(dlVar, (br) cjVar);
    }

    public void bZo(dl dlVar, br brVar) {
        aC aCVar = (aC) dlVar;
        aCVar.mo973a(brVar.f923a);
        aCVar.mo973a(brVar.f924b);
        aCVar.mo973a(brVar.f925c);
        aCVar.mo971a(brVar.f926d);
        aCVar.mo971a(brVar.f927e);
        aCVar.mo971a(brVar.f928f);
        aCVar.bQV(brVar.f929g);
        aCVar.mo973a(brVar.f930h);
        aCVar.mo973a(brVar.f931i);
        BitSet bitSet = new BitSet();
        if (brVar.cbq()) {
            bitSet.set(0);
        }
        aCVar.bUw(bitSet, 1);
        if (brVar.cbq()) {
            aCVar.mo971a(brVar.f932j);
        }
    }

    public void bZp(dl dlVar, br brVar) {
        aC aCVar = (aC) dlVar;
        brVar.f923a = aCVar.bRh();
        brVar.m1121a(true);
        brVar.f924b = aCVar.bRh();
        brVar.caY(true);
        brVar.f925c = aCVar.bRh();
        brVar.cba(true);
        brVar.f926d = aCVar.bRe();
        brVar.cbc(true);
        brVar.f927e = aCVar.bRe();
        brVar.cbf(true);
        brVar.f928f = aCVar.bRe();
        brVar.cbi(true);
        brVar.f929g = aCVar.bRj();
        brVar.cbk(true);
        brVar.f930h = aCVar.bRh();
        brVar.cbm(true);
        brVar.f931i = aCVar.bRh();
        brVar.cbo(true);
        if (aCVar.bUx(1).get(0)) {
            brVar.f932j = aCVar.bRe();
            brVar.cbr(true);
        }
    }
}
