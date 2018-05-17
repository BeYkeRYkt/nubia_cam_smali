package p043u.aly;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;

public class ag extends av implements C1351P {
    public ag() {
        m862a(System.currentTimeMillis());
        cbN(aw.LEGIT);
    }

    public ag(String str) {
        this();
        m863a(str);
    }

    public ag(Throwable th) {
        this();
        m863a(m867a(th));
    }

    public ag m868a(boolean z) {
        cbN(!z ? aw.ALIEN : aw.LEGIT);
        return this;
    }

    private String m867a(Throwable th) {
        String str = null;
        if (th == null) {
            return null;
        }
        try {
            Writer stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            for (Throwable cause = th.getCause(); cause != null; cause = cause.getCause()) {
                cause.printStackTrace(printWriter);
            }
            str = stringWriter.toString();
            printWriter.close();
            stringWriter.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    public void bTy(bp bpVar, String str) {
        be beVar;
        if (bpVar.bWu() <= 0) {
            beVar = null;
        } else {
            for (be beVar2 : bpVar.bWw()) {
                if (str.equals(beVar2.m1030c())) {
                    break;
                }
            }
            beVar2 = null;
        }
        if (beVar2 == null) {
            beVar2 = new be();
            beVar2.m1028a(str);
            bpVar.bWv(beVar2);
        }
        beVar2.bXf(this);
    }
}
