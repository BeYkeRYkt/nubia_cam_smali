package p043u.aly;

import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Set;

class cS implements Comparator {
    private cS() {
    }

    public int compare(Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return 0;
        }
        if (obj == null) {
            return -1;
        }
        if (obj2 == null) {
            return 1;
        }
        if (obj instanceof List) {
            return C1405q.bRs((List) obj, (List) obj2);
        }
        if (obj instanceof Set) {
            return C1405q.bRt((Set) obj, (Set) obj2);
        }
        if (obj instanceof Map) {
            return C1405q.bRu((Map) obj, (Map) obj2);
        }
        if (obj instanceof byte[]) {
            return C1405q.m1272a((byte[]) obj, (byte[]) obj2);
        }
        return C1405q.bRr((Comparable) obj, (Comparable) obj2);
    }
}
