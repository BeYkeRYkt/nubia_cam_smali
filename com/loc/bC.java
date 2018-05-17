package com.loc;

import java.util.HashMap;
import java.util.Map;

public class bC {
    private String f249a;
    private String f250b;
    private String f251c;
    private String f252d;
    private String f253e;
    private String f254f;

    private bC() {
    }

    private bC(bY bYVar) {
        this.f249a = bYVar.f293a;
        this.f250b = bYVar.f294b;
        this.f251c = bYVar.f295c;
        this.f252d = bYVar.f296d;
        this.f253e = bYVar.f297e;
        this.f254f = bYVar.f298f;
    }

    public static String m292a(String str) {
        Map hashMap = new HashMap();
        hashMap.put("sdkname", str);
        return C1268m.bvC(hashMap);
    }

    public static String m293a(String str, String str2) {
        Map hashMap = new HashMap();
        hashMap.put("sdkname", str);
        hashMap.put("dynamicversion", str2);
        return C1268m.bvC(hashMap);
    }

    public static String m294b(String str) {
        Map hashMap = new HashMap();
        hashMap.put("filename", str);
        return C1268m.bvC(hashMap);
    }

    public static String m295b(String str, String str2) {
        Map hashMap = new HashMap();
        hashMap.put("sdkname", str);
        hashMap.put("status", str2);
        return C1268m.bvC(hashMap);
    }

    public static String bBZ(String str, String str2, String str3, String str4) {
        Map hashMap = new HashMap();
        hashMap.put("filename", str);
        hashMap.put("sdkname", str2);
        hashMap.put("dynamicversion", str4);
        hashMap.put("version", str3);
        return C1268m.bvC(hashMap);
    }

    public String m296a() {
        return this.f249a;
    }

    public String m297b() {
        return this.f250b;
    }

    public void bCa(String str) {
        this.f254f = str;
    }

    public String m298c() {
        return this.f252d;
    }

    public String m299d() {
        return this.f253e;
    }

    public String m300e() {
        return this.f254f;
    }
}
