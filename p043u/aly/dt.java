package p043u.aly;

class dt extends C1341b {
    private dt() {
    }

    public /* synthetic */ void bQk(dl dlVar, cj cjVar) {
        caV(dlVar, (ct) cjVar);
    }

    public /* synthetic */ void bQl(dl dlVar, cj cjVar) {
        caU(dlVar, (ct) cjVar);
    }

    public void caU(dl dlVar, ct ctVar) {
        ctVar.f880c = null;
        ctVar.f879b = null;
        dlVar.mo1001j();
        cB l = dlVar.mo1003l();
        ctVar.f879b = ctVar.bUz(dlVar, l);
        if (ctVar.f879b != null) {
            ctVar.f880c = ctVar.bUE(l.f936c);
        }
        dlVar.mo1004m();
        dlVar.mo1003l();
        dlVar.mo1002k();
    }

    public void caV(dl dlVar, ct ctVar) {
        if (ctVar.m1066i() == null || ctVar.m1067j() == null) {
            throw new dj("Cannot write a TUnion with no set value!");
        }
        dlVar.bQO(ctVar.mo1027c());
        dlVar.bQP(ctVar.bUD(ctVar.f880c));
        ctVar.bUA(dlVar);
        dlVar.mo997c();
        dlVar.mo998d();
        dlVar.mo975b();
    }
}
