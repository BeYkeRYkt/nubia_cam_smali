package p043u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class C1393do {
    private final String f988a = "umeng_event_snapshot";
    private boolean f989b = false;
    private SharedPreferences bBb;
    private Map f990d = new HashMap();

    public C1393do(Context context) {
        this.bBb = cr.m1204a(context, "umeng_event_snapshot");
    }

    public void m1237a(boolean z) {
        this.f989b = z;
    }

    public void caN(String str, ae aeVar) {
        if (this.f989b) {
            caP(str);
        }
        if (this.f990d.containsKey(str)) {
            ((ArrayList) this.f990d.get(str)).add(aeVar);
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.add(aeVar);
            this.f990d.put(str, arrayList);
        }
        if (this.f989b) {
            caO(str);
        }
    }

    public ae m1238b(String str) {
        ae aeVar;
        if (this.f989b) {
            caP(str);
        }
        if (this.f990d.containsKey(str)) {
            ArrayList arrayList = (ArrayList) this.f990d.get(str);
            if (arrayList.size() <= 0) {
                aeVar = null;
            } else {
                aeVar = (ae) arrayList.remove(arrayList.size() - 1);
            }
        } else {
            aeVar = null;
        }
        if (this.f989b) {
            caO(str);
        }
        return aeVar;
    }

    private void caO(String str) {
        String str2 = null;
        if (this.f990d.containsKey(str)) {
            ArrayList arrayList = (ArrayList) this.f990d.get(str);
            while (arrayList.size() > 4) {
                arrayList.remove(0);
            }
            str2 = bw.bVW(arrayList);
        }
        this.bBb.edit().putString(str, str2).commit();
    }

    private boolean caP(String str) {
        if (this.f990d.containsKey(str)) {
            return true;
        }
        String string = this.bBb.getString(str, null);
        if (string != null) {
            ArrayList arrayList = (ArrayList) bw.m1128a(string);
            if (arrayList != null) {
                this.f990d.put(str, arrayList);
                return true;
            }
        }
        return false;
    }
}
