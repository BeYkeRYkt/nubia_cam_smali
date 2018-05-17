package com.loc;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.os.SystemClock;
import android.text.TextUtils;
import com.umeng.analytics.C1296a;
import org.json.JSONObject;

public class bQ {
    private static Context f271a;
    private static String f272b = "提示信息";
    private static long bhT = 5000;
    private static boolean bhU = false;
    private static int bhV = 0;
    private static boolean bhW = false;
    private static int bhX = 0;
    private static boolean bhY = false;
    private static boolean bhZ = true;
    private static boolean bia = true;
    private static int bib = -1;
    private static long bic = 0;
    private static boolean bid = true;
    private static int bie = -1;
    private static long bif = 0;
    private static String big;
    private static String bih;
    private static boolean bii = false;
    private static boolean bij = false;
    private static int bik = 3000;
    private static int bil = 0;
    private static boolean bim = true;
    private static long bin = 300000;
    private static String f273c = "确认";
    private static String f274d = "取消";
    private static String f275e = "";
    private static String f276f = "";
    private static String f277g = "";
    private static boolean f278h = false;
    private static long f279i = 0;
    private static long f280j = 0;

    public static synchronized void m328a(boolean z) {
        synchronized (bQ.class) {
            bii = z;
        }
    }

    public static boolean m329a() {
        return bhU;
    }

    public static boolean m330a(long j) {
        long b = C1253X.m132b();
        if (f278h) {
            if (!(b - f280j > f279i)) {
                if (b - j >= bhT) {
                    return true;
                }
            }
        }
        return false;
    }

    public static synchronized boolean m331a(Context context) {
        boolean z;
        synchronized (bQ.class) {
            f271a = context;
            z = false;
            try {
                be bxw = ae.bxw(context, bx.m434a("2.5.1"), bx.m440c(context), null);
                if (bxw != null) {
                    z = bCF(bxw);
                }
            } catch (Throwable th) {
                bx.bBw(th, "AuthUtil", "getConfig");
            }
        }
        return z;
    }

    public static int m332b() {
        return bhV;
    }

    public static void m333b(Context context) {
        try {
            boolean bBW = bA.bBW(context, "pref", "exception", false);
            ag a = bx.m434a("2.5.1");
            a.m240a(bBW);
            bp.bAW(context, a);
        } catch (Throwable th) {
            bx.bBw(th, "AuthUtil", "isUploadException");
        }
    }

    private static void bCA(be beVar) {
        try {
            bl blVar = beVar.bgQ;
            if (blVar != null) {
                big = blVar.f328a;
                bih = blVar.f329b;
                if (!TextUtils.isEmpty(big) && !TextUtils.isEmpty(bih)) {
                    new C1251V(f271a, "loc", big, bih).m118a();
                }
            }
        } catch (Throwable th) {
            bx.bBw(th, "AuthUtil", "loadConfigData_groupOffset");
        }
    }

    private static void bCB(be beVar) {
        try {
            aB aBVar = beVar.bgO;
            if (aBVar != null) {
                boolean z = aBVar.f159a;
                ag a = bx.m434a("2.5.1");
                a.m240a(z);
                bp.bAW(f271a, a);
                bCI(f271a, z);
            }
        } catch (Throwable th) {
            bx.bBw(th, "AuthUtil", "loadConfigData_uploadException");
        }
    }

    private static void bCC(be beVar) {
        try {
            JSONObject jSONObject = beVar.bgI;
            if (jSONObject != null && ae.bxv(jSONObject.optString("able", null), false)) {
                C1238J bCG = bCG(jSONObject, "fs");
                if (bCG != null) {
                    bhU = bCG.bea;
                    try {
                        bhV = Integer.parseInt(bCG.f124b);
                    } catch (Throwable th) {
                        bx.bBw(th, "AuthUtil", "loadconfig part2");
                    }
                }
                bCG = bCG(jSONObject, "us");
                if (bCG != null) {
                    bhW = bCG.bea;
                    bhY = bCG.f123a;
                    try {
                        bhX = Integer.parseInt(bCG.f124b);
                    } catch (Throwable th2) {
                        bx.bBw(th2, "AuthUtil", "loadconfig part1");
                    }
                    if (bhX < 2) {
                        bhW = false;
                    }
                }
                bCG = bCG(jSONObject, "rs");
                if (bCG != null) {
                    f278h = bCG.bea;
                    if (f278h) {
                        f280j = C1253X.m132b();
                        bhT = (long) (bCG.f125d * 1000);
                    }
                    f279i = (long) (Integer.parseInt(bCG.f124b) * 1000);
                }
            }
        } catch (Throwable th22) {
            bx.bBw(th22, "AuthUtil", "loadConfigData_locate");
        }
    }

    private static void bCD(be beVar) {
        try {
            JSONObject jSONObject = beVar.bgK;
            if (jSONObject != null) {
                bij = ae.bxv(jSONObject.optString("able"), false);
                int optInt = jSONObject.optInt("c", 3);
                if (optInt != 0) {
                    bik = optInt * 1000;
                } else {
                    bik = 3000;
                }
                bil = jSONObject.optInt("t", 0) / 2;
            }
        } catch (Throwable th) {
            bx.bBw(th, "AuthUtil", "loadConfigData_ngps");
        }
    }

    private static void bCE(be beVar) {
        try {
            JSONObject jSONObject = beVar.bgL;
            if (jSONObject != null) {
                bim = ae.bxv(jSONObject.optString("able", ""), true);
                bin = (long) (jSONObject.optInt("c", 0) * 1000);
            }
        } catch (Throwable th) {
            bx.bBw(th, "AuthUtil", "loadConfigData_cacheAble");
        }
    }

    private static boolean bCF(be beVar) {
        try {
            bCv(beVar);
            bCw(beVar);
            bCx(beVar);
            bCy(beVar);
            bCz(beVar);
            bCA(beVar);
            bCB(beVar);
            bCC(beVar);
            bCD(beVar);
            bCE(beVar);
            return true;
        } catch (Throwable th) {
            bx.bBw(th, "AuthUtil", "loadconfig");
            return false;
        }
    }

    private static C1238J bCG(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return null;
        }
        JSONObject optJSONObject = jSONObject.optJSONObject(str);
        if (optJSONObject == null) {
            return null;
        }
        C1238J c1238j = new C1238J();
        c1238j.f123a = ae.bxv(optJSONObject.optString("b", "0"), false);
        c1238j.f124b = optJSONObject.optString("t", "0");
        c1238j.bea = ae.bxv(optJSONObject.optString("st", null), false);
        c1238j.f125d = optJSONObject.optInt("i", 5);
        return c1238j;
    }

    public static synchronized boolean bCH() {
        boolean z;
        synchronized (bQ.class) {
            z = bii;
        }
        return z;
    }

    private static void bCI(Context context, boolean z) {
        bA.bBV(context, "pref", "exception", z);
    }

    public static boolean bCJ(long j) {
        if (!bij) {
            return false;
        }
        long a = C1253X.m125a();
        if (!(a - j >= ((long) bik))) {
            return false;
        }
        if (bil == -1) {
            return true;
        }
        if (C1253X.bxp(a, bA.bBS(f271a, "pref", "ngpsTime", 0))) {
            int bBU = bA.bBU(f271a, "pref", "ngpsCount", 0);
            if (bBU >= bil) {
                return false;
            }
            bA.bBT(f271a, "pref", "ngpsCount", bBU + 1);
            return true;
        }
        bCK(f271a, a);
        bA.bBT(f271a, "pref", "ngpsCount", 1);
        return true;
    }

    private static void bCK(Context context, long j) {
        try {
            Editor edit = context.getSharedPreferences("pref", 0).edit();
            edit.putLong("ngpsTime", j);
            edit.putInt("ngpsCount", 0);
            bA.bBP(edit);
        } catch (Throwable th) {
            bx.bBw(th, "AuthUtil", "resetPrefsNGPS");
        }
    }

    public static boolean bCL() {
        return bim;
    }

    public static long bCM() {
        return bin;
    }

    private static void bCv(be beVar) {
        try {
            JSONObject jSONObject = beVar.bgJ;
            if (jSONObject != null) {
                bhZ = ae.bxv(jSONObject.optString("opflag", ""), true);
            }
        } catch (Throwable th) {
            bx.bBw(th, "AuthUtil", "loadConfigData_offlineLoc");
        }
    }

    private static void bCw(be beVar) {
        try {
            JSONObject jSONObject = beVar.bgF;
            if (jSONObject != null) {
                bia = ae.bxv(jSONObject.optString("callamapflag", null), true);
                bib = jSONObject.optInt("count", -1);
                bic = jSONObject.optLong("sysTime", 0);
                if (bib != -1 && bic != 0) {
                    if (!C1253X.bxo(bic, bA.bBS(f271a, "pref", "nowtime", 0))) {
                        m334c(f271a);
                    }
                }
            }
        } catch (Throwable th) {
            bx.bBw(th, "AuthUtil", "loadConfigData_callAMapSer");
        }
    }

    private static void bCx(be beVar) {
        try {
            JSONObject jSONObject = beVar.bgG;
            if (jSONObject != null) {
                bid = ae.bxv(jSONObject.optString("amappushflag", null), false);
                bie = jSONObject.optInt("count", -1);
                bif = jSONObject.optLong("sysTime", 0);
                if (bie != -1 && bif != 0) {
                    if (!C1253X.bxo(bif, bA.bBS(f271a, "pref", "pushSerTime", 0))) {
                        m337d(f271a);
                    }
                }
            }
        } catch (Throwable th) {
            bx.bBw(th, "AuthUtil", "loadConfigData_callAMapPush");
        }
    }

    private static void bCy(be beVar) {
        Object obj = 1;
        try {
            JSONObject jSONObject = beVar.bgH;
            if (jSONObject != null) {
                bii = ae.bxv(jSONObject.optString("f", null), false);
                if (bii) {
                    long bBS = bA.bBS(f271a, "abcd", "abc", 0);
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    if ((elapsedRealtime - bBS <= C1296a.f552h ? 1 : null) == null) {
                        bA.bBR(f271a, "abcd", "abc", elapsedRealtime);
                    }
                    if ((elapsedRealtime <= bBS ? 1 : null) == null) {
                        if ((elapsedRealtime - bBS >= C1296a.f552h ? 1 : null) == null) {
                            bii = false;
                        }
                    }
                    if (elapsedRealtime < bBS) {
                        obj = null;
                    }
                    if (obj == null) {
                        bii = false;
                        bA.bBR(f271a, "abcd", "abc", elapsedRealtime);
                    }
                }
                f272b = jSONObject.optString("a", "提示信息");
                f273c = jSONObject.optString("o", "确认");
                f274d = jSONObject.optString("c", "取消");
                f275e = jSONObject.optString("i", "");
                f276f = jSONObject.optString("u", "");
                f277g = jSONObject.optString("t", "");
                if (!TextUtils.isEmpty(f275e) && !"null".equals(f275e)) {
                    return;
                }
                if (TextUtils.isEmpty(f276f) || "null".equals(f276f)) {
                    bii = false;
                }
            }
        } catch (Throwable th) {
            bx.bBw(th, "AuthUtil", "loadConfigData_openAMap");
        }
    }

    private static void bCz(be beVar) {
        try {
            ag a = bx.m434a("2.5.1");
            bL bLVar = beVar.bgP;
            if (bLVar == null) {
                bH.bCi(f271a, null, a);
                return;
            }
            Object obj = bLVar.f266b;
            Object obj2 = bLVar.f265a;
            Object obj3 = bLVar.f267c;
            if (!TextUtils.isEmpty(obj)) {
                if (!(TextUtils.isEmpty(obj2) || TextUtils.isEmpty(obj3))) {
                    bH.bCi(f271a, new ch(obj2, obj, obj3), a);
                    return;
                }
            }
            bH.bCi(f271a, null, a);
        } catch (Throwable th) {
            bx.bBw(th, "AuthUtil", "loadConfigData_sdkUpdate");
        }
    }

    private static void m334c(Context context) {
        Editor edit;
        try {
            edit = context.getSharedPreferences("pref", 0).edit();
            if (bic == 0) {
                edit.remove("nowtime");
            } else {
                edit.putLong("nowtime", bic);
            }
        } catch (Throwable th) {
            bx.bBw(th, "AuthUtil", "resetPrefsBind");
            return;
        }
        if (bib != -1) {
            edit.putInt("count", 0);
        } else {
            edit.remove("count");
        }
        bA.bBP(edit);
    }

    public static boolean m335c() {
        return bhW;
    }

    public static int m336d() {
        return bhX;
    }

    private static void m337d(Context context) {
        Editor edit;
        try {
            edit = context.getSharedPreferences("pref", 0).edit();
            if (bif == 0) {
                edit.remove("pushSerTime");
            } else {
                edit.putLong("pushSerTime", bif);
            }
        } catch (Throwable th) {
            bx.bBw(th, "AuthUtil", "resetPrefsBind");
            return;
        }
        if (bie != -1) {
            edit.putInt("pushCount", 0);
        } else {
            edit.remove("pushCount");
        }
        bA.bBP(edit);
    }

    public static boolean m338e() {
        return bhY;
    }

    public static boolean m339f() {
        cu.f412a = bhZ;
        return bhZ;
    }

    public static String m340g() {
        return f272b;
    }

    public static String m341h() {
        return f273c;
    }

    public static String m342i() {
        return f274d;
    }

    public static String m343j() {
        return f275e;
    }

    public static String m344k() {
        return f276f;
    }

    public static String m345l() {
        return f277g;
    }

    public static boolean m346m() {
        if (!bia) {
            return false;
        }
        if (bib == -1 || bic == 0) {
            return true;
        }
        if (C1253X.bxo(bic, bA.bBS(f271a, "pref", "nowtime", 0))) {
            int bBU = bA.bBU(f271a, "pref", "count", 0);
            if (bBU >= bib) {
                return false;
            }
            bA.bBT(f271a, "pref", "count", bBU + 1);
            return true;
        }
        m334c(f271a);
        bA.bBT(f271a, "pref", "count", 1);
        return true;
    }

    public static boolean m347n() {
        if (!bid) {
            return false;
        }
        if (bie == -1 || bif == 0) {
            return true;
        }
        if (C1253X.bxo(bif, bA.bBS(f271a, "pref", "pushSerTime", 0))) {
            int bBU = bA.bBU(f271a, "pref", "pushCount", 0);
            if (bBU >= bie) {
                return false;
            }
            bA.bBT(f271a, "pref", "pushCount", bBU + 1);
            return true;
        }
        m337d(f271a);
        bA.bBT(f271a, "pref", "pushCount", 1);
        return true;
    }
}
