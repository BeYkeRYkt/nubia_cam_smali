package p043u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.C1296a;
import java.util.Arrays;
import java.util.List;

public class dg {
    private static String f981g = null;
    private final String f982d = "a_start_time";
    private final String f983e = "a_end_time";

    public aj m1229a(Context context) {
        SharedPreferences a = cr.m1203a(context);
        String string = a.getString("session_id", null);
        if (string == null) {
            return null;
        }
        long j = a.getLong("session_start_time", 0);
        long j2 = a.getLong("session_end_time", 0);
        long j3 = 0;
        if (j2 != 0) {
            j3 = j2 - j;
            if ((Math.abs(j3) <= C1296a.f551g ? 1 : null) == null) {
                j3 = 0;
            }
        }
        aj ajVar = new aj();
        ajVar.m878a(string);
        ajVar.m877a(j);
        ajVar.bRE(j2);
        ajVar.bRG(j3);
        double[] location = AnalyticsConfig.getLocation();
        if (location != null) {
            bg bgVar = new bg(location[0], location[1], System.currentTimeMillis());
            if (ajVar.bRO()) {
                ajVar.bRM(bgVar);
            } else {
                ajVar.bRN(Arrays.asList(new bg[]{bgVar}));
            }
        }
        bo a2 = aZ.m852a(context);
        if (a2 != null) {
            ajVar.bRQ(a2);
        }
        List bVv = aL.bVv(a);
        if (bVv != null && bVv.size() > 0) {
            ajVar.m879a(bVv);
        }
        bZw(a);
        return ajVar;
    }

    private void bZw(SharedPreferences sharedPreferences) {
        Editor edit = sharedPreferences.edit();
        edit.remove("session_start_time");
        edit.remove("session_end_time");
        edit.remove("a_start_time");
        edit.remove("a_end_time");
        edit.putString("activities", "");
        edit.commit();
    }

    public String m1230b(Context context) {
        String f = C1394e.m1248f(context);
        String appkey = AnalyticsConfig.getAppkey(context);
        long currentTimeMillis = System.currentTimeMillis();
        if (appkey != null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(currentTimeMillis).append(appkey).append(f);
            f981g = bu.m1124a(stringBuilder.toString());
            return f981g;
        }
        throw new RuntimeException("Appkey is null or empty, Please check AndroidManifest.xml");
    }

    public void m1231c(Context context) {
        SharedPreferences a = cr.m1203a(context);
        if (a != null) {
            if (bZx(a)) {
                C1350O.m785a(C1296a.f549e, "Start new session: " + bZy(context, a));
            } else {
                String string = a.getString("session_id", null);
                Editor edit = a.edit();
                edit.putLong("a_start_time", System.currentTimeMillis());
                edit.putLong("a_end_time", 0);
                edit.commit();
                C1350O.m785a(C1296a.f549e, "Extend current session: " + string);
            }
        }
    }

    public void m1232d(Context context) {
        SharedPreferences a = cr.m1203a(context);
        if (a != null) {
            if (a.getLong("a_start_time", 0) == 0 && AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
                C1350O.m787b(C1296a.f549e, "onPause called before onResume");
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                Editor edit = a.edit();
                edit.putLong("a_start_time", 0);
                edit.putLong("a_end_time", currentTimeMillis);
                edit.putLong("session_end_time", currentTimeMillis);
                edit.commit();
            }
        }
    }

    private boolean bZx(SharedPreferences sharedPreferences) {
        boolean z;
        long j = sharedPreferences.getLong("a_start_time", 0);
        long j2 = sharedPreferences.getLong("a_end_time", 0);
        long currentTimeMillis = System.currentTimeMillis();
        if (j != 0) {
            if (currentTimeMillis - j >= AnalyticsConfig.kContinueSessionMillis) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                C1350O.m787b(C1296a.f549e, "onResume called before onPause");
                return false;
            }
        }
        if (currentTimeMillis - j2 <= AnalyticsConfig.kContinueSessionMillis) {
            z = true;
        } else {
            z = false;
        }
        return !z;
    }

    private String bZy(Context context, SharedPreferences sharedPreferences) {
        db a = db.m1220a(context);
        String b = m1230b(context);
        C1351P a2 = m1229a(context);
        Editor edit = sharedPreferences.edit();
        edit.putString("session_id", b);
        edit.putLong("session_start_time", System.currentTimeMillis());
        edit.putLong("session_end_time", 0);
        edit.putLong("a_start_time", System.currentTimeMillis());
        edit.putLong("a_end_time", 0);
        edit.commit();
        if (a2 == null) {
            a.bRA((aj) null);
        } else {
            a.bRA(a2);
        }
        return b;
    }

    public boolean m1233e(Context context) {
        boolean z = true;
        SharedPreferences a = cr.m1203a(context);
        if (a == null || a.getString("session_id", null) == null) {
            return false;
        }
        boolean z2;
        long j = a.getLong("a_start_time", 0);
        long j2 = a.getLong("a_end_time", 0);
        if (j <= 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2 || j2 != 0) {
            z = false;
        } else {
            m1232d(context);
        }
        db a2 = db.m1220a(context);
        C1351P a3 = m1229a(context);
        if (a3 != null) {
            a2.bRz(a3);
        }
        return z;
    }

    public void m1234f(Context context) {
        SharedPreferences a = cr.m1203a(context);
        if (a != null) {
            String b = m1230b(context);
            Editor edit = a.edit();
            edit.putString("session_id", b);
            edit.putLong("session_start_time", System.currentTimeMillis());
            edit.putLong("session_end_time", 0);
            edit.putLong("a_start_time", System.currentTimeMillis());
            edit.putLong("a_end_time", 0);
            edit.commit();
            C1350O.m785a(C1296a.f549e, "Restart session: " + b);
        }
    }

    public static String m1228g(Context context) {
        if (f981g == null) {
            f981g = cr.m1203a(context).getString("session_id", null);
        }
        return f981g;
    }
}
