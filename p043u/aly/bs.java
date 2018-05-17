package p043u.aly;

import java.util.BitSet;

class bs extends dB {
    private bs() {
    }

    public /* bridge */ /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bVN(dlVar, (az) cjVar);
    }

    public /* bridge */ /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bVO(dlVar, (az) cjVar);
    }

    public void bVN(dl dlVar, az azVar) {
        aC aCVar = (aC) dlVar;
        aCVar.mo973a(azVar.f780a);
        aCVar.mo973a(azVar.f782c);
        aCVar.mo972a(azVar.f783d);
        BitSet bitSet = new BitSet();
        if (azVar.m948i()) {
            bitSet.set(0);
        }
        aCVar.bUw(bitSet, 1);
        if (azVar.m948i()) {
            aCVar.mo973a(azVar.f781b);
        }
    }

    public void bVO(dl dlVar, az azVar) {
        aC aCVar = (aC) dlVar;
        azVar.f780a = aCVar.bRh();
        azVar.m946a(true);
        azVar.f782c = aCVar.bRh();
        azVar.bUd(true);
        azVar.f783d = aCVar.bRf();
        azVar.bUf(true);
        if (aCVar.bUx(1).get(0)) {
            azVar.f781b = aCVar.bRh();
            azVar.bUb(true);
        }
    }
}
