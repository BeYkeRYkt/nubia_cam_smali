package com.loc;

import java.util.List;

public class bz {
    public static void bBM(C1268m c1268m, bC bCVar, String str) {
        c1268m.bvG(bCVar, str);
    }

    public static bC bBN(C1268m c1268m, String str) {
        List bvL = c1268m.bvL(bC.m294b(str), bC.class);
        return (bvL != null && bvL.size() > 0) ? (bC) bvL.get(0) : null;
    }

    public static List bBO(C1268m c1268m, String str, String str2) {
        return c1268m.bvL(bC.m295b(str, str2), bC.class);
    }
}
