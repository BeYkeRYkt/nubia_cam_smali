package com.android.gallery3d.p038a;

import java.util.Comparator;

public class C0884p implements Comparator {
    private static int aBE(long j, long j2) {
        int i = 1;
        if (j < 0 || j2 < 0) {
            if (j2 >= j) {
                i = j2 > j ? -1 : 0;
            }
            return i;
        }
        if (j >= j2) {
            i = j > j2 ? -1 : 0;
        }
        return i;
    }

    public /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        return aBD((C0875o) obj, (C0875o) obj2);
    }

    public int aBD(C0875o c0875o, C0875o c0875o2) {
        int aBE = C0884p.aBE(c0875o.aBi(), c0875o2.aBi());
        if (aBE == 0) {
            return C0884p.aBE(c0875o.aBh(), c0875o2.aBh());
        }
        return aBE;
    }
}
