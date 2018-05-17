package p043u.aly;

import java.util.BitSet;
import java.util.HashMap;
import java.util.Map.Entry;

class C1343G extends dB {
    private C1343G() {
    }

    public /* bridge */ /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bSu(dlVar, (ax) cjVar);
    }

    public /* bridge */ /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bSv(dlVar, (ax) cjVar);
    }

    public void bSu(dl dlVar, ax axVar) {
        aC aCVar = (aC) dlVar;
        aCVar.mo973a(axVar.f684a);
        aCVar.mo971a(axVar.f685b.size());
        for (Entry entry : axVar.f685b.entrySet()) {
            aCVar.mo973a((String) entry.getKey());
            ((bj) entry.getValue()).bQE(aCVar);
        }
        aCVar.mo972a(axVar.f688e);
        BitSet bitSet = new BitSet();
        if (axVar.m860m()) {
            bitSet.set(0);
        }
        if (axVar.bYl()) {
            bitSet.set(1);
        }
        aCVar.bUw(bitSet, 2);
        if (axVar.m860m()) {
            aCVar.mo972a(axVar.f686c);
        }
        if (axVar.bYl()) {
            aCVar.mo971a(axVar.f687d);
        }
    }

    public void bSv(dl dlVar, ax axVar) {
        aC aCVar = (aC) dlVar;
        axVar.f684a = aCVar.bRh();
        axVar.m859a(true);
        dh dhVar = new dh((byte) 11, (byte) 12, aCVar.bRe());
        axVar.f685b = new HashMap(dhVar.f986c * 2);
        for (int i = 0; i < dhVar.f986c; i++) {
            String bRh = aCVar.bRh();
            bj bjVar = new bj();
            bjVar.bQD(aCVar);
            axVar.f685b.put(bRh, bjVar);
        }
        axVar.bYj(true);
        axVar.f688e = aCVar.bRf();
        axVar.bYp(true);
        BitSet bUx = aCVar.bUx(2);
        if (bUx.get(0)) {
            axVar.f686c = aCVar.bRf();
            axVar.bYk(true);
        }
        if (bUx.get(1)) {
            axVar.f687d = aCVar.bRe();
            axVar.bYm(true);
        }
    }
}
