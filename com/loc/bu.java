package com.loc;

import android.content.Context;
import android.net.NetworkInfo;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

public class bu {
    public static bu bho = null;
    private static String f330d = null;
    C1248T bhp;
    aM bhq;
    private int f331e;
    private int f332f;

    private bu(Context context) {
        this.bhp = null;
        this.bhq = null;
        this.f331e = bx.bhu;
        this.f332f = bx.bhu;
        this.bhp = C1248T.m112a();
    }

    public static synchronized bu bBd(Context context, boolean z) {
        bu buVar;
        synchronized (bu.class) {
            if (bho == null) {
                bho = new bu(context);
            }
            if (z) {
                f330d = bZ.m393a(context);
            }
            buVar = bho;
        }
        return buVar;
    }

    public static int bBg(NetworkInfo networkInfo) {
        return (networkInfo != null && networkInfo.isAvailable() && networkInfo.isConnected()) ? networkInfo.getType() : -1;
    }

    public byte[] bBe(Context context, JSONObject jSONObject, C1273t c1273t, String str, boolean z) {
        if (C1253X.bxc(jSONObject, "httptimeout")) {
            try {
                this.f331e = jSONObject.getInt("httptimeout");
            } catch (Throwable th) {
                bx.bBw(th, "LocNetManager", "req");
            }
        }
        if (bBg(C1253X.m137c(context)) == -1) {
            return null;
        }
        Map hashMap = new HashMap();
        C1256q bOVar = new bO();
        hashMap.clear();
        hashMap.put("Content-Type", "application/octet-stream");
        hashMap.put("Accept-Encoding", "gzip");
        hashMap.put("gzipped", "1");
        hashMap.put("Connection", "Keep-Alive");
        hashMap.put("User-Agent", "AMAP_Location_SDK_Android 2.5.1");
        if (z && f330d != null) {
            hashMap.put("X-INFO", f330d);
        }
        hashMap.put("KEY", C1241M.m101f(context));
        hashMap.put("enginever", "4.2");
        String a = bZ.m392a();
        String a2 = bZ.m394a(context, a, "key=" + C1241M.m101f(context));
        hashMap.put("ts", a);
        hashMap.put("scode", a2);
        a = "loc";
        if (!z) {
            a = "locf";
        }
        hashMap.put("platinfo", String.format(Locale.US, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s", new Object[]{"2.5.1", a, Integer.valueOf(3)}));
        hashMap.put("logversion", "2.1");
        hashMap.put("encr", "1");
        bOVar.bCq(hashMap);
        bOVar.m319a(str);
        bOVar.m320a(C1253X.m131a(c1273t.m581a()));
        bOVar.bvZ(C1278y.m584a(context));
        bOVar.m151a(this.f331e);
        bOVar.bvY(this.f331e);
        return this.bhp.bwL(bOVar);
    }

    public String bBf(byte[] bArr, Context context, String str, boolean z) {
        String str2;
        if (bBg(C1253X.m137c(context)) == -1) {
            return null;
        }
        byte[] bwK;
        Map hashMap = new HashMap();
        C1256q bOVar = new bO();
        hashMap.clear();
        hashMap.put("Content-Type", "application/x-www-form-urlencoded");
        hashMap.put("Connection", "Keep-Alive");
        if (z) {
            hashMap.put("Accept-Encoding", "gzip");
            hashMap.put("User-Agent", "AMAP_Location_SDK_Android 2.5.1");
            hashMap.put("platinfo", String.format(Locale.US, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s", new Object[]{"2.5.1", "loc", Integer.valueOf(3)}));
            hashMap.put("logversion", "2.1");
        }
        bOVar.bCq(hashMap);
        bOVar.m319a(str);
        bOVar.m320a(bArr);
        bOVar.bvZ(C1278y.m584a(context));
        bOVar.m151a(bx.bhu);
        bOVar.bvY(bx.bhu);
        if (z) {
            bwK = this.bhp.bwK(bOVar);
        } else {
            try {
                bwK = this.bhp.bwL(bOVar);
            } catch (Throwable e) {
                bx.bBw(e, "LocNetManager", "post");
                str2 = null;
                return str2;
            } catch (Throwable e2) {
                bx.bBw(e2, "LocNetManager", "post");
                str2 = null;
                return str2;
            }
        }
        str2 = new String(bwK, "utf-8");
        return str2;
    }

    public HttpURLConnection bBh(Context context, String str, HashMap hashMap, byte[] bArr) {
        boolean z = false;
        try {
            if (bBg(C1253X.m137c(context)) == -1) {
                return null;
            }
            C1256q bOVar = new bO();
            bOVar.bCq(hashMap);
            bOVar.m319a(str);
            bOVar.m320a(bArr);
            bOVar.bvZ(C1278y.m584a(context));
            bOVar.m151a(bx.bhu);
            bOVar.bvY(bx.bhu);
            if (str.toLowerCase(Locale.US).startsWith("https")) {
                z = true;
            }
            return this.bhp.bwJ(bOVar, z);
        } catch (Throwable th) {
            bx.bBw(th, "LocNetManager", "doHttpPost");
            return null;
        }
    }
}
