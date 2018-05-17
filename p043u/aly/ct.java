package p043u.aly;

import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;

public abstract class ct implements cj {
    private static final Map f878a = new HashMap();
    protected Object f879b = null;
    protected aF f880c = null;

    protected abstract void bUA(dl dlVar);

    protected abstract Object bUB(dl dlVar, short s);

    protected abstract void bUC(dl dlVar);

    protected abstract cB bUD(aF aFVar);

    protected abstract aF bUE(short s);

    protected abstract Object bUz(dl dlVar, cB cBVar);

    protected abstract aP mo1027c();

    protected ct() {
    }

    static {
        f878a.put(C1341b.class, new dI());
        f878a.put(dB.class, new cg());
    }

    public aF m1066i() {
        return this.f880c;
    }

    public Object m1067j() {
        return this.f879b;
    }

    public boolean m1068k() {
        return this.f880c != null;
    }

    public void bQD(dl dlVar) {
        ((C1336M) f878a.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) f878a.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("<");
        stringBuilder.append(getClass().getSimpleName());
        stringBuilder.append(" ");
        if (m1066i() != null) {
            Object j = m1067j();
            stringBuilder.append(bUD(m1066i()).f934a);
            stringBuilder.append(":");
            if (j instanceof ByteBuffer) {
                C1405q.bRv((ByteBuffer) j, stringBuilder);
            } else {
                stringBuilder.append(j.toString());
            }
        }
        stringBuilder.append(">");
        return stringBuilder.toString();
    }
}
