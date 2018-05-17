package p043u.aly;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public class af extends ax implements C1351P {
    public af(String str, Map map, long j, int i) {
        Object obj = 1;
        m858a(str);
        bYn(System.currentTimeMillis());
        if (map.size() > 0) {
            bYi(bTG(map));
        }
        if (i <= 0) {
            i = 1;
        }
        m856a(i);
        if (j > 0) {
            obj = null;
        }
        if (obj == null) {
            m857a(j);
        }
    }

    private HashMap bTG(Map map) {
        Iterator it = map.entrySet().iterator();
        HashMap hashMap = new HashMap();
        int i = 0;
        while (i < 10 && it.hasNext()) {
            Entry entry = (Entry) it.next();
            bj bjVar = new bj();
            Object value = entry.getValue();
            if (value instanceof String) {
                bjVar.m1069b((String) value);
            } else if (value instanceof Long) {
                bjVar.bVH(((Long) value).longValue());
            } else if (value instanceof Integer) {
                bjVar.bVH(((Integer) value).longValue());
            } else if (value instanceof Float) {
                bjVar.bVH(((Float) value).longValue());
            } else if (value instanceof Double) {
                bjVar.bVH(((Double) value).longValue());
            }
            if (bjVar.m1068k()) {
                hashMap.put(entry.getKey(), bjVar);
                i++;
            }
        }
        return hashMap;
    }

    public static ae bTH(String str, String str2, Map map) {
        ae aeVar = new ae();
        aeVar.f681b = str;
        aeVar.f682c = str2;
        aeVar.f683d = map;
        return aeVar;
    }

    public static String bTI(String str, String str2, Map map) {
        return str + str2;
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
        beVar2.bXh(this);
    }
}
