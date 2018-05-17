package p043u.aly;

import java.util.BitSet;

class cG extends dB {
    private cG() {
    }

    public /* bridge */ /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bYO(dlVar, (bh) cjVar);
    }

    public /* bridge */ /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bYP(dlVar, (bh) cjVar);
    }

    public void bYO(dl dlVar, bh bhVar) {
        aC aCVar = (aC) dlVar;
        BitSet bitSet = new BitSet();
        if (bhVar.m1057e()) {
            bitSet.set(0);
        }
        if (bhVar.m1058i()) {
            bitSet.set(1);
        }
        if (bhVar.m1059l()) {
            bitSet.set(2);
        }
        if (bhVar.bSV()) {
            bitSet.set(3);
        }
        if (bhVar.bSX()) {
            bitSet.set(4);
        }
        if (bhVar.bTa()) {
            bitSet.set(5);
        }
        if (bhVar.bTc()) {
            bitSet.set(6);
        }
        if (bhVar.bTe()) {
            bitSet.set(7);
        }
        if (bhVar.bTh()) {
            bitSet.set(8);
        }
        if (bhVar.bTk()) {
            bitSet.set(9);
        }
        aCVar.bUw(bitSet, 10);
        if (bhVar.m1057e()) {
            aCVar.mo971a(bhVar.f864a);
        }
        if (bhVar.m1058i()) {
            aCVar.mo973a(bhVar.f865b);
        }
        if (bhVar.m1059l()) {
            aCVar.mo973a(bhVar.f866c);
        }
        if (bhVar.bSV()) {
            aCVar.bQU(bhVar.f867d);
        }
        if (bhVar.bSX()) {
            aCVar.bQU(bhVar.f868e);
        }
        if (bhVar.bTa()) {
            aCVar.mo973a(bhVar.f869f);
        }
        if (bhVar.bTc()) {
            aCVar.mo971a(bhVar.f870g);
        }
        if (bhVar.bTe()) {
            aCVar.mo973a(bhVar.f871h);
        }
        if (bhVar.bTh()) {
            aCVar.mo971a(bhVar.f872i.m887a());
        }
        if (bhVar.bTk()) {
            aCVar.mo973a(bhVar.f873j);
        }
    }

    public void bYP(dl dlVar, bh bhVar) {
        aC aCVar = (aC) dlVar;
        BitSet bUx = aCVar.bUx(10);
        if (bUx.get(0)) {
            bhVar.f864a = aCVar.bRe();
            bhVar.m1055a(true);
        }
        if (bUx.get(1)) {
            bhVar.f865b = aCVar.bRh();
            bhVar.bST(true);
        }
        if (bUx.get(2)) {
            bhVar.f866c = aCVar.bRh();
            bhVar.bSU(true);
        }
        if (bUx.get(3)) {
            bhVar.f867d = aCVar.bRg();
            bhVar.bSW(true);
        }
        if (bUx.get(4)) {
            bhVar.f868e = aCVar.bRg();
            bhVar.bSY(true);
        }
        if (bUx.get(5)) {
            bhVar.f869f = aCVar.bRh();
            bhVar.bTb(true);
        }
        if (bUx.get(6)) {
            bhVar.f870g = aCVar.bRe();
            bhVar.bTd(true);
        }
        if (bUx.get(7)) {
            bhVar.f871h = aCVar.bRh();
            bhVar.bTf(true);
        }
        if (bUx.get(8)) {
            bhVar.f872i = an.m886a(aCVar.bRe());
            bhVar.bTi(true);
        }
        if (bUx.get(9)) {
            bhVar.f873j = aCVar.bRh();
            bhVar.bTl(true);
        }
    }
}
