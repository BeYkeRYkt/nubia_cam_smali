package com.android.common.p016a;

import java.util.Comparator;

final class C0298n implements Comparator {
    final /* synthetic */ C0290f an;

    C0298n(C0290f c0290f) {
        this.an = c0290f;
    }

    public /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        return bc((C0126g) obj, (C0126g) obj2);
    }

    public int bc(C0126g c0126g, C0126g c0126g2) {
        if (c0126g.aI() > c0126g2.aI()) {
            return 1;
        }
        if (c0126g.aI() < c0126g2.aI()) {
            return -1;
        }
        return 0;
    }
}
