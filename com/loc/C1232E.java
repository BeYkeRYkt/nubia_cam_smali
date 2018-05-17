package com.loc;

import java.util.Hashtable;

public class C1232E {
    protected static final Hashtable bdU = new Hashtable();

    static {
        Hashtable hashtable = new Hashtable();
        hashtable.put("even", "bc01fg45238967deuvhjyznpkmstqrwx");
        hashtable.put("odd", "p0r21436x8zb9dcf5h7kjnmqesgutwvy");
        Hashtable hashtable2 = new Hashtable();
        hashtable2.put("even", "238967debc01fg45kmstqrwxuvhjyznp");
        hashtable2.put("odd", "14365h7k9dcfesgujnmqp0r2twvyx8zb");
        Hashtable hashtable3 = new Hashtable();
        hashtable3.put("even", "p0r21436x8zb9dcf5h7kjnmqesgutwvy");
        hashtable3.put("odd", "bc01fg45238967deuvhjyznpkmstqrwx");
        Hashtable hashtable4 = new Hashtable();
        hashtable4.put("even", "14365h7k9dcfesgujnmqp0r2twvyx8zb");
        hashtable4.put("odd", "238967debc01fg45kmstqrwxuvhjyznp");
        bdU.put("top", hashtable);
        bdU.put("btm", hashtable2);
        bdU.put("right", hashtable3);
        bdU.put("left", hashtable4);
    }
}
