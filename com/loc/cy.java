package com.loc;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.StringTokenizer;

public class cy {
    private ArrayList f428b = new ArrayList();
    private ArrayList blu = new ArrayList();
    private short[][] blv = ((short[][]) Array.newInstance(Short.TYPE, new int[]{128, 128}));
    private ah blw = new ah(this);

    public void m547a(int i, String str) {
        int size = this.f428b.size();
        StringTokenizer stringTokenizer = new StringTokenizer(str, "\\|");
        if (stringTokenizer.countTokens() >= 3) {
            ArrayList arrayList = new ArrayList();
            while (stringTokenizer.hasMoreElements()) {
                arrayList.add(stringTokenizer.nextToken());
            }
            this.f428b.add(new aX(this, Double.parseDouble((String) arrayList.get(0)), Double.parseDouble((String) arrayList.get(1)), Double.valueOf(Double.parseDouble((String) arrayList.get(2))).intValue(), i));
            if (this.f428b.size() <= 128) {
                for (int i2 = 0; i2 < size; i2++) {
                    for (int i3 = size; i3 < this.f428b.size(); i3++) {
                        if (((aX) this.f428b.get(i2)).bAm((aX) this.f428b.get(i3))) {
                            this.blv[i2][i3] = (short) 1;
                            this.blv[i3][i2] = (short) 1;
                        }
                    }
                }
                arrayList.clear();
                return;
            }
            throw new Exception("Atomic Pos Larger Than MAXN 512!");
        }
    }

    public ArrayList bGS(double d, double d2) {
        this.blw.m245a();
        ArrayList arrayList = new ArrayList();
        Iterator it = this.blw.f212b.iterator();
        while (it.hasNext()) {
            ArrayList arrayList2 = (ArrayList) it.next();
            bD bDVar = new bD(this);
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                bDVar.bCc((aX) this.f428b.get(((Integer) it2.next()).intValue()));
            }
            bDVar.m301a();
            this.blu.add(bDVar);
        }
        if (this.blu.isEmpty()) {
            return null;
        }
        Collections.sort(this.blu);
        if (!(d == 0.0d || d2 == 0.0d)) {
            aX aXVar = new aX(this, d2, d);
            for (int i = 0; i < this.blu.size(); i++) {
                aX b = ((bD) this.blu.get(i)).m302b();
                double bAp = aXVar.bAn(b);
                if (b.f184e <= 0) {
                    if (bAp < 10000.0d && bAp > 2.0d) {
                        ((bD) this.blu.get(i)).f256d = ((bD) this.blu.get(i)).f256d * 5.0d;
                    }
                } else if (bAp < 7000.0d && bAp > 2.0d) {
                    ((bD) this.blu.get(i)).f256d = ((bD) this.blu.get(i)).f256d * 5.0d;
                }
            }
            Collections.sort(this.blu);
        }
        for (int i2 = 0; i2 < this.blu.size() && arrayList.size() < 5; i2++) {
            arrayList.add(((bD) this.blu.get(i2)).m302b());
        }
        return arrayList;
    }
}
