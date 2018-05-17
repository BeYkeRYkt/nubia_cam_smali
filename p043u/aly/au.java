package p043u.aly;

import java.util.HashMap;
import java.util.Map.Entry;

class au extends dB {
    private au() {
    }

    public /* bridge */ /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bUs(dlVar, (bc) cjVar);
    }

    public /* bridge */ /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bUt(dlVar, (bc) cjVar);
    }

    public void bUs(dl dlVar, bc bcVar) {
        aC aCVar = (aC) dlVar;
        aCVar.mo971a(bcVar.f827a.size());
        for (Entry entry : bcVar.f827a.entrySet()) {
            aCVar.mo973a((String) entry.getKey());
            ((bd) entry.getValue()).bQE(aCVar);
        }
        aCVar.mo971a(bcVar.f828b);
        aCVar.mo973a(bcVar.f829c);
    }

    public void bUt(dl dlVar, bc bcVar) {
        aC aCVar = (aC) dlVar;
        dh dhVar = new dh((byte) 11, (byte) 12, aCVar.bRe());
        bcVar.f827a = new HashMap(dhVar.f986c * 2);
        for (int i = 0; i < dhVar.f986c; i++) {
            String bRh = aCVar.bRh();
            bd bdVar = new bd();
            bdVar.bQD(aCVar);
            bcVar.f827a.put(bRh, bdVar);
        }
        bcVar.m1009a(true);
        bcVar.f828b = aCVar.bRe();
        bcVar.bZq(true);
        bcVar.f829c = aCVar.bRh();
        bcVar.bZr(true);
    }
}
