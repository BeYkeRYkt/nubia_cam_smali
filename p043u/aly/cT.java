package p043u.aly;

import android.content.Context;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.C1296a;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class cT {
    private final int f941a = 128;
    private final int f942b = 256;
    private Context bAa;
    private db bAb;
    private C1393do bzZ;

    public cT(Context context) {
        boolean z = false;
        if (context != null) {
            this.bAa = context.getApplicationContext();
            this.bzZ = new C1393do(this.bAa);
            C1393do c1393do = this.bzZ;
            if (!AnalyticsConfig.ENABLE_MEMORY_BUFFER) {
                z = true;
            }
            c1393do.m1237a(z);
            this.bAb = db.m1220a(this.bAa);
            return;
        }
        throw new RuntimeException("Context is null, can't track event");
    }

    public void bYZ(String str, Map map, long j) {
        try {
            if (m1159a(str) && bZd(map)) {
                this.bAb.bRA(new af(str, map, j, -1));
            }
        } catch (Exception e) {
            C1350O.m788b(C1296a.f549e, "Exception occurred in Mobclick.onEvent(). ", e);
        }
    }

    public void bZa(String str, String str2, long j, int i) {
        if (m1159a(str) && m1160b(str2)) {
            Map hashMap = new HashMap();
            if (str2 == null) {
                str2 = "";
            }
            hashMap.put(str, str2);
            this.bAb.bRA(new af(str, hashMap, j, i));
        }
    }

    public void bZb(String str, Map map) {
        try {
            if (m1159a(str)) {
                this.bAb.bRA(new ah(str, map));
            }
        } catch (Exception e) {
            C1350O.m788b(C1296a.f549e, "Exception occurred in Mobclick.onEvent(). ", e);
        }
    }

    public void m1161a(String str, String str2) {
        if (m1159a(str) && m1160b(str2)) {
            this.bzZ.caN(af.bTI(str, str2, null), af.bTH(str, str2, null));
        }
    }

    public void m1162b(String str, String str2) {
        if (m1159a(str) && m1160b(str2)) {
            ae b = this.bzZ.m1238b(af.bTI(str, str2, null));
            if (b != null) {
                bZa(str, str2, (long) ((int) (System.currentTimeMillis() - b.f680a)), 0);
            }
        }
    }

    public void bZc(String str, Map map, String str2) {
        if (m1159a(str) && bZd(map)) {
            this.bzZ.caN(af.bTI(str, str2, map), af.bTH(str, str2, map));
        }
    }

    public void m1163c(String str, String str2) {
        if (m1159a(str)) {
            ae b = this.bzZ.m1238b(af.bTI(str, str2, null));
            if (b != null) {
                bYZ(str, b.f683d, (long) ((int) (System.currentTimeMillis() - b.f680a)));
            }
        }
    }

    private boolean m1159a(String str) {
        if (str != null) {
            int length = str.trim().getBytes().length;
            if (length > 0 && length <= 128) {
                return true;
            }
        }
        C1350O.m787b(C1296a.f549e, "Event id is empty or too long in tracking Event");
        return false;
    }

    private boolean m1160b(String str) {
        if (str == null || str.trim().getBytes().length <= 256) {
            return true;
        }
        C1350O.m787b(C1296a.f549e, "Event label or value is empty or too long in tracking Event");
        return false;
    }

    private boolean bZd(Map map) {
        if (map == null || map.isEmpty()) {
            C1350O.m787b(C1296a.f549e, "map is null or empty in onEvent");
            return false;
        }
        for (Entry entry : map.entrySet()) {
            if (!m1159a((String) entry.getKey()) || entry.getValue() == null) {
                return false;
            }
            if ((entry.getValue() instanceof String) && !m1160b(entry.getValue().toString())) {
                return false;
            }
        }
        return true;
    }
}
