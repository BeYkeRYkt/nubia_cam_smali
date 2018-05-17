package p043u.aly;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class cv implements Serializable {
    private static Map f968d = new HashMap();
    public final String f969a;
    public final byte f970b;
    public final cw f971c;

    public cv(String str, byte b, cw cwVar) {
        this.f969a = str;
        this.f970b = (byte) b;
        this.f971c = cwVar;
    }

    public static void bUa(Class cls, Map map) {
        f968d.put(cls, map);
    }
}
