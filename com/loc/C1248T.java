package com.loc;

import java.io.DataOutputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;

public class C1248T {
    private static C1248T bel;

    public static C1248T m112a() {
        if (bel == null) {
            bel = new C1248T();
        }
        return bel;
    }

    public HttpURLConnection bwJ(C1256q c1256q, boolean z) {
        C1264i e;
        try {
            bwM(c1256q);
            Proxy proxy = c1256q.bds != null ? c1256q.bds : null;
            HttpURLConnection bAw = (!z ? new ba(c1256q.f156c, c1256q.f157d, proxy, false) : new ba(c1256q.f156c, c1256q.f157d, proxy, true)).bAw(c1256q.m155g(), c1256q.mo930a(), true);
            byte[] h = c1256q.m156h();
            if (h != null) {
                if (h.length > 0) {
                    DataOutputStream dataOutputStream = new DataOutputStream(bAw.getOutputStream());
                    dataOutputStream.write(h);
                    dataOutputStream.close();
                }
            }
            bAw.connect();
            return bAw;
        } catch (C1264i e2) {
            throw e2;
        } catch (Throwable th) {
            th.printStackTrace();
            e2 = new C1264i("未知的错误");
        }
    }

    public byte[] bwK(C1256q c1256q) {
        C1264i e;
        try {
            C1229B bwN = bwN(c1256q, true);
            return bwN == null ? null : bwN.f107a;
        } catch (C1264i e2) {
            throw e2;
        } catch (Throwable th) {
            e2 = new C1264i("未知的错误");
        }
    }

    public byte[] bwL(C1256q c1256q) {
        C1264i e;
        try {
            C1229B bwN = bwN(c1256q, false);
            return bwN == null ? null : bwN.f107a;
        } catch (C1264i e2) {
            throw e2;
        } catch (Throwable th) {
            C1259s.bwd(th, "BaseNetManager", "makeSyncPostRequest");
            e2 = new C1264i("未知的错误");
        }
    }

    protected void bwM(C1256q c1256q) {
        if (c1256q == null) {
            throw new C1264i("requeust is null");
        } else if (c1256q.mo931b() == null || "".equals(c1256q.mo931b())) {
            throw new C1264i("request url is empty");
        }
    }

    protected C1229B bwN(C1256q c1256q, boolean z) {
        C1264i e;
        Proxy proxy = null;
        try {
            bwM(c1256q);
            if (c1256q.bds != null) {
                proxy = c1256q.bds;
            }
            return new ba(c1256q.f156c, c1256q.f157d, proxy, z).bAv(c1256q.m155g(), c1256q.mo930a(), c1256q.m156h());
        } catch (C1264i e2) {
            throw e2;
        } catch (Throwable th) {
            th.printStackTrace();
            e2 = new C1264i("未知的错误");
        }
    }
}
