package com.loc;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

class aN extends aA {
    private Map bgg;
    private String f172f;

    aN(Context context, ag agVar, String str, Map map) {
        super(context, agVar);
        this.f172f = str;
        this.bgg = map;
    }

    private Map m189i() {
        Object bFT = cn.bFT(this.a);
        if (!TextUtils.isEmpty(bFT)) {
            bFT = bU.m369b(new StringBuilder(bFT).reverse().toString());
        }
        Map hashMap = new HashMap();
        hashMap.put("authkey", this.f172f);
        hashMap.put("plattype", "android");
        hashMap.put("product", this.bfP.m239a());
        hashMap.put("version", this.bfP.m241b());
        hashMap.put("output", "json");
        hashMap.put("androidversion", VERSION.SDK_INT + "");
        hashMap.put("deviceId", bFT);
        if (!(this.bgg == null || this.bgg.isEmpty())) {
            hashMap.putAll(this.bgg);
        }
        if (VERSION.SDK_INT >= 21) {
            try {
                ApplicationInfo applicationInfo = this.a.getApplicationInfo();
                Field declaredField = Class.forName(ApplicationInfo.class.getName()).getDeclaredField("primaryCpuAbi");
                declaredField.setAccessible(true);
                String str = (String) declaredField.get(applicationInfo);
            } catch (Throwable th) {
                C1259s.bwd(th, "ConfigManager", "getcpu");
            }
            if (TextUtils.isEmpty(bFT)) {
                bFT = Build.CPU_ABI;
            }
            hashMap.put("abitype", bFT);
            hashMap.put("ext", this.bfP.m242c());
            return hashMap;
        }
        bFT = null;
        if (TextUtils.isEmpty(bFT)) {
            bFT = Build.CPU_ABI;
        }
        hashMap.put("abitype", bFT);
        hashMap.put("ext", this.bfP.m242c());
        return hashMap;
    }

    public Map mo930a() {
        return null;
    }

    public String mo931b() {
        return "https://restapi.amap.com/v3/iasdkauth";
    }

    public byte[] bzd() {
        return null;
    }

    public byte[] bze() {
        return bv.m431a(bv.bBm(m189i()));
    }

    protected String mo934e() {
        return "3.0";
    }
}
