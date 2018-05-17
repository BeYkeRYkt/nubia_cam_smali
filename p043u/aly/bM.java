package p043u.aly;

class bM extends dB {
    private bM() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        bXy(dlVar, (ct) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        bXx(dlVar, (ct) cjVar);
    }

    public void bXx(dl dlVar, ct ctVar) {
        ctVar.f880c = null;
        ctVar.f879b = null;
        short bRd = dlVar.bRd();
        ctVar.f879b = ctVar.bUB(dlVar, bRd);
        if (ctVar.f879b != null) {
            ctVar.f880c = ctVar.bUE(bRd);
        }
    }

    public void bXy(dl dlVar, ct ctVar) {
        if (ctVar.m1066i() == null || ctVar.m1067j() == null) {
            throw new dj("Cannot write a TUnion with no set value!");
        }
        dlVar.bQT(ctVar.f880c.mo1020a());
        ctVar.bUC(dlVar);
    }
}
