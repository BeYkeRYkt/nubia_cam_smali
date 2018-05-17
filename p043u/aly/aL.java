package p043u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.umeng.analytics.C1296a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class aL {
    private final Map f674b = new HashMap();
    private final ArrayList bwZ = new ArrayList();

    public void m839a(String str) {
        if (!TextUtils.isEmpty(str)) {
            synchronized (this.f674b) {
                this.f674b.put(str, Long.valueOf(System.currentTimeMillis()));
            }
        }
    }

    public void m840b(String str) {
        if (!TextUtils.isEmpty(str)) {
            Long l;
            synchronized (this.f674b) {
                l = (Long) this.f674b.remove(str);
            }
            if (l != null) {
                long currentTimeMillis = System.currentTimeMillis() - l.longValue();
                synchronized (this.bwZ) {
                    this.bwZ.add(new bF(str, currentTimeMillis));
                }
            } else {
                C1350O.m790e(C1296a.f549e, String.format("please call 'onPageStart(%s)' before onPageEnd", new Object[]{str}));
            }
        }
    }

    public void m837a() {
        String str = null;
        long j = 0;
        synchronized (this.f674b) {
            for (Entry entry : this.f674b.entrySet()) {
                Object obj;
                String str2;
                long j2;
                if (((Long) entry.getValue()).longValue() <= j) {
                    obj = 1;
                } else {
                    obj = null;
                }
                if (obj == null) {
                    long longValue = ((Long) entry.getValue()).longValue();
                    str2 = (String) entry.getKey();
                    j2 = longValue;
                } else {
                    j2 = j;
                    str2 = str;
                }
                str = str2;
                j = j2;
            }
        }
        if (str != null) {
            m840b(str);
        }
    }

    public void m838a(Context context) {
        SharedPreferences a = cr.m1203a(context);
        Editor edit = a.edit();
        if (this.bwZ.size() > 0) {
            Object string = a.getString("activities", "");
            StringBuilder stringBuilder = new StringBuilder();
            if (!TextUtils.isEmpty(string)) {
                stringBuilder.append(string);
                stringBuilder.append(";");
            }
            synchronized (this.bwZ) {
                Iterator it = this.bwZ.iterator();
                while (it.hasNext()) {
                    bF bFVar = (bF) it.next();
                    stringBuilder.append(String.format("[\"%s\",%d]", new Object[]{bFVar.f790a, Long.valueOf(bFVar.f791b)}));
                    stringBuilder.append(";");
                }
                this.bwZ.clear();
            }
            stringBuilder.deleteCharAt(stringBuilder.length() - 1);
            edit.remove("activities");
            edit.putString("activities", stringBuilder.toString());
        }
        edit.commit();
    }

    public static List bVv(SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString("activities", "");
        if ("".equals(string)) {
            return null;
        }
        List arrayList = new ArrayList();
        try {
            String[] split = string.split(";");
            for (Object obj : split) {
                if (!TextUtils.isEmpty(obj)) {
                    arrayList.add(new ai(obj));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (arrayList.size() <= 0) {
            return null;
        }
        return arrayList;
    }
}
