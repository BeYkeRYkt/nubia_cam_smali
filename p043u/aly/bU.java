package p043u.aly;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map.Entry;

class bU extends dB {
    private bU() {
    }

    public /* bridge */ /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bXL(dlVar, (bp) cjVar);
    }

    public /* bridge */ /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bXM(dlVar, (bp) cjVar);
    }

    public void bXL(dl dlVar, bp bpVar) {
        aC aCVar = (aC) dlVar;
        bpVar.f907a.bQE(aCVar);
        bpVar.f908b.bQE(aCVar);
        bpVar.f909c.bQE(aCVar);
        bpVar.f910d.bQE(aCVar);
        BitSet bitSet = new BitSet();
        if (bpVar.bWs()) {
            bitSet.set(0);
        }
        if (bpVar.bWx()) {
            bitSet.set(1);
        }
        if (bpVar.bWC()) {
            bitSet.set(2);
        }
        if (bpVar.bWF()) {
            bitSet.set(3);
        }
        if (bpVar.bWI()) {
            bitSet.set(4);
        }
        if (bpVar.bWL()) {
            bitSet.set(5);
        }
        if (bpVar.bWO()) {
            bitSet.set(6);
        }
        if (bpVar.bWR()) {
            bitSet.set(7);
        }
        aCVar.bUw(bitSet, 8);
        if (bpVar.bWs()) {
            bpVar.f911e.bQE(aCVar);
        }
        if (bpVar.bWx()) {
            aCVar.mo971a(bpVar.f912f.size());
            for (be bQE : bpVar.f912f) {
                bQE.bQE(aCVar);
            }
        }
        if (bpVar.bWC()) {
            aCVar.mo971a(bpVar.f913g.size());
            for (bn bQE2 : bpVar.f913g) {
                bQE2.bQE(aCVar);
            }
        }
        if (bpVar.bWF()) {
            bpVar.f914h.bQE(aCVar);
        }
        if (bpVar.bWI()) {
            bpVar.f915i.bQE(aCVar);
        }
        if (bpVar.bWL()) {
            bpVar.f916j.bQE(aCVar);
        }
        if (bpVar.bWO()) {
            bpVar.f917k.bQE(aCVar);
        }
        if (bpVar.bWR()) {
            aCVar.mo971a(bpVar.f918l.size());
            for (Entry entry : bpVar.f918l.entrySet()) {
                aCVar.mo973a((String) entry.getKey());
                aCVar.mo971a(((Integer) entry.getValue()).intValue());
            }
        }
    }

    public void bXM(dl dlVar, bp bpVar) {
        bP bPVar;
        int i;
        int i2 = 0;
        aC aCVar = (aC) dlVar;
        bpVar.f907a = new ar();
        bpVar.f907a.bQD(aCVar);
        bpVar.m1109a(true);
        bpVar.f908b = new aq();
        bpVar.f908b.bQD(aCVar);
        bpVar.bWm(true);
        bpVar.f909c = new at();
        bpVar.f909c.bQD(aCVar);
        bpVar.bWo(true);
        bpVar.f910d = new bh();
        bpVar.f910d.bQD(aCVar);
        bpVar.bWq(true);
        BitSet bUx = aCVar.bUx(8);
        if (bUx.get(0)) {
            bpVar.f911e = new ao();
            bpVar.f911e.bQD(aCVar);
            bpVar.bWt(true);
        }
        if (bUx.get(1)) {
            bPVar = new bP((byte) 12, aCVar.bRe());
            bpVar.f912f = new ArrayList(bPVar.f800b);
            for (i = 0; i < bPVar.f800b; i++) {
                be beVar = new be();
                beVar.bQD(aCVar);
                bpVar.f912f.add(beVar);
            }
            bpVar.bWy(true);
        }
        if (bUx.get(2)) {
            bPVar = new bP((byte) 12, aCVar.bRe());
            bpVar.f913g = new ArrayList(bPVar.f800b);
            for (i = 0; i < bPVar.f800b; i++) {
                bn bnVar = new bn();
                bnVar.bQD(aCVar);
                bpVar.f913g.add(bnVar);
            }
            bpVar.bWD(true);
        }
        if (bUx.get(3)) {
            bpVar.f914h = new bc();
            bpVar.f914h.bQD(aCVar);
            bpVar.bWG(true);
        }
        if (bUx.get(4)) {
            bpVar.f915i = new bb();
            bpVar.f915i.bQD(aCVar);
            bpVar.bWJ(true);
        }
        if (bUx.get(5)) {
            bpVar.f916j = new ap();
            bpVar.f916j.bQD(aCVar);
            bpVar.bWM(true);
        }
        if (bUx.get(6)) {
            bpVar.f917k = new as();
            bpVar.f917k.bQD(aCVar);
            bpVar.bWP(true);
        }
        if (bUx.get(7)) {
            dh dhVar = new dh((byte) 11, (byte) 8, aCVar.bRe());
            bpVar.f918l = new HashMap(dhVar.f986c * 2);
            while (i2 < dhVar.f986c) {
                bpVar.f918l.put(aCVar.bRh(), Integer.valueOf(aCVar.bRe()));
                i2++;
            }
            bpVar.bWS(true);
        }
    }
}
