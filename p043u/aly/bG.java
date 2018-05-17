package p043u.aly;

import java.io.ByteArrayOutputStream;
import p043u.aly.dc.C1392a;

public class bG {
    private final ByteArrayOutputStream bxM;
    private final du bxN;
    private dl bxO;

    public bG() {
        this(new C1392a());
    }

    public bG(dk dkVar) {
        this.bxM = new ByteArrayOutputStream();
        this.bxN = new du(this.bxM);
        this.bxO = dkVar.bSS(this.bxN);
    }

    public byte[] bWg(cj cjVar) {
        this.bxM.reset();
        cjVar.bQE(this.bxO);
        return this.bxM.toByteArray();
    }
}
