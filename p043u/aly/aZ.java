package p043u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.analytics.C1296a;
import java.lang.reflect.Method;

public class aZ {
    public static bo m852a(Context context) {
        Object obj = 1;
        try {
            Object obj2;
            bo boVar = new bo();
            long[] b = aZ.m853b(context);
            if (b[0] <= 0) {
                obj2 = 1;
            } else {
                obj2 = null;
            }
            if (obj2 == null) {
                if ((b[1] > 0 ? 1 : null) != null) {
                    SharedPreferences a = cr.m1203a(context);
                    long j = a.getLong("uptr", -1);
                    long j2 = a.getLong("dntr", -1);
                    a.edit().putLong("uptr", b[1]).putLong("dntr", b[0]).commit();
                    if (j <= 0) {
                        obj2 = 1;
                    } else {
                        obj2 = null;
                    }
                    if (obj2 == null) {
                        if ((j2 > 0 ? 1 : null) != null) {
                            b[0] = b[0] - j2;
                            b[1] = b[1] - j;
                            if (b[0] <= 0) {
                                obj2 = 1;
                            } else {
                                obj2 = null;
                            }
                            if (obj2 == null) {
                                if (b[1] <= 0) {
                                    obj = null;
                                }
                                if (obj != null) {
                                    boVar.bZz((int) b[0]);
                                    boVar.m1099a((int) b[1]);
                                    return boVar;
                                }
                            }
                            return null;
                        }
                    }
                    return null;
                }
            }
            return null;
        } catch (Exception e) {
            C1350O.m790e(C1296a.f549e, "sdk less than 2.2 has get no traffic");
            return null;
        }
    }

    private static long[] m853b(Context context) {
        Class cls = Class.forName("android.net.TrafficStats");
        Method method = cls.getMethod("getUidRxBytes", new Class[]{Integer.TYPE});
        Method method2 = cls.getMethod("getUidTxBytes", new Class[]{Integer.TYPE});
        if (context.getApplicationInfo().uid == -1) {
            return null;
        }
        r4 = new long[2];
        r4[0] = ((Long) method.invoke(null, new Object[]{Integer.valueOf(context.getApplicationInfo().uid)})).longValue();
        r4[1] = ((Long) method2.invoke(null, new Object[]{Integer.valueOf(r3)})).longValue();
        return r4;
    }
}
