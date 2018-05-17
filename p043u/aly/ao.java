package p043u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class ao implements Serializable, Cloneable, cj {
    public static final Map f714b;
    private static final aP bxq = new aP("ActivateMsg");
    private static final cB bxr = new cB("ts", (byte) 10, (short) 1);
    private static final Map bxs = new HashMap();
    public long f715a;
    private byte f716g;

    public enum C1364e implements aF {
        TS((short) 1, "ts");
        
        private static final Map f711b = null;
        private final short f712c;
        private final String f713d;

        static {
            f711b = new HashMap();
            Iterator it = EnumSet.allOf(C1364e.class).iterator();
            while (it.hasNext()) {
                C1364e c1364e = (C1364e) it.next();
                f711b.put(c1364e.m889b(), c1364e);
            }
        }

        private C1364e(short s, String str) {
            this.f712c = (short) s;
            this.f713d = str;
        }

        public short mo1020a() {
            return this.f712c;
        }

        public String m889b() {
            return this.f713d;
        }
    }

    static {
        bxs.put(C1341b.class, new aR());
        bxs.put(dB.class, new C1400k());
        Map enumMap = new EnumMap(C1364e.class);
        enumMap.put(C1364e.TS, new cv("ts", (byte) 1, new cw((byte) 10)));
        f714b = Collections.unmodifiableMap(enumMap);
        cv.bUa(ao.class, f714b);
    }

    public ao() {
        this.f716g = (byte) 0;
    }

    public ao(long j) {
        this();
        this.f715a = j;
        m892a(true);
    }

    public boolean m893e() {
        return aN.bVw(this.f716g, 0);
    }

    public void m892a(boolean z) {
        this.f716g = (byte) aN.bVz(this.f716g, 0, z);
    }

    public void bQD(dl dlVar) {
        ((C1336M) bxs.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) bxs.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("ActivateMsg(");
        stringBuilder.append("ts:");
        stringBuilder.append(this.f715a);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void m894f() {
    }
}
