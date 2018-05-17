package p043u.aly;

import p043u.aly.dc.C1392a;

public class bT {
    private final dl byA;
    private final cf byB;

    public bT() {
        this(new C1392a());
    }

    public bT(dk dkVar) {
        this.byB = new cf();
        this.byA = dkVar.bSS(this.byB);
    }

    public void bXK(cj cjVar, byte[] bArr) {
        try {
            this.byB.m1184a(bArr);
            cjVar.bQD(this.byA);
        } finally {
            this.byB.m1185e();
            this.byA.bSw();
        }
    }
}
