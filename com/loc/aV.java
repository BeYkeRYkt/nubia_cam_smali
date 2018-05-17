package com.loc;

public class aV extends aG {
    public aV() {
        super(1048576);
    }

    protected int bAk(String str, cb cbVar) {
        int i = 0;
        if (cbVar == null) {
            return i;
        }
        try {
            return (int) cbVar.m471g();
        } catch (Throwable th) {
            bx.bBw(th, "OfflineFileCache", "sizeOf");
            return i;
        }
    }

    protected void bAl(boolean z, String str, cb cbVar, cb cbVar2) {
        if (cbVar != null) {
            try {
                cbVar.m466b();
            } catch (Throwable th) {
                bx.bBw(th, "OfflineFileCache", "entryRemoved");
            }
        }
        super.bzl(z, str, cbVar, cbVar2);
    }

    protected /* bridge */ /* synthetic */ void bzl(boolean z, Object obj, Object obj2, Object obj3) {
        bAl(z, (String) obj, (cb) obj2, (cb) obj3);
    }

    protected /* bridge */ /* synthetic */ int bzn(Object obj, Object obj2) {
        return bAk((String) obj, (cb) obj2);
    }
}
