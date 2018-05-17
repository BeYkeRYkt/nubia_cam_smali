package com.loc;

public class aX {
    public double f180a = 0.0d;
    public double f181b = 0.0d;
    final /* synthetic */ cy bgv;
    public int f182c = 0;
    public String f183d = "0";
    public int f184e = -1;

    public aX(cy cyVar, double d, double d2) {
        this.bgv = cyVar;
        this.f180a = d;
        this.f181b = d2;
    }

    public aX(cy cyVar, double d, double d2, int i, int i2) {
        this.bgv = cyVar;
        this.f180a = d;
        this.f181b = d2;
        this.f182c = i;
        this.f184e = i2;
    }

    public aX(cy cyVar, double d, double d2, int i, String str, double d3, int i2) {
        this.bgv = cyVar;
        this.f180a = d;
        this.f181b = d2;
        this.f183d = str;
        this.f182c = i;
        this.f184e = i2;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean bAm(com.loc.aX r13) {
        /*
        r12 = this;
        r10 = 4662219572839972864; // 0x40b3880000000000 float:0.0 double:5000.0;
        r8 = 4647503709213818880; // 0x407f400000000000 float:0.0 double:500.0;
        r6 = 4609434218613702656; // 0x3ff8000000000000 float:0.0 double:1.5;
        r0 = 1;
        r1 = 0;
        r4 = r12.bAn(r13);
        r2 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1));
        if (r2 >= 0) goto L_0x0017;
    L_0x0016:
        return r0;
    L_0x0017:
        r2 = r12.f184e;
        if (r2 > 0) goto L_0x003d;
    L_0x001b:
        r2 = r12.f184e;
        if (r2 == 0) goto L_0x0062;
    L_0x001f:
        r2 = r12.f184e;
        if (r2 <= 0) goto L_0x0076;
    L_0x0023:
        r2 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1));
        if (r2 >= 0) goto L_0x0094;
    L_0x0027:
        r2 = r0;
    L_0x0028:
        if (r2 != 0) goto L_0x003b;
    L_0x002a:
        r2 = r12.f182c;
        r2 = (double) r2;
        r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1));
        if (r2 >= 0) goto L_0x0096;
    L_0x0031:
        r2 = r0;
    L_0x0032:
        if (r2 != 0) goto L_0x003b;
    L_0x0034:
        r2 = r13.f182c;
        r2 = (double) r2;
        r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1));
        if (r2 >= 0) goto L_0x003c;
    L_0x003b:
        r1 = r0;
    L_0x003c:
        return r1;
    L_0x003d:
        r2 = r13.f184e;
        if (r2 != 0) goto L_0x001b;
    L_0x0041:
        r2 = r12.f184e;
        if (r2 != r0) goto L_0x0067;
    L_0x0045:
        r2 = 4658815484840378368; // 0x40a7700000000000 float:0.0 double:3000.0;
        r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1));
        if (r2 >= 0) goto L_0x0072;
    L_0x004e:
        r2 = r12.f182c;
        r2 = (double) r2;
        r2 = r2 * r6;
        r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1));
        if (r2 >= 0) goto L_0x0070;
    L_0x0056:
        r2 = r0;
    L_0x0057:
        if (r2 != 0) goto L_0x0061;
    L_0x0059:
        r2 = r13.f182c;
        r2 = (double) r2;
        r2 = r2 * r6;
        r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1));
        if (r2 >= 0) goto L_0x0072;
    L_0x0061:
        return r0;
    L_0x0062:
        r2 = r13.f184e;
        if (r2 > 0) goto L_0x0041;
    L_0x0066:
        goto L_0x001f;
    L_0x0067:
        r2 = r13.f184e;
        if (r2 == r0) goto L_0x0045;
    L_0x006b:
        r2 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1));
        if (r2 >= 0) goto L_0x0074;
    L_0x006f:
        return r0;
    L_0x0070:
        r2 = r1;
        goto L_0x0057;
    L_0x0072:
        r0 = r1;
        goto L_0x0061;
    L_0x0074:
        r0 = r1;
        goto L_0x006f;
    L_0x0076:
        r2 = r13.f184e;
        if (r2 > 0) goto L_0x0023;
    L_0x007a:
        r2 = r12.f182c;
        r2 = (double) r2;
        r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1));
        if (r2 >= 0) goto L_0x0098;
    L_0x0081:
        r2 = r0;
    L_0x0082:
        if (r2 != 0) goto L_0x0092;
    L_0x0084:
        r2 = r13.f182c;
        r2 = (double) r2;
        r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1));
        if (r2 >= 0) goto L_0x009a;
    L_0x008b:
        r2 = r0;
    L_0x008c:
        if (r2 != 0) goto L_0x0092;
    L_0x008e:
        r2 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1));
        if (r2 >= 0) goto L_0x0093;
    L_0x0092:
        r1 = r0;
    L_0x0093:
        return r1;
    L_0x0094:
        r2 = r1;
        goto L_0x0028;
    L_0x0096:
        r2 = r1;
        goto L_0x0032;
    L_0x0098:
        r2 = r1;
        goto L_0x0082;
    L_0x009a:
        r2 = r1;
        goto L_0x008c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.aX.bAm(com.loc.aX):boolean");
    }

    private double bAn(aX aXVar) {
        double d = (((90.0d - this.f180a) * 21412.0d) / 90.0d) + 6356725.0d;
        double cos = (Math.cos((this.f180a * 3.1415926535898d) / 180.0d) * d) * (((aXVar.f181b - this.f181b) * 3.1415926535898d) / 180.0d);
        d *= ((aXVar.f180a - this.f180a) * 3.1415926535898d) / 180.0d;
        return Math.sqrt((d * d) + (cos * cos));
    }
}
