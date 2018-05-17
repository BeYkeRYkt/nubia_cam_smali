package com.loc;

import java.util.LinkedHashMap;
import java.util.Map.Entry;

public class aG {
    private int f161b;
    private final LinkedHashMap bfT;
    private int f162c;

    public aG(int i) {
        if (i > 0) {
            this.f162c = i;
            this.bfT = new LinkedHashMap(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private void m168a(int i) {
        while (true) {
            Object key;
            Object value;
            synchronized (this) {
                if (this.f161b < 0) {
                    break;
                }
                if (this.bfT.isEmpty()) {
                    if (this.f161b != 0) {
                        break;
                    }
                }
                if (this.f161b > i) {
                    Entry entry = null;
                    for (Entry entry2 : this.bfT.entrySet()) {
                    }
                    if (entry != null) {
                        key = entry.getKey();
                        value = entry.getValue();
                        this.bfT.remove(key);
                        this.f161b -= bzm(key, value);
                    } else {
                        return;
                    }
                }
                return;
            }
            bzl(true, key, value, null);
        }
        throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
    }

    private int bzm(Object obj, Object obj2) {
        int bzn = bzn(obj, obj2);
        if (bzn >= 0) {
            return bzn;
        }
        throw new IllegalStateException("Negative size: " + obj + "=" + obj2);
    }

    public final void m169a() {
        m168a(-1);
    }

    public final Object bzh(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw new NullPointerException("key == null || value == null");
        }
        Object put;
        synchronized (this) {
            this.f161b += bzm(obj, obj2);
            put = this.bfT.put(obj, obj2);
            if (put != null) {
                this.f161b -= bzm(obj, put);
            }
        }
        if (put != null) {
            bzl(false, obj, put, obj2);
        }
        m168a(this.f162c);
        return put;
    }

    protected Object bzi(Object obj) {
        return null;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object bzj(java.lang.Object r5) {
        /*
        r4 = this;
        r1 = 0;
        if (r5 == 0) goto L_0x002e;
    L_0x0003:
        monitor-enter(r4);
        r0 = r4.bfT;	 Catch:{ all -> 0x0039 }
        r0 = r0.get(r5);	 Catch:{ all -> 0x0039 }
        if (r0 != 0) goto L_0x0037;
    L_0x000c:
        monitor-exit(r4);	 Catch:{ all -> 0x0039 }
        r0 = r4.bzi(r5);
        if (r0 == 0) goto L_0x003c;
    L_0x0013:
        monitor-enter(r4);
        r1 = r4.bfT;	 Catch:{ all -> 0x0043 }
        r1 = r1.put(r5, r0);	 Catch:{ all -> 0x0043 }
        if (r1 != 0) goto L_0x003d;
    L_0x001c:
        r2 = r4.f161b;	 Catch:{ all -> 0x0043 }
        r3 = r4.bzm(r5, r0);	 Catch:{ all -> 0x0043 }
        r2 = r2 + r3;
        r4.f161b = r2;	 Catch:{ all -> 0x0043 }
    L_0x0025:
        monitor-exit(r4);	 Catch:{ all -> 0x0043 }
        if (r1 != 0) goto L_0x0046;
    L_0x0028:
        r1 = r4.f162c;
        r4.m168a(r1);
        return r0;
    L_0x002e:
        r0 = new java.lang.NullPointerException;
        r1 = "key == null";
        r0.<init>(r1);
        throw r0;
    L_0x0037:
        monitor-exit(r4);	 Catch:{ all -> 0x0039 }
        return r0;
    L_0x0039:
        r0 = move-exception;
        monitor-exit(r4);	 Catch:{ all -> 0x0039 }
        throw r0;
    L_0x003c:
        return r1;
    L_0x003d:
        r2 = r4.bfT;	 Catch:{ all -> 0x0043 }
        r2.put(r5, r1);	 Catch:{ all -> 0x0043 }
        goto L_0x0025;
    L_0x0043:
        r0 = move-exception;
        monitor-exit(r4);	 Catch:{ all -> 0x0043 }
        throw r0;
    L_0x0046:
        r2 = 0;
        r4.bzl(r2, r5, r0, r1);
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.aG.bzj(java.lang.Object):java.lang.Object");
    }

    public final Object bzk(Object obj) {
        if (obj != null) {
            Object remove;
            synchronized (this) {
                remove = this.bfT.remove(obj);
                if (remove != null) {
                    this.f161b -= bzm(obj, remove);
                }
            }
            if (remove != null) {
                bzl(false, obj, remove, null);
            }
            return remove;
        }
        throw new NullPointerException("key == null");
    }

    protected void bzl(boolean z, Object obj, Object obj2, Object obj3) {
    }

    protected int bzn(Object obj, Object obj2) {
        return 1;
    }
}
