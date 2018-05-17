package com.loc;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

public class ag {
    private String f202a;
    private String f203b;
    private String[] bff;
    private int f204c;
    private String f205d;
    private String f206e;
    private String f207f;
    private String f208g;
    private String f209h;
    private String f210i;
    private String f211j;

    private ag() {
        this.f204c = 1;
        this.bff = null;
    }

    private ag(cx cxVar) {
        int i = 0;
        this.f204c = 1;
        this.bff = null;
        this.f208g = cxVar.f422a;
        this.f210i = cxVar.f423b;
        this.f209h = cxVar.f424c;
        if (cxVar.f425d) {
            i = 1;
        }
        this.f204c = i;
        this.f211j = cxVar.f426e;
        this.bff = cxVar.f427f;
        this.f203b = bv.m432b(this.f208g);
        this.f202a = bv.m432b(this.f210i);
        this.f205d = bv.m432b(this.f209h);
        this.f206e = bv.m432b(bxV(this.bff));
        this.f207f = bv.m432b(this.f211j);
    }

    public static String m236a(String str) {
        Map hashMap = new HashMap();
        hashMap.put("a1", bv.m432b(str));
        return C1268m.bvC(hashMap);
    }

    private String[] m237b(String str) {
        try {
            return str.split(";");
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private String bxV(String[] strArr) {
        if (strArr == null) {
            return null;
        }
        try {
            StringBuilder stringBuilder = new StringBuilder();
            for (String append : strArr) {
                stringBuilder.append(append).append(";");
            }
            return stringBuilder.toString();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static String m238f() {
        return "a6=1";
    }

    public String m239a() {
        if (TextUtils.isEmpty(this.f210i) && !TextUtils.isEmpty(this.f202a)) {
            this.f210i = bv.bBk(this.f202a);
        }
        return this.f210i;
    }

    public void m240a(boolean z) {
        int i = 0;
        if (z) {
            i = 1;
        }
        this.f204c = i;
    }

    public String m241b() {
        if (TextUtils.isEmpty(this.f208g) && !TextUtils.isEmpty(this.f203b)) {
            this.f208g = bv.bBk(this.f203b);
        }
        return this.f208g;
    }

    public String m242c() {
        if (TextUtils.isEmpty(this.f211j) && !TextUtils.isEmpty(this.f207f)) {
            this.f211j = bv.bBk(this.f207f);
        }
        if (TextUtils.isEmpty(this.f211j)) {
            this.f211j = "standard";
        }
        return this.f211j;
    }

    public boolean m243d() {
        return this.f204c == 1;
    }

    public String[] m244e() {
        if (this.bff == null || this.bff.length == 0) {
            if (!TextUtils.isEmpty(this.f206e)) {
                this.bff = m237b(bv.bBk(this.f206e));
            }
        }
        return (String[]) this.bff.clone();
    }
}
