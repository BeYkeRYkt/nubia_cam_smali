package com.loc;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

class bD implements Comparable {
    private ArrayList f255b;
    private ArrayList bhH;
    final /* synthetic */ cy bhI;
    private double f256d;
    private String f257e;

    public bD(cy cyVar) {
        this.bhI = cyVar;
        this.f255b = new ArrayList();
        this.bhH = new ArrayList();
        this.f256d = 0.0d;
        this.f257e = "";
        this.f256d = 0.0d;
        this.f257e = "";
    }

    public void m301a() {
        double size = (double) this.bhH.size();
        Iterator it = this.f255b.iterator();
        double d = 0.0d;
        while (it.hasNext()) {
            d = (((aX) it.next()).f184e <= 1 ? 1.0d : 0.6d) + d;
        }
        this.f256d = (d * 3.0d) + size;
        this.f256d += ((d * 3.0d) + 0.1d) * (size + 0.1d);
    }

    public aX m302b() {
        double d = 0.0d;
        int i = !this.f255b.isEmpty() ? 3 : 0;
        if (this.bhH.isEmpty()) {
            Iterator it = this.f255b.iterator();
            if (!it.hasNext()) {
                return null;
            }
            aX aXVar = (aX) it.next();
            if (aXVar.f184e != 1) {
                int i2 = aXVar.f182c <= 0 ? 0 : aXVar.f182c;
                return new aX(this.bhI, (aXVar.f180a + 0.0d) / 1.0d, (0.0d + aXVar.f181b) / 1.0d, i2 <= 5000 ? i2 : 5000, this.f257e, this.f256d, 2);
            }
            return new aX(this.bhI, aXVar.f180a, aXVar.f181b, aXVar.f182c, this.f257e, this.f256d, 1);
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = this.bhH.iterator();
        double d2 = 0.0d;
        double d3 = 0.0d;
        while (it2.hasNext()) {
            aX aXVar2 = (aX) it2.next();
            arrayList.add(Integer.valueOf(aXVar2.f182c));
            d += aXVar2.f180a;
            d3 = 1.0d + d3;
            d2 = aXVar2.f181b + d2;
        }
        Collections.sort(arrayList);
        i2 = arrayList.size() != 1 ? ((Integer) arrayList.get(arrayList.size() / 2)).intValue() : ((Integer) arrayList.get(0)).intValue();
        int i3 = this.bhH.size() != 1 ? i2 <= 500 ? i2 >= 30 ? i2 : 30 : 300 : 500;
        return new aX(this.bhI, d / d3, d2 / d3, i3, this.f257e, this.f256d, i);
    }

    public int bCb(bD bDVar) {
        double d = bDVar.f256d - this.f256d;
        return d > 0.0d ? 1 : d == 0.0d ? 0 : -1;
    }

    public void bCc(aX aXVar) {
        if (aXVar.f184e == 0) {
            this.bhH.add(aXVar);
        } else if (aXVar.f184e > 0) {
            this.f255b.add(aXVar);
        }
        if ("0".equals(this.f257e)) {
            this.f257e = aXVar.f183d;
        }
    }

    public /* synthetic */ int compareTo(Object obj) {
        return bCb((bD) obj);
    }
}
