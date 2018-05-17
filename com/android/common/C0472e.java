package com.android.common;

public class C0472e {
    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int aoA(byte[] r10) {
        /*
        r9 = 8;
        r3 = 1;
        r8 = 4;
        r7 = 2;
        r1 = 0;
        if (r10 != 0) goto L_0x0009;
    L_0x0008:
        return r1;
    L_0x0009:
        r0 = r1;
    L_0x000a:
        r2 = r0 + 3;
        r4 = r10.length;
        if (r2 >= r4) goto L_0x003f;
    L_0x000f:
        r2 = r0 + 1;
        r0 = r10[r0];
        r0 = r0 & 255;
        r4 = 255; // 0xff float:3.57E-43 double:1.26E-321;
        if (r0 != r4) goto L_0x0023;
    L_0x0019:
        r0 = r10[r2];
        r4 = r0 & 255;
        r0 = 255; // 0xff float:3.57E-43 double:1.26E-321;
        if (r4 != r0) goto L_0x0042;
    L_0x0021:
        r0 = r2;
        goto L_0x000a;
    L_0x0023:
        r4 = r2;
        r2 = r1;
    L_0x0025:
        if (r2 <= r9) goto L_0x00ec;
    L_0x0027:
        r0 = com.android.common.C0472e.aoC(r10, r4, r8, r1);
        r5 = 1229531648; // 0x49492a00 float:823968.0 double:6.074693478E-315;
        if (r0 == r5) goto L_0x008d;
    L_0x0030:
        r5 = 1296891946; // 0x4d4d002a float:2.14958752E8 double:6.40749757E-315;
        if (r0 == r5) goto L_0x008d;
    L_0x0035:
        r0 = "CameraExif";
        r2 = "Invalid byte order";
        com.p010a.C0090a.m1e(r0, r2);
        return r1;
    L_0x003f:
        r2 = r1;
        r4 = r0;
        goto L_0x0025;
    L_0x0042:
        r0 = r2 + 1;
        r2 = 216; // 0xd8 float:3.03E-43 double:1.067E-321;
        if (r4 == r2) goto L_0x000a;
    L_0x0048:
        if (r4 == r3) goto L_0x000a;
    L_0x004a:
        r2 = 217; // 0xd9 float:3.04E-43 double:1.07E-321;
        if (r4 == r2) goto L_0x0052;
    L_0x004e:
        r2 = 218; // 0xda float:3.05E-43 double:1.077E-321;
        if (r4 != r2) goto L_0x0055;
    L_0x0052:
        r2 = r1;
        r4 = r0;
        goto L_0x0025;
    L_0x0055:
        r5 = com.android.common.C0472e.aoC(r10, r0, r7, r1);
        if (r5 < r7) goto L_0x0060;
    L_0x005b:
        r2 = r0 + r5;
        r6 = r10.length;
        if (r2 <= r6) goto L_0x006a;
    L_0x0060:
        r0 = "CameraExif";
        r2 = "Invalid length";
        com.p010a.C0090a.m1e(r0, r2);
        return r1;
    L_0x006a:
        r2 = 225; // 0xe1 float:3.15E-43 double:1.11E-321;
        if (r4 != r2) goto L_0x008a;
    L_0x006e:
        if (r5 < r9) goto L_0x008a;
    L_0x0070:
        r2 = r0 + 2;
        r2 = com.android.common.C0472e.aoC(r10, r2, r8, r1);
        r4 = 1165519206; // 0x45786966 float:3974.5874 double:5.758429993E-315;
        if (r2 != r4) goto L_0x008a;
    L_0x007b:
        r2 = r0 + 6;
        r2 = com.android.common.C0472e.aoC(r10, r2, r7, r1);
        if (r2 != 0) goto L_0x008a;
    L_0x0083:
        r2 = r0 + 8;
        r0 = r5 + -8;
        r4 = r2;
        r2 = r0;
        goto L_0x0025;
    L_0x008a:
        r0 = r0 + r5;
        goto L_0x000a;
    L_0x008d:
        r5 = 1229531648; // 0x49492a00 float:823968.0 double:6.074693478E-315;
        if (r0 != r5) goto L_0x00ab;
    L_0x0092:
        r0 = r3;
    L_0x0093:
        r3 = r4 + 4;
        r3 = com.android.common.C0472e.aoC(r10, r3, r8, r0);
        r3 = r3 + 2;
        r5 = 10;
        if (r3 < r5) goto L_0x00a1;
    L_0x009f:
        if (r3 <= r2) goto L_0x00ad;
    L_0x00a1:
        r0 = "CameraExif";
        r2 = "Invalid offset";
        com.p010a.C0090a.m1e(r0, r2);
        return r1;
    L_0x00ab:
        r0 = r1;
        goto L_0x0093;
    L_0x00ad:
        r4 = r4 + r3;
        r3 = r2 - r3;
        r2 = r4 + -2;
        r2 = com.android.common.C0472e.aoC(r10, r2, r7, r0);
        r5 = r4;
        r4 = r3;
    L_0x00b8:
        r3 = r2 + -1;
        if (r2 <= 0) goto L_0x00ec;
    L_0x00bc:
        r2 = 12;
        if (r4 < r2) goto L_0x00ec;
    L_0x00c0:
        r2 = com.android.common.C0472e.aoC(r10, r5, r7, r0);
        r6 = 274; // 0x112 float:3.84E-43 double:1.354E-321;
        if (r2 != r6) goto L_0x00e5;
    L_0x00c8:
        r2 = r5 + 8;
        r0 = com.android.common.C0472e.aoC(r10, r2, r7, r0);
        switch(r0) {
            case 1: goto L_0x00db;
            case 2: goto L_0x00d1;
            case 3: goto L_0x00dc;
            case 4: goto L_0x00d1;
            case 5: goto L_0x00d1;
            case 6: goto L_0x00df;
            case 7: goto L_0x00d1;
            case 8: goto L_0x00e2;
            default: goto L_0x00d1;
        };
    L_0x00d1:
        r0 = "CameraExif";
        r2 = "Unsupported orientation";
        com.p010a.C0090a.bvm(r0, r2);
        return r1;
    L_0x00db:
        return r1;
    L_0x00dc:
        r0 = 180; // 0xb4 float:2.52E-43 double:8.9E-322;
        return r0;
    L_0x00df:
        r0 = 90;
        return r0;
    L_0x00e2:
        r0 = 270; // 0x10e float:3.78E-43 double:1.334E-321;
        return r0;
    L_0x00e5:
        r5 = r5 + 12;
        r2 = r4 + -12;
        r4 = r2;
        r2 = r3;
        goto L_0x00b8;
    L_0x00ec:
        r0 = "CameraExif";
        r2 = "Orientation not found";
        com.p010a.C0090a.bvm(r0, r2);
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.e.aoA(byte[]):int");
    }

    private static int aoC(byte[] bArr, int i, int i2, boolean z) {
        int i3 = 0;
        int i4 = 1;
        if (z) {
            i += i2 - 1;
            i4 = -1;
        }
        while (true) {
            int i5 = i2 - 1;
            if (i2 <= 0) {
                return i3;
            }
            i3 = (i3 << 8) | (bArr[i] & 255);
            i += i4;
            i2 = i5;
        }
    }

    public static int aoB(int i) {
        switch (i) {
            case 0:
                return 1;
            case 90:
                return 6;
            case 180:
                return 3;
            case 270:
                return 8;
            default:
                return 1;
        }
    }
}
