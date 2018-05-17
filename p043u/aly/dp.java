package p043u.aly;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map.Entry;

class dp extends dB {
    private dp() {
    }

    public /* bridge */ /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        caQ(dlVar, (bb) cjVar);
    }

    public /* bridge */ /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        caR(dlVar, (bb) cjVar);
    }

    public void caQ(dl dlVar, bb bbVar) {
        aC aCVar = (aC) dlVar;
        aCVar.mo971a(bbVar.f819a.size());
        for (Entry entry : bbVar.f819a.entrySet()) {
            aCVar.mo973a((String) entry.getKey());
            ((ba) entry.getValue()).bQE(aCVar);
        }
        BitSet bitSet = new BitSet();
        if (bbVar.m1004l()) {
            bitSet.set(0);
        }
        if (bbVar.bQH()) {
            bitSet.set(1);
        }
        aCVar.bUw(bitSet, 2);
        if (bbVar.m1004l()) {
            aCVar.mo971a(bbVar.f820b.size());
            for (az bQE : bbVar.f820b) {
                bQE.bQE(aCVar);
            }
        }
        if (bbVar.bQH()) {
            aCVar.mo973a(bbVar.f821c);
        }
    }

    public void caR(dl dlVar, bb bbVar) {
        int i = 0;
        aC aCVar = (aC) dlVar;
        dh dhVar = new dh((byte) 11, (byte) 12, aCVar.bRe());
        bbVar.f819a = new HashMap(dhVar.f986c * 2);
        for (int i2 = 0; i2 < dhVar.f986c; i2++) {
            String bRh = aCVar.bRh();
            ba baVar = new ba();
            baVar.bQD(aCVar);
            bbVar.f819a.put(bRh, baVar);
        }
        bbVar.m1001a(true);
        BitSet bUx = aCVar.bUx(2);
        if (bUx.get(0)) {
            bP bPVar = new bP((byte) 12, aCVar.bRe());
            bbVar.f820b = new ArrayList(bPVar.f800b);
            while (i < bPVar.f800b) {
                az azVar = new az();
                azVar.bQD(aCVar);
                bbVar.f820b.add(azVar);
                i++;
            }
            bbVar.bQG(true);
        }
        if (bUx.get(1)) {
            bbVar.f821c = aCVar.bRh();
            bbVar.bQI(true);
        }
    }
}
