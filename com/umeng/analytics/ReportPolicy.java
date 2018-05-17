package com.umeng.analytics;

import android.content.Context;
import p043u.aly.C1394e;
import p043u.aly.aA;
import p043u.aly.bZ;
import p043u.aly.cE;

public class ReportPolicy {
    public static final int BATCH_AT_LAUNCH = 1;
    public static final int BATCH_BY_INTERVAL = 6;
    public static final int DAILY = 4;
    public static final int REALTIME = 0;
    public static final int SMART_POLICY = 8;
    public static final int WIFIONLY = 5;
    static final int f543a = 2;
    static final int f544b = 3;

    public class C1285i {
        public boolean mo960a(boolean z) {
            return true;
        }

        public boolean mo961a() {
            return true;
        }
    }

    public class C1286a extends C1285i {
        private final long f526a = 15000;
        private aA f527b;

        public C1286a(aA aAVar) {
            this.f527b = aAVar;
        }

        public boolean mo960a(boolean z) {
            boolean z2;
            if (System.currentTimeMillis() - this.f527b.f669c < 15000) {
                z2 = true;
            } else {
                z2 = false;
            }
            return !z2;
        }
    }

    public class C1287b extends C1285i {
        private cE f528a;
        private aA f529b;

        public C1287b(aA aAVar, cE cEVar) {
            this.f529b = aAVar;
            this.f528a = cEVar;
        }

        public boolean mo960a(boolean z) {
            boolean z2;
            if (System.currentTimeMillis() - this.f529b.f669c < this.f528a.m1139a()) {
                z2 = true;
            } else {
                z2 = false;
            }
            return !z2;
        }

        public boolean mo961a() {
            return this.f528a.m1142c();
        }
    }

    public class C1288c extends C1285i {
        private long f530a;
        private long f531b = 0;

        public C1288c(int i) {
            this.f530a = (long) i;
            this.f531b = System.currentTimeMillis();
        }

        public boolean mo960a(boolean z) {
            boolean z2;
            if (System.currentTimeMillis() - this.f531b < this.f530a) {
                z2 = true;
            } else {
                z2 = false;
            }
            return !z2;
        }

        public boolean mo961a() {
            return !(((System.currentTimeMillis() - this.f531b) > this.f530a ? 1 : ((System.currentTimeMillis() - this.f531b) == this.f530a ? 0 : -1)) >= 0);
        }
    }

    public class C1289d extends C1285i {
        public boolean mo960a(boolean z) {
            return z;
        }
    }

    public class C1290e extends C1285i {
        private static long f532a = 90000;
        private static long f533b = C1296a.f551g;
        private long f534c;
        private aA f535d;

        public C1290e(aA aAVar, long j) {
            this.f535d = aAVar;
            m598a(j);
        }

        public boolean mo960a(boolean z) {
            boolean z2;
            if (System.currentTimeMillis() - this.f535d.f669c < this.f534c) {
                z2 = true;
            } else {
                z2 = false;
            }
            return !z2;
        }

        public void m598a(long j) {
            Object obj = 1;
            if ((j < f532a ? 1 : null) == null) {
                if (j <= f533b) {
                    obj = null;
                }
                if (obj == null) {
                    this.f534c = j;
                    return;
                }
            }
            this.f534c = f532a;
        }

        public long m600b() {
            return this.f534c;
        }

        public static boolean m597a(int i) {
            boolean z;
            if (((long) i) >= f532a) {
                z = true;
            } else {
                z = false;
            }
            return z;
        }
    }

    public class C1291f extends C1285i {
        private final int f536a;
        private bZ f537b;

        public C1291f(bZ bZVar, int i) {
            this.f536a = i;
            this.f537b = bZVar;
        }

        public boolean mo960a(boolean z) {
            return this.f537b.m976b() > this.f536a;
        }
    }

    public class C1292g extends C1285i {
        private long f538a = C1296a.f551g;
        private aA f539b;

        public C1292g(aA aAVar) {
            this.f539b = aAVar;
        }

        public boolean mo960a(boolean z) {
            boolean z2;
            if (System.currentTimeMillis() - this.f539b.f669c < this.f538a) {
                z2 = true;
            } else {
                z2 = false;
            }
            return !z2;
        }
    }

    public class C1293h extends C1285i {
        public boolean mo960a(boolean z) {
            return true;
        }
    }

    public class C1294j extends C1285i {
        private Context f540a = null;

        public C1294j(Context context) {
            this.f540a = context;
        }

        public boolean mo960a(boolean z) {
            return C1394e.bQo(this.f540a);
        }
    }

    public class C1295k extends C1285i {
        private final long f541a = 10800000;
        private aA f542b;

        public C1295k(aA aAVar) {
            this.f542b = aAVar;
        }

        public boolean mo960a(boolean z) {
            boolean z2;
            if (System.currentTimeMillis() - this.f542b.f669c < 10800000) {
                z2 = true;
            } else {
                z2 = false;
            }
            return !z2;
        }
    }

    public static boolean m606a(int i) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case BATCH_BY_INTERVAL /*6*/:
            case 8:
                return true;
            default:
                return false;
        }
    }
}
