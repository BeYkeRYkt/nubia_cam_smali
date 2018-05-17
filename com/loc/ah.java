package com.loc;

import java.util.ArrayList;
import java.util.Iterator;

class ah {
    private ArrayList f212b;
    final /* synthetic */ cy bfg;

    public ah(cy cyVar) {
        this.bfg = cyVar;
        this.f212b = null;
        this.f212b = new ArrayList();
    }

    private void bxW(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i));
        arrayList.add(Integer.valueOf(i2));
        this.bfg.blv[i][i2] = (short) -1;
        this.bfg.blv[i2][i] = (short) -1;
        ArrayList arrayList2 = new ArrayList();
        int i3 = 0;
        while (i3 < this.bfg.f428b.size()) {
            if (!(this.bfg.blv[i][i3] == (short) 0 || this.bfg.blv[i2][i3] == (short) 0)) {
                arrayList2.add(Integer.valueOf(i3));
            }
            i3++;
        }
        while (!arrayList2.isEmpty()) {
            int intValue = ((Integer) arrayList2.get(0)).intValue();
            arrayList2.remove(0);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                this.bfg.blv[intValue][num.intValue()] = (short) -1;
                this.bfg.blv[num.intValue()][intValue] = (short) -1;
            }
            arrayList.add(Integer.valueOf(intValue));
            int i4 = 0;
            while (i4 < arrayList2.size()) {
                if (this.bfg.blv[intValue][((Integer) arrayList2.get(i4)).intValue()] != (short) 0) {
                    i3 = i4 + 1;
                } else {
                    arrayList2.remove(i4);
                    i3 = i4;
                }
                i4 = i3;
            }
        }
        this.f212b.add(arrayList);
    }

    public void m245a() {
        int i;
        int size = this.bfg.f428b.size();
        for (i = 0; i < size; i++) {
            for (int i2 = 0; i2 < size; i2++) {
                if (this.bfg.blv[i][i2] > (short) 0) {
                    bxW(i, i2);
                }
            }
        }
        for (int i3 = 0; i3 < size; i3++) {
            Object obj = 1;
            i = 0;
            while (i < size) {
                if (this.bfg.blv[i3][i] <= (short) 0) {
                    if (this.bfg.blv[i3][i] < (short) 0) {
                        obj = null;
                        break;
                    }
                    i++;
                } else {
                    throw new Exception("non visited edge");
                }
            }
            if (obj != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(Integer.valueOf(i3));
                this.f212b.add(arrayList);
            }
        }
    }
}
