package com.loc;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.TimerTask;

class bq extends TimerTask {
    final /* synthetic */ cd bhm;

    bq(cd cdVar) {
        this.bhm = cdVar;
    }

    public void run() {
        if (by.f346a[1] <= 2000) {
            ArrayList b;
            int size;
            int i;
            ArrayList bCo;
            Iterator it;
            Thread.currentThread().setPriority(1);
            if (C1253X.bxc(this.bhm.bjC, "fetchoffdatamobile")) {
                try {
                    boolean equals = "1".equals(this.bhm.bjC.getString("fetchoffdatamobile"));
                } catch (Throwable th) {
                    bx.bBw(th, "APS", "timerTaskO part");
                }
                b = C1271p.m567a().m570b();
                if (b != null) {
                    size = b.size();
                    if (size > 0) {
                        if (this.bhm.bki == null) {
                            this.bhm.bki = this.bhm.m483a(true);
                        }
                        i = 0;
                        while (i < size && i < 20) {
                            by.bBC(this.bhm.bjt, this.bhm.bki, ((au) b.get(i)).m281a(), 1, 0, r7 != 0, true);
                            i++;
                        }
                    }
                }
                this.bhm.bEY();
                bCo = bI.m309a().bCo(this.bhm.bjt, 1);
                if (bCo != null) {
                    if (bCo.size() > 0) {
                        it = bCo.iterator();
                        while (it.hasNext()) {
                            by.bBI(this.bhm.bki, (String) it.next(), 1, 0);
                        }
                    }
                }
                return;
            }
            int i2 = 0;
            b = C1271p.m567a().m570b();
            if (b != null) {
                size = b.size();
                if (size > 0) {
                    if (this.bhm.bki == null) {
                        this.bhm.bki = this.bhm.m483a(true);
                    }
                    i = 0;
                    while (i < size) {
                        if (i2 != 0) {
                        }
                        by.bBC(this.bhm.bjt, this.bhm.bki, ((au) b.get(i)).m281a(), 1, 0, i2 != 0, true);
                        i++;
                    }
                }
            }
            this.bhm.bEY();
            try {
                bCo = bI.m309a().bCo(this.bhm.bjt, 1);
                if (bCo != null) {
                    if (bCo.size() > 0) {
                        it = bCo.iterator();
                        while (it.hasNext()) {
                            by.bBI(this.bhm.bki, (String) it.next(), 1, 0);
                        }
                    }
                }
            } catch (Throwable th2) {
                bx.bBw(th2, "APS", "timerTaskO");
            }
            return;
        }
        this.bhm.bEV();
    }
}
