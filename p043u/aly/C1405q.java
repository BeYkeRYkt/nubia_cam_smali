package p043u.aly;

import java.nio.ByteBuffer;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

public final class C1405q {
    private static final Comparator bul = new cS();

    private C1405q() {
    }

    public static int bRp(byte b, byte b2) {
        if (b < b2) {
            return -1;
        }
        if (b2 >= b) {
            return 0;
        }
        return 1;
    }

    public static int bRq(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        if (i2 >= i) {
            return 0;
        }
        return 1;
    }

    public static int m1272a(byte[] bArr, byte[] bArr2) {
        int bRq = C1405q.bRq(bArr.length, bArr2.length);
        if (bRq != 0) {
            return bRq;
        }
        for (bRq = 0; bRq < bArr.length; bRq++) {
            int bRp = C1405q.bRp(bArr[bRq], bArr2[bRq]);
            if (bRp != 0) {
                return bRp;
            }
        }
        return 0;
    }

    public static int bRr(Comparable comparable, Comparable comparable2) {
        return comparable.compareTo(comparable2);
    }

    public static int bRs(List list, List list2) {
        int bRq = C1405q.bRq(list.size(), list2.size());
        if (bRq != 0) {
            return bRq;
        }
        for (bRq = 0; bRq < list.size(); bRq++) {
            int compare = bul.compare(list.get(bRq), list2.get(bRq));
            if (compare != 0) {
                return compare;
            }
        }
        return 0;
    }

    public static int bRt(Set set, Set set2) {
        int bRq = C1405q.bRq(set.size(), set2.size());
        if (bRq != 0) {
            return bRq;
        }
        SortedSet treeSet = new TreeSet(bul);
        treeSet.addAll(set);
        SortedSet treeSet2 = new TreeSet(bul);
        treeSet2.addAll(set2);
        Iterator it = treeSet.iterator();
        Iterator it2 = treeSet2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            int compare = bul.compare(it.next(), it2.next());
            if (compare != 0) {
                return compare;
            }
        }
        return 0;
    }

    public static int bRu(Map map, Map map2) {
        int bRq = C1405q.bRq(map.size(), map2.size());
        if (bRq != 0) {
            return bRq;
        }
        SortedMap treeMap = new TreeMap(bul);
        treeMap.putAll(map);
        Iterator it = treeMap.entrySet().iterator();
        treeMap = new TreeMap(bul);
        treeMap.putAll(map2);
        Iterator it2 = treeMap.entrySet().iterator();
        while (it.hasNext() && it2.hasNext()) {
            Entry entry = (Entry) it.next();
            Entry entry2 = (Entry) it2.next();
            int compare = bul.compare(entry.getKey(), entry2.getKey());
            if (compare != 0) {
                return compare;
            }
            bRq = bul.compare(entry.getValue(), entry2.getValue());
            if (bRq != 0) {
                return bRq;
            }
        }
        return 0;
    }

    public static void bRv(ByteBuffer byteBuffer, StringBuilder stringBuilder) {
        byte[] array = byteBuffer.array();
        int arrayOffset = byteBuffer.arrayOffset();
        int position = arrayOffset + byteBuffer.position();
        int limit = byteBuffer.limit() + arrayOffset;
        arrayOffset = limit - position <= 128 ? limit : position + 128;
        for (int i = position; i < arrayOffset; i++) {
            if (i > position) {
                stringBuilder.append(" ");
            }
            stringBuilder.append(C1405q.bRw(array[i]));
        }
        if (limit != arrayOffset) {
            stringBuilder.append("...");
        }
    }

    public static String bRw(byte b) {
        return Integer.toHexString((b | 256) & 511).toUpperCase().substring(1);
    }
}
