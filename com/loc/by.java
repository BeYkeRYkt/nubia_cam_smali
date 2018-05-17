package com.loc;

import android.content.Context;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.autonavi.aps.amapapi.model.AmapLoc;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map.Entry;

public class by {
    public static final int[] f346a = new int[]{0, 0};
    static int f347b = 213891;
    private static Hashtable bhA = new Hashtable();
    private static aV bhB = new aV();
    private static Hashtable bhC = new Hashtable();
    private static TelephonyManager bhD = null;
    private static volatile String f348c = null;

    static int m442a(int i) {
        int i2 = 0;
        int[] iArr = new int[32];
        int i3 = 0;
        while (i2 < 4) {
            iArr[i2] = (i >> (i2 * 8)) & 255;
            iArr[i2] = ((iArr[i2] << 4) & 240) + ((iArr[i2] >> 4) & 15);
            i3 += (iArr[i2] & 255) << ((3 - i2) * 8);
            i2++;
        }
        return f347b + i3;
    }

    private static int m443a(String str) {
        if (TextUtils.isEmpty(str) || !str.contains("cgi")) {
            return 9;
        }
        String[] split = str.split("#");
        return split.length != 7 ? split.length == 8 ? 2 : 9 : 1;
    }

    private static String m444a(int i, String str) {
        String[] split = str.split("#");
        switch (i) {
            case 1:
                return split[1] + "_" + split[2];
            case 2:
                return split[3];
            default:
                return null;
        }
    }

    public static void m445a() {
        bhB.m169a();
        bhA.clear();
        bhC.clear();
        f346a[0] = 0;
        f346a[1] = 0;
    }

    private static void m446b(String str) {
        RandomAccessFile randomAccessFile;
        Throwable th;
        if (!bhC.containsKey(str) || TextUtils.isEmpty((CharSequence) bhC.get(str))) {
            File file = new File(str);
            if (file.exists() && file.isFile()) {
                try {
                    randomAccessFile = new RandomAccessFile(file, "r");
                    try {
                        randomAccessFile.seek(8);
                        int readUnsignedShort = randomAccessFile.readUnsignedShort();
                        StringBuilder stringBuilder = new StringBuilder();
                        for (int i = 0; i < readUnsignedShort; i++) {
                            int readInt = randomAccessFile.readInt();
                            if (stringBuilder.indexOf("," + readInt) == -1) {
                                stringBuilder.append(",").append(readInt);
                            }
                            if (i == readUnsignedShort - 1) {
                                stringBuilder.append(",");
                            }
                        }
                        bhC.put(str, stringBuilder.toString());
                        stringBuilder.delete(0, stringBuilder.length());
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                            } catch (Throwable th2) {
                                bx.bBw(th2, "Off", "loadFcFea part3");
                            }
                        }
                    } catch (FileNotFoundException e) {
                        th2 = e;
                    } catch (Throwable th3) {
                        th2 = th3;
                    }
                } catch (FileNotFoundException e2) {
                    th2 = e2;
                    randomAccessFile = null;
                    try {
                        bx.bBw(th2, "Off", "loadFcFea part1");
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                            } catch (Throwable th22) {
                                bx.bBw(th22, "Off", "loadFcFea part3");
                            }
                        }
                    } catch (Throwable th4) {
                        th22 = th4;
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                            } catch (Throwable th5) {
                                bx.bBw(th5, "Off", "loadFcFea part3");
                            }
                        }
                        throw th22;
                    }
                } catch (Throwable th6) {
                    th22 = th6;
                    randomAccessFile = null;
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    throw th22;
                }
            }
        }
    }

    public static boolean m447b() {
        return !bhC.isEmpty();
    }

    private static void bBA(String str, Hashtable hashtable) {
        if (!TextUtils.isEmpty(str)) {
            String[] strArr = new String[2];
            for (String str2 : str.split("#")) {
                if (str2.contains(",")) {
                    String[] split = str2.split(",");
                    hashtable.put(split[0], split[1]);
                }
            }
        }
    }

    private static AmapLoc bBB(Hashtable hashtable, Hashtable hashtable2, int i, int i2) {
        String str;
        ArrayList bGS;
        AmapLoc amapLoc;
        cy cyVar = new cy();
        if (!hashtable.isEmpty()) {
            for (Entry value : hashtable.entrySet()) {
                str = (String) value.getValue();
                int i3 = !str.contains("access") ? 0 : 1;
                if (str.contains("|")) {
                    try {
                        cyVar.m547a(i3 == 0 ? 2 : 1, str.substring(0, str.lastIndexOf("|")));
                    } catch (Throwable th) {
                        bx.bBw(th, "Off", "calLoc part3");
                    }
                }
            }
        }
        if (!hashtable2.isEmpty()) {
            for (Entry value2 : hashtable2.entrySet()) {
                str = (String) value2.getValue();
                if (str.contains("|")) {
                    try {
                        cyVar.m547a(0, str.substring(0, str.lastIndexOf("|")));
                    } catch (Throwable th2) {
                        bx.bBw(th2, "Off", "calLoc part2");
                    }
                }
            }
        }
        try {
            bGS = cyVar.bGS((double) i2, (double) i);
        } catch (Throwable th22) {
            bx.bBw(th22, "Off", "calLoc part4");
            bGS = null;
        }
        if (bGS == null || bGS.isEmpty()) {
            amapLoc = null;
        } else {
            aX aXVar = (aX) bGS.get(0);
            AmapLoc amapLoc2 = new AmapLoc();
            amapLoc2.bHA("network");
            amapLoc2.bHF(aXVar.f180a);
            amapLoc2.bHC(aXVar.f181b);
            amapLoc2.bHI((float) aXVar.f182c);
            amapLoc2.bHY(aXVar.f183d);
            amapLoc2.bIw("0");
            amapLoc2.bHM(C1253X.m125a());
            bGS.clear();
            amapLoc = amapLoc2;
        }
        if (!C1253X.bwV(amapLoc)) {
            return null;
        }
        amapLoc.bHO("file");
        return amapLoc;
    }

    public static boolean bBC(Context context, String str, String str2, int i, int i2, boolean z, boolean z2) {
        if (!bBL(context, str, i, false, z)) {
            return false;
        }
        if (i2 == 0) {
            return bBD(context, str, str2, i, z2);
        }
        int i3 = i2 != 1 ? 24 : 8;
        String[] bBx = bBx(0.0d, 0.0d, str2);
        for (int i4 = 1; i4 < i3; i4++) {
            bBD(context, str, bBx[i4], i, z2);
        }
        return true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean bBD(android.content.Context r11, java.lang.String r12, java.lang.String r13, int r14, boolean r15) {
        /*
        r0 = 2;
        r6 = new java.lang.String[r0];
        r0 = bBK(r12, r13, r14, r6);
        if (r0 == 0) goto L_0x0063;
    L_0x0009:
        r0 = bhA;
        r1 = 1;
        r1 = r6[r1];
        r0 = r0.containsKey(r1);
        if (r0 != 0) goto L_0x0065;
    L_0x0014:
        r1 = 0;
        r3 = 0;
        r2 = 0;
        r4 = 0;
        com.loc.C1253X.m132b();	 Catch:{ UnknownHostException -> 0x03f8, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r0 = new java.util.HashMap;	 Catch:{ UnknownHostException -> 0x03f8, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r0.<init>();	 Catch:{ UnknownHostException -> 0x03f8, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r5 = "v";
        r7 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r7 = java.lang.String.valueOf(r7);	 Catch:{ UnknownHostException -> 0x03f8, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r0.put(r5, r7);	 Catch:{ UnknownHostException -> 0x03f8, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r5 = 1;
        r5 = com.loc.bu.bBd(r11, r5);	 Catch:{ UnknownHostException -> 0x03f8, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r7 = "https://offline.aps.amap.com/LoadOfflineData/getData";
        r8 = 0;
        r8 = r6[r8];	 Catch:{ UnknownHostException -> 0x03f8, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r9 = "UTF-8";
        r8 = r8.getBytes(r9);	 Catch:{ UnknownHostException -> 0x03f8, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r4 = r5.bBh(r11, r7, r0, r8);	 Catch:{ UnknownHostException -> 0x03f8, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        if (r4 == 0) goto L_0x0091;
    L_0x0044:
        r0 = r4.getResponseCode();	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r5 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r0 == r5) goto L_0x0095;
    L_0x004c:
        r5 = 404; // 0x194 float:5.66E-43 double:1.996E-321;
        if (r0 == r5) goto L_0x0405;
    L_0x0050:
        r0 = r2;
        r2 = r1;
        r1 = r3;
    L_0x0053:
        if (r0 != 0) goto L_0x0280;
    L_0x0055:
        if (r1 != 0) goto L_0x0291;
    L_0x0057:
        if (r4 != 0) goto L_0x02a2;
    L_0x0059:
        r1 = r2;
    L_0x005a:
        r0 = f348c;
        r0 = android.text.TextUtils.isEmpty(r0);
        if (r0 == 0) goto L_0x026a;
    L_0x0062:
        return r1;
    L_0x0063:
        r0 = 0;
        return r0;
    L_0x0065:
        r0 = bhA;
        r1 = 1;
        r1 = r6[r1];
        r0 = r0.get(r1);
        r0 = (java.lang.Long) r0;
        r0 = r0.longValue();
        r2 = com.loc.C1253X.m125a();
        r0 = r2 - r0;
        r2 = 86400000; // 0x5265c00 float:7.82218E-36 double:4.2687272E-316;
        r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r0 < 0) goto L_0x0086;
    L_0x0081:
        r0 = 1;
    L_0x0082:
        if (r0 != 0) goto L_0x0088;
    L_0x0084:
        r0 = 0;
        return r0;
    L_0x0086:
        r0 = 0;
        goto L_0x0082;
    L_0x0088:
        r0 = bhA;
        r1 = 1;
        r1 = r6[r1];
        r0.remove(r1);
        goto L_0x0014;
    L_0x0091:
        if (r4 != 0) goto L_0x026f;
    L_0x0093:
        r0 = 0;
        return r0;
    L_0x0095:
        r5 = 0;
        r0 = r4.getHeaderFields();	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r0 = r0.entrySet();	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r7 = r0.iterator();	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
    L_0x00a2:
        r0 = r7.hasNext();	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        if (r0 != 0) goto L_0x00d5;
    L_0x00a8:
        r0 = r5;
    L_0x00a9:
        r5 = 260; // 0x104 float:3.64E-43 double:1.285E-321;
        if (r0 == r5) goto L_0x00fa;
    L_0x00ad:
        r0 = com.loc.bx.bhv;	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        if (r0 != 0) goto L_0x0248;
    L_0x00b1:
        r0 = r2;
        r2 = r1;
        r1 = r3;
    L_0x00b4:
        if (r15 == 0) goto L_0x0053;
    L_0x00b6:
        r3 = 1;
        r3 = r6[r3];	 Catch:{ UnknownHostException -> 0x00bd, SocketException -> 0x03f0, SocketTimeoutException -> 0x03df, EOFException -> 0x03ce, Throwable -> 0x03bd, all -> 0x03a8 }
        m446b(r3);	 Catch:{ UnknownHostException -> 0x00bd, SocketException -> 0x03f0, SocketTimeoutException -> 0x03df, EOFException -> 0x03ce, Throwable -> 0x03bd, all -> 0x03a8 }
        goto L_0x0053;
    L_0x00bd:
        r3 = move-exception;
        r10 = r3;
        r3 = r1;
        r1 = r4;
        r4 = r2;
        r2 = r0;
        r0 = r10;
    L_0x00c4:
        r5 = "Off";
        r6 = "c 2 part2";
        com.loc.bx.bBw(r0, r5, r6);	 Catch:{ all -> 0x03ae }
        if (r2 != 0) goto L_0x02b3;
    L_0x00cf:
        if (r3 != 0) goto L_0x02c4;
    L_0x00d1:
        if (r1 != 0) goto L_0x02d5;
    L_0x00d3:
        r1 = r4;
        goto L_0x005a;
    L_0x00d5:
        r0 = r7.next();	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r0 = (java.util.Map.Entry) r0;	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r8 = "code";
        r9 = r0.getKey();	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r8 = r8.equals(r9);	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        if (r8 == 0) goto L_0x00a2;
    L_0x00e8:
        r0 = r0.getValue();	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r0 = (java.util.List) r0;	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r5 = 0;
        r0 = r0.get(r5);	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r0 = (java.lang.String) r0;	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r0 = java.lang.Integer.parseInt(r0);	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        goto L_0x00a9;
    L_0x00fa:
        r0 = 1;
        r0 = r6[r0];	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        f348c = r0;	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r0 = 1;
        r5 = r4.getInputStream();	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r3 = new java.util.zip.GZIPInputStream;	 Catch:{ UnknownHostException -> 0x03fe, SocketException -> 0x03ec, SocketTimeoutException -> 0x03db, EOFException -> 0x03ca, Throwable -> 0x03b9, all -> 0x03a1 }
        r3.<init>(r5);	 Catch:{ UnknownHostException -> 0x03fe, SocketException -> 0x03ec, SocketTimeoutException -> 0x03db, EOFException -> 0x03ca, Throwable -> 0x03b9, all -> 0x03a1 }
        r2 = new java.io.File;	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r7 = 1;
        r7 = r6[r7];	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r2.<init>(r7);	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r7 = r2.exists();	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        if (r7 != 0) goto L_0x011e;
    L_0x0117:
        if (r0 != 0) goto L_0x0126;
    L_0x0119:
        r0 = r1;
        r1 = r5;
        r2 = r0;
        r0 = r3;
        goto L_0x00b4;
    L_0x011e:
        r7 = r2.delete();	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        if (r7 != 0) goto L_0x0117;
    L_0x0124:
        r0 = 0;
        goto L_0x0117;
    L_0x0126:
        r0 = com.loc.bx.bhv;	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        if (r0 == 0) goto L_0x0119;
    L_0x012a:
        r0 = r2.getParentFile();	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r7 = r0.exists();	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        if (r7 == 0) goto L_0x0195;
    L_0x0134:
        r0 = new java.io.FileOutputStream;	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r0.<init>(r2);	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r2 = new java.io.BufferedOutputStream;	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r7 = 2048; // 0x800 float:2.87E-42 double:1.0118E-320;
        r2.<init>(r0, r7);	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r0 = 2048; // 0x800 float:2.87E-42 double:1.0118E-320;
        r0 = new byte[r0];	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
    L_0x0144:
        r7 = 0;
        r8 = 2048; // 0x800 float:2.87E-42 double:1.0118E-320;
        r7 = r3.read(r0, r7, r8);	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r8 = -1;
        if (r7 != r8) goto L_0x01ba;
    L_0x014e:
        r2.flush();	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r2.close();	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r1 = 1;
        r0 = bhA;	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r2 = 1;
        r2 = r6[r2];	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r8 = com.loc.C1253X.m125a();	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r7 = java.lang.Long.valueOf(r8);	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r0.put(r2, r7);	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r8 = 0;
        r0 = "yyyyMMdd";
        r0 = com.loc.C1253X.bxn(r8, r0);	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r2 = f346a;	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r7 = 0;
        r2 = r2[r7];	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r2 = java.lang.String.valueOf(r2);	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r2 = r0.equals(r2);	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        if (r2 != 0) goto L_0x01e0;
    L_0x017d:
        r2 = f346a;	 Catch:{ Throwable -> 0x020f, UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee }
        r7 = 0;
        r0 = java.lang.Integer.parseInt(r0);	 Catch:{ Throwable -> 0x020f, UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee }
        r2[r7] = r0;	 Catch:{ Throwable -> 0x020f, UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee }
    L_0x0186:
        r0 = f346a;	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r2 = 1;
        r7 = 1;
        r0[r2] = r7;	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        goto L_0x0119;
    L_0x018d:
        r0 = move-exception;
        r2 = r3;
        r3 = r5;
        r10 = r4;
        r4 = r1;
        r1 = r10;
        goto L_0x00c4;
    L_0x0195:
        r0.mkdirs();	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        goto L_0x0134;
    L_0x0199:
        r0 = move-exception;
    L_0x019a:
        r2 = "Off";
        r6 = "c 2 part3";
        com.loc.bx.bBw(r0, r2, r6);	 Catch:{ all -> 0x03a5 }
        if (r3 != 0) goto L_0x02e6;
    L_0x01a5:
        if (r5 != 0) goto L_0x02f7;
    L_0x01a7:
        if (r4 == 0) goto L_0x005a;
    L_0x01a9:
        r4.disconnect();	 Catch:{ Throwable -> 0x01ae }
        goto L_0x005a;
    L_0x01ae:
        r0 = move-exception;
        r2 = "Off";
        r3 = "c 2 part9";
        com.loc.bx.bBw(r0, r2, r3);
        goto L_0x005a;
    L_0x01ba:
        r8 = 0;
        r2.write(r0, r8, r7);	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        goto L_0x0144;
    L_0x01bf:
        r0 = move-exception;
    L_0x01c0:
        r2 = "Off";
        r6 = "c 2 part4";
        com.loc.bx.bBw(r0, r2, r6);	 Catch:{ all -> 0x03a5 }
        if (r3 != 0) goto L_0x0308;
    L_0x01cb:
        if (r5 != 0) goto L_0x0319;
    L_0x01cd:
        if (r4 == 0) goto L_0x005a;
    L_0x01cf:
        r4.disconnect();	 Catch:{ Throwable -> 0x01d4 }
        goto L_0x005a;
    L_0x01d4:
        r0 = move-exception;
        r2 = "Off";
        r3 = "c 2 part9";
        com.loc.bx.bBw(r0, r2, r3);
        goto L_0x005a;
    L_0x01e0:
        r0 = f346a;	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r2 = 1;
        r7 = f346a;	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r8 = 1;
        r7 = r7[r8];	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r7 = r7 + 1;
        r0[r2] = r7;	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        goto L_0x0119;
    L_0x01ee:
        r0 = move-exception;
    L_0x01ef:
        r2 = "Off";
        r6 = "c 2 part5";
        com.loc.bx.bBw(r0, r2, r6);	 Catch:{ all -> 0x03a5 }
        if (r3 != 0) goto L_0x032a;
    L_0x01fa:
        if (r5 != 0) goto L_0x033b;
    L_0x01fc:
        if (r4 == 0) goto L_0x005a;
    L_0x01fe:
        r4.disconnect();	 Catch:{ Throwable -> 0x0203 }
        goto L_0x005a;
    L_0x0203:
        r0 = move-exception;
        r2 = "Off";
        r3 = "c 2 part9";
        com.loc.bx.bBw(r0, r2, r3);
        goto L_0x005a;
    L_0x020f:
        r0 = move-exception;
        r2 = f346a;	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r7 = 0;
        r8 = 0;
        r2[r7] = r8;	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r2 = f346a;	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r7 = 1;
        r8 = 0;
        r2[r7] = r8;	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        r2 = "Off";
        r7 = "c 2 part1";
        com.loc.bx.bBw(r0, r2, r7);	 Catch:{ UnknownHostException -> 0x018d, SocketException -> 0x0199, SocketTimeoutException -> 0x01bf, EOFException -> 0x01ee, Throwable -> 0x0227 }
        goto L_0x0186;
    L_0x0227:
        r0 = move-exception;
    L_0x0228:
        r2 = "Off";
        r6 = "c 2 part6";
        com.loc.bx.bBw(r0, r2, r6);	 Catch:{ all -> 0x03a5 }
        if (r3 != 0) goto L_0x034c;
    L_0x0233:
        if (r5 != 0) goto L_0x035d;
    L_0x0235:
        if (r4 == 0) goto L_0x005a;
    L_0x0237:
        r4.disconnect();	 Catch:{ Throwable -> 0x023c }
        goto L_0x005a;
    L_0x023c:
        r0 = move-exception;
        r2 = "Off";
        r3 = "c 2 part9";
        com.loc.bx.bBw(r0, r2, r3);
        goto L_0x005a;
    L_0x0248:
        r0 = bhA;	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r5 = 1;
        r5 = r6[r5];	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r8 = com.loc.C1253X.m125a();	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r7 = java.lang.Long.valueOf(r8);	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        r0.put(r5, r7);	 Catch:{ UnknownHostException -> 0x025a, SocketException -> 0x03e7, SocketTimeoutException -> 0x03d6, EOFException -> 0x03c5, Throwable -> 0x03b4, all -> 0x0260 }
        goto L_0x00b1;
    L_0x025a:
        r0 = move-exception;
        r10 = r4;
        r4 = r1;
        r1 = r10;
        goto L_0x00c4;
    L_0x0260:
        r0 = move-exception;
        r5 = r3;
        r3 = r2;
    L_0x0263:
        if (r3 != 0) goto L_0x036e;
    L_0x0265:
        if (r5 != 0) goto L_0x037f;
    L_0x0267:
        if (r4 != 0) goto L_0x0390;
    L_0x0269:
        throw r0;
    L_0x026a:
        r0 = 0;
        f348c = r0;
        goto L_0x0062;
    L_0x026f:
        r4.disconnect();	 Catch:{ Throwable -> 0x0274 }
        goto L_0x0093;
    L_0x0274:
        r0 = move-exception;
        r1 = "Off";
        r2 = "c 2 part9";
        com.loc.bx.bBw(r0, r1, r2);
        goto L_0x0093;
    L_0x0280:
        r0.close();	 Catch:{ Throwable -> 0x0285 }
        goto L_0x0055;
    L_0x0285:
        r0 = move-exception;
        r3 = "Off";
        r5 = "c 2 part7";
        com.loc.bx.bBw(r0, r3, r5);
        goto L_0x0055;
    L_0x0291:
        r1.close();	 Catch:{ Throwable -> 0x0296 }
        goto L_0x0057;
    L_0x0296:
        r0 = move-exception;
        r1 = "Off";
        r3 = "c 2 part8";
        com.loc.bx.bBw(r0, r1, r3);
        goto L_0x0057;
    L_0x02a2:
        r4.disconnect();	 Catch:{ Throwable -> 0x02a7 }
        goto L_0x0059;
    L_0x02a7:
        r0 = move-exception;
        r1 = "Off";
        r3 = "c 2 part9";
        com.loc.bx.bBw(r0, r1, r3);
        goto L_0x0059;
    L_0x02b3:
        r2.close();	 Catch:{ Throwable -> 0x02b8 }
        goto L_0x00cf;
    L_0x02b8:
        r0 = move-exception;
        r2 = "Off";
        r5 = "c 2 part7";
        com.loc.bx.bBw(r0, r2, r5);
        goto L_0x00cf;
    L_0x02c4:
        r3.close();	 Catch:{ Throwable -> 0x02c9 }
        goto L_0x00d1;
    L_0x02c9:
        r0 = move-exception;
        r2 = "Off";
        r3 = "c 2 part8";
        com.loc.bx.bBw(r0, r2, r3);
        goto L_0x00d1;
    L_0x02d5:
        r1.disconnect();	 Catch:{ Throwable -> 0x02da }
        goto L_0x00d3;
    L_0x02da:
        r0 = move-exception;
        r1 = "Off";
        r2 = "c 2 part9";
        com.loc.bx.bBw(r0, r1, r2);
        goto L_0x00d3;
    L_0x02e6:
        r3.close();	 Catch:{ Throwable -> 0x02eb }
        goto L_0x01a5;
    L_0x02eb:
        r0 = move-exception;
        r2 = "Off";
        r3 = "c 2 part7";
        com.loc.bx.bBw(r0, r2, r3);
        goto L_0x01a5;
    L_0x02f7:
        r5.close();	 Catch:{ Throwable -> 0x02fc }
        goto L_0x01a7;
    L_0x02fc:
        r0 = move-exception;
        r2 = "Off";
        r3 = "c 2 part8";
        com.loc.bx.bBw(r0, r2, r3);
        goto L_0x01a7;
    L_0x0308:
        r3.close();	 Catch:{ Throwable -> 0x030d }
        goto L_0x01cb;
    L_0x030d:
        r0 = move-exception;
        r2 = "Off";
        r3 = "c 2 part7";
        com.loc.bx.bBw(r0, r2, r3);
        goto L_0x01cb;
    L_0x0319:
        r5.close();	 Catch:{ Throwable -> 0x031e }
        goto L_0x01cd;
    L_0x031e:
        r0 = move-exception;
        r2 = "Off";
        r3 = "c 2 part8";
        com.loc.bx.bBw(r0, r2, r3);
        goto L_0x01cd;
    L_0x032a:
        r3.close();	 Catch:{ Throwable -> 0x032f }
        goto L_0x01fa;
    L_0x032f:
        r0 = move-exception;
        r2 = "Off";
        r3 = "c 2 part7";
        com.loc.bx.bBw(r0, r2, r3);
        goto L_0x01fa;
    L_0x033b:
        r5.close();	 Catch:{ Throwable -> 0x0340 }
        goto L_0x01fc;
    L_0x0340:
        r0 = move-exception;
        r2 = "Off";
        r3 = "c 2 part8";
        com.loc.bx.bBw(r0, r2, r3);
        goto L_0x01fc;
    L_0x034c:
        r3.close();	 Catch:{ Throwable -> 0x0351 }
        goto L_0x0233;
    L_0x0351:
        r0 = move-exception;
        r2 = "Off";
        r3 = "c 2 part7";
        com.loc.bx.bBw(r0, r2, r3);
        goto L_0x0233;
    L_0x035d:
        r5.close();	 Catch:{ Throwable -> 0x0362 }
        goto L_0x0235;
    L_0x0362:
        r0 = move-exception;
        r2 = "Off";
        r3 = "c 2 part8";
        com.loc.bx.bBw(r0, r2, r3);
        goto L_0x0235;
    L_0x036e:
        r3.close();	 Catch:{ Throwable -> 0x0373 }
        goto L_0x0265;
    L_0x0373:
        r1 = move-exception;
        r2 = "Off";
        r3 = "c 2 part7";
        com.loc.bx.bBw(r1, r2, r3);
        goto L_0x0265;
    L_0x037f:
        r5.close();	 Catch:{ Throwable -> 0x0384 }
        goto L_0x0267;
    L_0x0384:
        r1 = move-exception;
        r2 = "Off";
        r3 = "c 2 part8";
        com.loc.bx.bBw(r1, r2, r3);
        goto L_0x0267;
    L_0x0390:
        r4.disconnect();	 Catch:{ Throwable -> 0x0395 }
        goto L_0x0269;
    L_0x0395:
        r1 = move-exception;
        r2 = "Off";
        r3 = "c 2 part9";
        com.loc.bx.bBw(r1, r2, r3);
        goto L_0x0269;
    L_0x03a1:
        r0 = move-exception;
        r3 = r2;
        goto L_0x0263;
    L_0x03a5:
        r0 = move-exception;
        goto L_0x0263;
    L_0x03a8:
        r2 = move-exception;
        r3 = r0;
        r5 = r1;
        r0 = r2;
        goto L_0x0263;
    L_0x03ae:
        r0 = move-exception;
        r4 = r1;
        r5 = r3;
        r3 = r2;
        goto L_0x0263;
    L_0x03b4:
        r0 = move-exception;
        r5 = r3;
        r3 = r2;
        goto L_0x0228;
    L_0x03b9:
        r0 = move-exception;
        r3 = r2;
        goto L_0x0228;
    L_0x03bd:
        r3 = move-exception;
        r5 = r1;
        r1 = r2;
        r10 = r3;
        r3 = r0;
        r0 = r10;
        goto L_0x0228;
    L_0x03c5:
        r0 = move-exception;
        r5 = r3;
        r3 = r2;
        goto L_0x01ef;
    L_0x03ca:
        r0 = move-exception;
        r3 = r2;
        goto L_0x01ef;
    L_0x03ce:
        r3 = move-exception;
        r5 = r1;
        r1 = r2;
        r10 = r3;
        r3 = r0;
        r0 = r10;
        goto L_0x01ef;
    L_0x03d6:
        r0 = move-exception;
        r5 = r3;
        r3 = r2;
        goto L_0x01c0;
    L_0x03db:
        r0 = move-exception;
        r3 = r2;
        goto L_0x01c0;
    L_0x03df:
        r3 = move-exception;
        r5 = r1;
        r1 = r2;
        r10 = r3;
        r3 = r0;
        r0 = r10;
        goto L_0x01c0;
    L_0x03e7:
        r0 = move-exception;
        r5 = r3;
        r3 = r2;
        goto L_0x019a;
    L_0x03ec:
        r0 = move-exception;
        r3 = r2;
        goto L_0x019a;
    L_0x03f0:
        r3 = move-exception;
        r5 = r1;
        r1 = r2;
        r10 = r3;
        r3 = r0;
        r0 = r10;
        goto L_0x019a;
    L_0x03f8:
        r0 = move-exception;
        r10 = r4;
        r4 = r1;
        r1 = r10;
        goto L_0x00c4;
    L_0x03fe:
        r0 = move-exception;
        r3 = r5;
        r10 = r4;
        r4 = r1;
        r1 = r10;
        goto L_0x00c4;
    L_0x0405:
        r0 = r2;
        r2 = r1;
        r1 = r3;
        goto L_0x0053;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.by.bBD(android.content.Context, java.lang.String, java.lang.String, int, boolean):boolean");
    }

    private static double[] bBE(int i, cb cbVar, String str, int i2) {
        String str2;
        int i3;
        Throwable th;
        double[] dArr = null;
        int[] iArr = null;
        if (i2 != 0) {
            str2 = "wifi";
        } else {
            String[] split = str.split("\\|");
            iArr = new int[split.length];
            for (i3 = 0; i3 < split.length; i3++) {
                iArr[i3] = Integer.parseInt(split[i3]);
            }
            str2 = split.length != 2 ? "cdma" : "gsm";
        }
        try {
            if ((cbVar.m471g() <= ((long) i) ? 1 : null) == null) {
                cbVar.m464a((long) i);
                i3 = bBF(i, cbVar, str, iArr, i, ((int) cbVar.m471g()) - 16, str2, 0);
                if (i3 != -1) {
                    cbVar.m464a((long) (i3 + 6));
                    double[] dArr2 = new double[3];
                    try {
                        dArr2[0] = ((double) m442a(cbVar.m469e())) / 1000000.0d;
                        dArr2[1] = ((double) m442a(cbVar.m469e())) / 1000000.0d;
                        dArr2[2] = (double) cbVar.m468d();
                        return (C1253X.bwS(dArr2[1]) && C1253X.bwT(dArr2[0])) ? dArr2 : null;
                    } catch (Throwable th2) {
                        dArr = dArr2;
                        th = th2;
                        bx.bBw(th, "Off", "binS");
                        return dArr;
                    }
                }
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
            bx.bBw(th, "Off", "binS");
            return dArr;
        }
    }

    private static int bBF(int i, cb cbVar, String str, int[] iArr, int i2, int i3, String str2, int i4) {
        int i5 = i4 + 1;
        if (i5 > 25) {
            return -1;
        }
        int i6 = (((((i2 + i3) / 2) - i) / 16) * 16) + i;
        int bBG = bBG(cbVar, str, iArr, i6, str2);
        if (i2 == i6 && i6 == i3) {
            if (bBG != 0) {
                i2 = -1;
            }
            return i2;
        } else if (bBG == Integer.MAX_VALUE) {
            return -1;
        } else {
            if (bBG == 0) {
                return i6;
            }
            if (bBG < 0) {
                return bBF(i, cbVar, str, iArr, i2, i6, str2, i5);
            }
            return bBF(i, cbVar, str, iArr, i6 + 16, i3, str2, i5);
        }
    }

    private static int bBG(cb cbVar, String str, int[] iArr, int i, String str2) {
        try {
            cbVar.m464a((long) i);
            int i2;
            int i3;
            if (str2.equals("gsm")) {
                i2 = iArr[0];
                i3 = iArr[1];
                int d = cbVar.m468d();
                int e = cbVar.m469e();
                return i2 >= d ? i2 <= d ? i3 >= e ? i3 <= e ? 0 : 1 : -1 : 1 : -1;
            } else if (str2.equals("cdma")) {
                r2 = new int[]{iArr[0], iArr[1], iArr[2]};
                int[] iArr2 = new int[3];
                for (i2 = 0; i2 < 3; i2++) {
                    iArr2[i2] = cbVar.m468d();
                    if (r2[i2] < iArr2[i2]) {
                        return -1;
                    }
                    if (r2[i2] > iArr2[i2]) {
                        return 1;
                    }
                }
                return 0;
            } else {
                if (str2.equals("wifi")) {
                    byte[] b = C1253X.m135b(str);
                    int[] iArr3 = new int[6];
                    i3 = 0;
                    while (i3 < 6) {
                        iArr3[i3] = b[i3] >= (byte) 0 ? b[i3] : b[i3] + 256;
                        i3++;
                    }
                    r2 = new int[6];
                    for (i2 = 0; i2 < 6; i2++) {
                        r2[i2] = cbVar.m470f();
                        if (iArr3[i2] < r2[i2]) {
                            return -1;
                        }
                        if (iArr3[i2] > r2[i2]) {
                            return 1;
                        }
                    }
                    return 0;
                }
                return Integer.MAX_VALUE;
            }
        } catch (Throwable th) {
            bx.bBw(th, "Off", "cmpItem");
        }
    }

    public static ArrayList bBH(String str, boolean z) {
        ArrayList arrayList = null;
        if (bhC.isEmpty()) {
            return null;
        }
        int a = m443a(str);
        String[] split = str.split("#");
        switch (a) {
            case 1:
            case 2:
                ArrayList arrayList2 = null;
                for (String str2 : bhC.keySet()) {
                    if (((String) bhC.get(str2)).contains("," + split[3] + ",")) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(str2);
                        if (z) {
                            return arrayList2;
                        }
                    }
                    arrayList2 = arrayList2;
                }
                arrayList = arrayList2;
                break;
        }
        return arrayList;
    }

    public static boolean bBI(String str, String str2, int i, int i2) {
        boolean z = true;
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        if (i2 == 0) {
            String bBJ = bBJ(str, str2, i);
            if (bBJ != null) {
                File file = new File(bBJ);
                if (file.exists() && file.isFile()) {
                    file.delete();
                }
                if (bhC.containsKey(bBJ)) {
                    bhC.remove(bBJ);
                }
                if (bhA.containsKey(bBJ)) {
                    bhA.remove(bBJ);
                }
            }
            return true;
        } else if (i2 != 1 && i2 != 2) {
            return false;
        } else {
            String[] bBx = bBx(0.0d, 0.0d, str2);
            boolean z2 = i2 != 1 ? i2 != 2 ? false : true : true;
            if (i == 1) {
                z = false;
            } else if (i != 2) {
                return false;
            }
            Hashtable hashtable = bhC;
            Hashtable hashtable2 = bhA;
            for (z = 
/*
Method generation error in method: com.loc.by.bBI(java.lang.String, java.lang.String, int, int):boolean
jadx.core.utils.exceptions.CodegenException: Error generate insn: PHI: (r0_2 'z' boolean) = (r0_0 'z' boolean), (r0_1 'z' boolean) binds: {(r0_0 'z' boolean)=B:9:0x001c, (r0_1 'z' boolean)=B:30:0x0060} in method: com.loc.by.bBI(java.lang.String, java.lang.String, int, int):boolean
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:226)
	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:184)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:61)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:93)
	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:128)
	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:146)
	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:124)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:57)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:183)
	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:328)
	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:265)
	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:228)
	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:118)
	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:83)
	at jadx.core.codegen.CodeGen.visit(CodeGen.java:19)
	at jadx.core.ProcessClass.process(ProcessClass.java:43)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:306)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:199)
Caused by: jadx.core.utils.exceptions.CodegenException: PHI can be used only in fallback mode
	at jadx.core.codegen.InsnGen.fallbackOnlyInsn(InsnGen.java:530)
	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:514)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:220)
	... 26 more

*/

            private static String bBJ(String str, String str2, int i) {
                if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                    return null;
                }
                StringBuilder c = m448c();
                int indexOf;
                switch (i) {
                    case 1:
                        c.append(m444a(m443a(str), str)).append(File.separator);
                        if (str2.startsWith("-")) {
                            c.append(str2.substring(0, 4));
                        } else {
                            c.append(str2.substring(0, 3));
                        }
                        c.append(",");
                        indexOf = str2.indexOf(",") + 1;
                        if (str2.substring(indexOf, indexOf + 1).startsWith("-")) {
                            c.append(str2.substring(indexOf, indexOf + 4));
                        } else {
                            c.append(str2.substring(indexOf, indexOf + 3));
                        }
                        c.append(File.separator).append(str2);
                        break;
                    case 2:
                        c.append("wifi").append(File.separator);
                        c.append(str2.substring(0, 3)).append(",");
                        indexOf = str2.indexOf(",") + 1;
                        c.append(str2.substring(indexOf, indexOf + 3));
                        c.append(File.separator).append(str2);
                        break;
                    default:
                        return null;
                }
                return c.toString();
            }

            /* JADX WARNING: inconsistent code. */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            private static boolean bBK(java.lang.String r10, java.lang.String r11, int r12, java.lang.String[] r13) {
                /*
                r4 = 0;
                r7 = 3;
                r9 = 1;
                r3 = 0;
                r8 = 0;
                r0 = android.text.TextUtils.isEmpty(r10);
                if (r0 == 0) goto L_0x000d;
            L_0x000c:
                return r8;
            L_0x000d:
                r0 = android.text.TextUtils.isEmpty(r11);
                if (r0 != 0) goto L_0x000c;
            L_0x0013:
                if (r13 != 0) goto L_0x0016;
            L_0x0015:
                return r8;
            L_0x0016:
                r0 = r13.length;
                r1 = 2;
                if (r0 != r1) goto L_0x0015;
            L_0x001a:
                r1 = m448c();
                switch(r12) {
                    case 1: goto L_0x0022;
                    case 2: goto L_0x00f1;
                    default: goto L_0x0021;
                };
            L_0x0021:
                return r8;
            L_0x0022:
                r0 = m443a(r10);
                r0 = m444a(r0, r10);
                r2 = r1.append(r0);
                r6 = java.io.File.separator;
                r2.append(r6);
                r2 = "-";
                r2 = r11.startsWith(r2);
                if (r2 != 0) goto L_0x00dc;
            L_0x003c:
                r2 = r11.substring(r8, r7);
                r1.append(r2);
            L_0x0043:
                r2 = ",";
                r1.append(r2);
                r2 = ",";
                r2 = r11.indexOf(r2);
                r2 = r2 + 1;
                r6 = r2 + 1;
                r6 = r11.substring(r2, r6);
                r7 = "-";
                r6 = r6.startsWith(r7);
                if (r6 != 0) goto L_0x00e6;
            L_0x0061:
                r6 = r2 + 3;
                r2 = r11.substring(r2, r6);
                r1.append(r2);
            L_0x006a:
                r2 = java.io.File.separator;
                r2 = r1.append(r2);
                r2.append(r11);
            L_0x0073:
                r2 = r1.toString();
                r13[r9] = r2;
                r2 = r1.length();
                r1.delete(r8, r2);
                r1 = new java.io.File;
                r2 = r13[r9];
                r1.<init>(r2);
                r2 = r1.exists();
                if (r2 != 0) goto L_0x0128;
            L_0x008d:
                r2 = r4;
                r1 = new org.json.JSONObject;
                r1.<init>();
                r4 = "v";
                r5 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
                r5 = java.lang.String.valueOf(r5);	 Catch:{ Throwable -> 0x0191 }
                r1.put(r4, r5);	 Catch:{ Throwable -> 0x0191 }
                r4 = "geohash";
                r1.put(r4, r11);	 Catch:{ Throwable -> 0x0191 }
                r4 = "t";
                r2 = java.lang.String.valueOf(r2);	 Catch:{ Throwable -> 0x0191 }
                r1.put(r4, r2);	 Catch:{ Throwable -> 0x0191 }
                r2 = "type";
                r1.put(r2, r0);	 Catch:{ Throwable -> 0x0191 }
                r0 = "imei";
                r2 = com.loc.bx.f333a;	 Catch:{ Throwable -> 0x0191 }
                r1.put(r0, r2);	 Catch:{ Throwable -> 0x0191 }
                r0 = "imsi";
                r2 = com.loc.bx.f334b;	 Catch:{ Throwable -> 0x0191 }
                r1.put(r0, r2);	 Catch:{ Throwable -> 0x0191 }
                r0 = "src";
                r2 = com.loc.bx.f336d;	 Catch:{ Throwable -> 0x0191 }
                r1.put(r0, r2);	 Catch:{ Throwable -> 0x0191 }
                r0 = "license";
                r2 = com.loc.bx.f337e;	 Catch:{ Throwable -> 0x0191 }
                r1.put(r0, r2);	 Catch:{ Throwable -> 0x0191 }
            L_0x00d5:
                r0 = r1.toString();
                r13[r8] = r0;
                return r9;
            L_0x00dc:
                r2 = 4;
                r2 = r11.substring(r8, r2);
                r1.append(r2);
                goto L_0x0043;
            L_0x00e6:
                r6 = r2 + 4;
                r2 = r11.substring(r2, r6);
                r1.append(r2);
                goto L_0x006a;
            L_0x00f1:
                r0 = "wifi";
                r2 = r1.append(r0);
                r6 = java.io.File.separator;
                r2.append(r6);
                r2 = r11.substring(r8, r7);
                r2 = r1.append(r2);
                r6 = ",";
                r2.append(r6);
                r2 = ",";
                r2 = r11.indexOf(r2);
                r2 = r2 + 1;
                r6 = r2 + 3;
                r2 = r11.substring(r2, r6);
                r1.append(r2);
                r2 = java.io.File.separator;
                r2 = r1.append(r2);
                r2.append(r11);
                goto L_0x0073;
            L_0x0128:
                r2 = r1.isFile();
                if (r2 == 0) goto L_0x008d;
            L_0x012e:
                r2 = new java.io.RandomAccessFile;	 Catch:{ FileNotFoundException -> 0x0152, Throwable -> 0x0170 }
                r6 = "r";
                r2.<init>(r1, r6);	 Catch:{ FileNotFoundException -> 0x0152, Throwable -> 0x0170 }
                r6 = 0;
                r2.seek(r6);	 Catch:{ FileNotFoundException -> 0x01b2, Throwable -> 0x01af }
                r4 = r2.readLong();	 Catch:{ FileNotFoundException -> 0x01b2, Throwable -> 0x01af }
                if (r2 == 0) goto L_0x008d;
            L_0x0141:
                r2.close();	 Catch:{ Throwable -> 0x0146 }
                goto L_0x008d;
            L_0x0146:
                r1 = move-exception;
                r2 = "Off";
                r3 = "getRequestParams part3";
                com.loc.bx.bBw(r1, r2, r3);
                goto L_0x008d;
            L_0x0152:
                r1 = move-exception;
                r2 = r3;
            L_0x0154:
                r3 = "Off";
                r6 = "getRequestParams part1";
                com.loc.bx.bBw(r1, r3, r6);	 Catch:{ all -> 0x01ac }
                if (r2 == 0) goto L_0x008d;
            L_0x015f:
                r2.close();	 Catch:{ Throwable -> 0x0164 }
                goto L_0x008d;
            L_0x0164:
                r1 = move-exception;
                r2 = "Off";
                r3 = "getRequestParams part3";
                com.loc.bx.bBw(r1, r2, r3);
                goto L_0x008d;
            L_0x0170:
                r1 = move-exception;
            L_0x0171:
                r2 = "Off";
                r6 = "getRequestParams part2";
                com.loc.bx.bBw(r1, r2, r6);	 Catch:{ all -> 0x018d }
                if (r3 == 0) goto L_0x008d;
            L_0x017c:
                r3.close();	 Catch:{ Throwable -> 0x0181 }
                goto L_0x008d;
            L_0x0181:
                r1 = move-exception;
                r2 = "Off";
                r3 = "getRequestParams part3";
                com.loc.bx.bBw(r1, r2, r3);
                goto L_0x008d;
            L_0x018d:
                r0 = move-exception;
            L_0x018e:
                if (r3 != 0) goto L_0x019d;
            L_0x0190:
                throw r0;
            L_0x0191:
                r0 = move-exception;
                r2 = "Off";
                r3 = "getRequestParams part4";
                com.loc.bx.bBw(r0, r2, r3);
                goto L_0x00d5;
            L_0x019d:
                r3.close();	 Catch:{ Throwable -> 0x01a1 }
                goto L_0x0190;
            L_0x01a1:
                r1 = move-exception;
                r2 = "Off";
                r3 = "getRequestParams part3";
                com.loc.bx.bBw(r1, r2, r3);
                goto L_0x0190;
            L_0x01ac:
                r0 = move-exception;
                r3 = r2;
                goto L_0x018e;
            L_0x01af:
                r1 = move-exception;
                r3 = r2;
                goto L_0x0171;
            L_0x01b2:
                r1 = move-exception;
                goto L_0x0154;
                */
                throw new UnsupportedOperationException("Method not decompiled: com.loc.by.bBK(java.lang.String, java.lang.String, int, java.lang.String[]):boolean");
            }

            private static boolean bBL(Context context, String str, int i, boolean z, boolean z2) {
                boolean z3 = z ? i >= 25 : i != 1;
                if (!str.contains("cgi") && z3) {
                    return false;
                }
                if ((!str.contains("wifi") && !z3) || f346a[1] > 2000) {
                    return false;
                }
                NetworkInfo c = C1253X.m137c(context);
                if (bu.bBg(c) == -1) {
                    return false;
                }
                if (c.getType() != 1 && z2) {
                    return false;
                }
                if (!(c.getType() == 1 || z2 || bhD != null)) {
                    bhD = (TelephonyManager) C1253X.m126a(context, "phone");
                }
                return true;
            }

            public static String[] bBx(double d, double d2, String str) {
                String bBX;
                int i;
                String[] strArr = new String[50];
                if (TextUtils.isEmpty(str)) {
                    bBX = bB.bBX(d, d2);
                    str = bB.bBX(d, d2);
                } else {
                    bBX = str;
                }
                strArr[0] = bBX;
                strArr[25] = str;
                String[] a = bB.m291a(bBX);
                for (i = 1; i < 25; i++) {
                    strArr[i] = a[i - 1];
                }
                a = bB.m291a(str);
                for (i = 26; i < 50; i++) {
                    strArr[i] = a[i - 26];
                }
                return strArr;
            }

            public static AmapLoc bBy(double[] dArr, String str, String str2, String str3, int i, Context context, int[] iArr) {
                int i2;
                Object obj;
                cb cbVar;
                Throwable e;
                int i3;
                if (TextUtils.isEmpty(str2)) {
                    return null;
                }
                if (str2.contains("gps")) {
                    return null;
                }
                int i4;
                int i5;
                String stringBuilder;
                int indexOf;
                String str4;
                aV aVVar;
                cb cbVar2;
                File file;
                C1235H c1235h;
                int i6;
                long c;
                long g;
                int i7;
                AmapLoc bBB;
                int a = m443a(str2);
                String a2 = m444a(a, str2);
                Hashtable hashtable = new Hashtable();
                bBz(a, str2, str3, hashtable);
                Hashtable hashtable2 = new Hashtable();
                bBA(str3, hashtable2);
                StringBuilder c2 = m448c();
                String[] bBx = dArr != null ? bBx(dArr[0], dArr[1], str) : bBx(0.0d, 0.0d, str);
                int length = bBx.length / 2;
                if (1 <= i) {
                    if (i > 3) {
                    }
                    bx.bhw = hashtable.size();
                    i2 = 0;
                    i4 = 0;
                    i5 = 0;
                    while (i5 < bBx.length && bx.bhv) {
                        if (i5 < length) {
                            if (i4 <= 0 && !hashtable.isEmpty()) {
                            }
                            if (i == 1) {
                                if (i == 2) {
                                    if (i5 > 8) {
                                        if (i5 < 25) {
                                            continue;
                                            i5++;
                                            i4 = i4;
                                            i2 = i2;
                                        }
                                    }
                                    if (i5 > 33) {
                                    }
                                }
                            } else if (i5 != 0) {
                            }
                            stringBuilder = c2.toString();
                            if (i5 < length) {
                                switch (a) {
                                    case 1:
                                        iArr[0] = 0;
                                        iArr[1] = 0;
                                        break;
                                    case 2:
                                        break;
                                    default:
                                        iArr[0] = 0;
                                        iArr[1] = 0;
                                        break;
                                }
                                stringBuilder = stringBuilder + a2 + File.separator;
                                stringBuilder = bBx[i5].startsWith("-") ? stringBuilder + bBx[i5].substring(0, 3) + "," : stringBuilder + bBx[i5].substring(0, 4) + ",";
                                indexOf = bBx[i5].indexOf(",") + 1;
                                stringBuilder = bBx[i5].substring(indexOf, indexOf + 1).startsWith("-") ? stringBuilder + bBx[i5].substring(indexOf, indexOf + 3) : stringBuilder + bBx[i5].substring(indexOf, indexOf + 4);
                                str4 = (stringBuilder + File.separator) + bBx[i5];
                                if (str4.equals(f348c)) {
                                    aVVar = bhB;
                                    cbVar2 = (cb) aVVar.bzj(str4);
                                    file = new File(str4);
                                    if (cbVar2 == null) {
                                        obj = 1;
                                        cbVar = cbVar2;
                                    } else if (file.getParentFile().exists() && !file.isDirectory() && file.exists()) {
                                        c1235h = new C1235H();
                                        try {
                                            cbVar2 = new cb(file, c1235h);
                                        } catch (Throwable e2) {
                                            bx.bBw(e2, "Off", "search part1");
                                        } catch (Throwable e22) {
                                            bx.bBw(e22, "Off", "search part3");
                                            cbVar2 = null;
                                        }
                                        obj = null;
                                        cbVar = cbVar2;
                                    }
                                    i6 = 0;
                                    if (cbVar == null) {
                                        try {
                                            cbVar.m464a(0);
                                            c = cbVar.m467c();
                                            if (i5 < length) {
                                                i6 = cbVar.m468d();
                                            }
                                            try {
                                                g = cbVar.m471g();
                                                i7 = 8;
                                                if (i5 < length) {
                                                    i7 = ((i6 * 4) + 2) + 8;
                                                }
                                                if ((c + 7776000000L < C1253X.m125a() ? 1 : null) != null) {
                                                    if (cbVar != null) {
                                                        if (obj != null) {
                                                            try {
                                                                cbVar.m466b();
                                                            } catch (Throwable e222) {
                                                                bx.bBw(e222, "Off", "search part6");
                                                            }
                                                        } else {
                                                            aVVar.bzk(str4);
                                                        }
                                                    }
                                                    file.delete();
                                                    bhA.remove(bBx[i5]);
                                                } else {
                                                    if ((g > 8 ? 1 : null) == null || (g - ((long) i7)) % 16 != 0) {
                                                        if (cbVar != null) {
                                                            try {
                                                                cbVar.m466b();
                                                            } catch (Throwable e2222) {
                                                                bx.bBw(e2222, "Off", "search part7");
                                                            }
                                                        }
                                                        file.delete();
                                                        bhA.remove(bBx[i5]);
                                                    } else {
                                                        Object obj2;
                                                        Object obj3;
                                                        double[] bBE;
                                                        Entry entry;
                                                        if (i5 < length && !hashtable.isEmpty() && i4 < bx.bhw) {
                                                            i3 = 1;
                                                        } else {
                                                            obj2 = null;
                                                        }
                                                        if (i5 >= length && !hashtable2.isEmpty() && i2 < 15) {
                                                            int i8 = 1;
                                                        } else {
                                                            obj3 = null;
                                                        }
                                                        if (obj2 == null) {
                                                            i3 = i4;
                                                        } else {
                                                            try {
                                                                i3 = i4;
                                                                for (Entry entry2 : hashtable.entrySet()) {
                                                                    try {
                                                                        bBE = bBE(i7, cbVar, ((String) entry2.getKey()).toString(), 0);
                                                                        if (bBE != null) {
                                                                            i3++;
                                                                            hashtable.put(((String) entry2.getKey()).toString(), ((bBE[0] + "|" + bBE[1]) + "|" + bBE[2] + "|") + ((String) hashtable.get(((String) entry2.getKey()).toString())));
                                                                            if (i3 < bx.bhw) {
                                                                            }
                                                                        }
                                                                        i3 = i3;
                                                                    } catch (Throwable th) {
                                                                        e2222 = th;
                                                                    }
                                                                }
                                                            } catch (Throwable th2) {
                                                                e2222 = th2;
                                                                i3 = i4;
                                                                bx.bBw(e2222, "Off", "search part8");
                                                                i4 = i3;
                                                                if (cbVar == null) {
                                                                    if (cbVar.m465a()) {
                                                                        try {
                                                                            cbVar.m466b();
                                                                        } catch (Throwable e22222) {
                                                                            bx.bBw(e22222, "Off", "search part9");
                                                                        }
                                                                    } else if (obj == null) {
                                                                        aVVar.bzh(str4, cbVar);
                                                                    }
                                                                }
                                                                i5++;
                                                                i4 = i4;
                                                                i2 = i2;
                                                            }
                                                        }
                                                        if (obj3 != null) {
                                                            Iterator it = hashtable2.entrySet().iterator();
                                                            while (it != null && it.hasNext()) {
                                                                entry2 = (Entry) it.next();
                                                                bBE = bBE(i7, cbVar, ((String) entry2.getKey()).toString(), 1);
                                                                if (bBE != null) {
                                                                    i2++;
                                                                    hashtable2.put(((String) entry2.getKey()).toString(), ((bBE[0] + "|" + bBE[1]) + "|" + bBE[2] + "|") + ((String) hashtable2.get(((String) entry2.getKey()).toString())));
                                                                    if (i2 < 15) {
                                                                    }
                                                                }
                                                                i2 = i2;
                                                            }
                                                        }
                                                        i4 = i3;
                                                        if (cbVar == null) {
                                                            if (cbVar.m465a()) {
                                                                cbVar.m466b();
                                                            } else if (obj == null) {
                                                                aVVar.bzh(str4, cbVar);
                                                            }
                                                        }
                                                    }
                                                }
                                            } catch (Throwable e222222) {
                                                bx.bBw(e222222, "Off", "search part5");
                                                if (obj != null) {
                                                    aVVar.bzk(str4);
                                                }
                                            }
                                        } catch (Throwable e2222222) {
                                            bx.bBw(e2222222, "Off", "search part4");
                                            if (obj != null) {
                                                aVVar.bzk(str4);
                                            }
                                        }
                                    }
                                }
                            }
                            i5++;
                            i4 = i4;
                            i2 = i2;
                        }
                        if (i5 >= length) {
                            if (i2 <= 0 && !hashtable2.isEmpty()) {
                            }
                            if (i == 1) {
                                if (i5 != 0) {
                                }
                            } else if (i == 2) {
                                if (i5 > 8) {
                                    if (i5 < 25) {
                                        continue;
                                        i5++;
                                        i4 = i4;
                                        i2 = i2;
                                    }
                                }
                                if (i5 > 33) {
                                }
                            }
                            stringBuilder = c2.toString();
                            if (i5 < length) {
                                switch (a) {
                                    case 1:
                                        iArr[0] = 0;
                                        iArr[1] = 0;
                                        break;
                                    case 2:
                                        break;
                                    default:
                                        iArr[0] = 0;
                                        iArr[1] = 0;
                                        break;
                                }
                                stringBuilder = stringBuilder + a2 + File.separator;
                                if (bBx[i5].startsWith("-")) {
                                }
                                indexOf = bBx[i5].indexOf(",") + 1;
                                if (bBx[i5].substring(indexOf, indexOf + 1).startsWith("-")) {
                                }
                                str4 = (stringBuilder + File.separator) + bBx[i5];
                                if (str4.equals(f348c)) {
                                    aVVar = bhB;
                                    cbVar2 = (cb) aVVar.bzj(str4);
                                    file = new File(str4);
                                    if (cbVar2 == null) {
                                        c1235h = new C1235H();
                                        cbVar2 = new cb(file, c1235h);
                                        obj = null;
                                        cbVar = cbVar2;
                                    } else {
                                        obj = 1;
                                        cbVar = cbVar2;
                                    }
                                    i6 = 0;
                                    if (cbVar == null) {
                                        cbVar.m464a(0);
                                        c = cbVar.m467c();
                                        if (i5 < length) {
                                            i6 = cbVar.m468d();
                                        }
                                        g = cbVar.m471g();
                                        i7 = 8;
                                        if (i5 < length) {
                                            i7 = ((i6 * 4) + 2) + 8;
                                        }
                                        if (c + 7776000000L < C1253X.m125a()) {
                                        }
                                        if ((c + 7776000000L < C1253X.m125a() ? 1 : null) != null) {
                                            if (g > 8) {
                                            }
                                            if ((g > 8 ? 1 : null) == null) {
                                            }
                                            if (cbVar != null) {
                                                cbVar.m466b();
                                            }
                                            file.delete();
                                            bhA.remove(bBx[i5]);
                                        } else {
                                            if (cbVar != null) {
                                                if (obj != null) {
                                                    aVVar.bzk(str4);
                                                } else {
                                                    cbVar.m466b();
                                                }
                                            }
                                            file.delete();
                                            bhA.remove(bBx[i5]);
                                        }
                                    }
                                }
                            }
                            i5++;
                            i4 = i4;
                            i2 = i2;
                        }
                        if (i5 >= length && i4 <= 0) {
                        }
                        if (i == 1) {
                            if (i == 2) {
                                if (i5 > 8) {
                                    if (i5 < 25) {
                                        continue;
                                        i5++;
                                        i4 = i4;
                                        i2 = i2;
                                    }
                                }
                                if (i5 > 33) {
                                }
                            }
                        } else if (i5 != 0) {
                        }
                        stringBuilder = c2.toString();
                        if (i5 < length) {
                            switch (a) {
                                case 1:
                                    iArr[0] = 0;
                                    iArr[1] = 0;
                                    break;
                                case 2:
                                    break;
                                default:
                                    iArr[0] = 0;
                                    iArr[1] = 0;
                                    break;
                            }
                            stringBuilder = stringBuilder + a2 + File.separator;
                            if (bBx[i5].startsWith("-")) {
                            }
                            indexOf = bBx[i5].indexOf(",") + 1;
                            if (bBx[i5].substring(indexOf, indexOf + 1).startsWith("-")) {
                            }
                            str4 = (stringBuilder + File.separator) + bBx[i5];
                            if (str4.equals(f348c)) {
                                aVVar = bhB;
                                cbVar2 = (cb) aVVar.bzj(str4);
                                file = new File(str4);
                                if (cbVar2 == null) {
                                    obj = 1;
                                    cbVar = cbVar2;
                                } else {
                                    c1235h = new C1235H();
                                    cbVar2 = new cb(file, c1235h);
                                    obj = null;
                                    cbVar = cbVar2;
                                }
                                i6 = 0;
                                if (cbVar == null) {
                                    cbVar.m464a(0);
                                    c = cbVar.m467c();
                                    if (i5 < length) {
                                        i6 = cbVar.m468d();
                                    }
                                    g = cbVar.m471g();
                                    i7 = 8;
                                    if (i5 < length) {
                                        i7 = ((i6 * 4) + 2) + 8;
                                    }
                                    if (c + 7776000000L < C1253X.m125a()) {
                                    }
                                    if ((c + 7776000000L < C1253X.m125a() ? 1 : null) != null) {
                                        if (cbVar != null) {
                                            if (obj != null) {
                                                cbVar.m466b();
                                            } else {
                                                aVVar.bzk(str4);
                                            }
                                        }
                                        file.delete();
                                        bhA.remove(bBx[i5]);
                                    } else {
                                        if (g > 8) {
                                        }
                                        if ((g > 8 ? 1 : null) == null) {
                                        }
                                        if (cbVar != null) {
                                            cbVar.m466b();
                                        }
                                        file.delete();
                                        bhA.remove(bBx[i5]);
                                    }
                                }
                            }
                        }
                        i5++;
                        i4 = i4;
                        i2 = i2;
                    }
                    c2.delete(0, c2.length());
                    bBB = bBB(hashtable, hashtable2, iArr[0], iArr[1]);
                    return C1253X.bwV(bBB) ? null : bBB;
                }
                i = 1;
                bx.bhw = hashtable.size();
                i2 = 0;
                i4 = 0;
                i5 = 0;
                while (i5 < bBx.length) {
                    if (i5 < length) {
                    }
                    if (i5 >= length) {
                    }
                    if (i == 1) {
                        if (i5 != 0) {
                            c2.delete(0, c2.length());
                            bBB = bBB(hashtable, hashtable2, iArr[0], iArr[1]);
                            if (C1253X.bwV(bBB)) {
                            }
                        }
                    } else if (i == 2) {
                        if (i5 > 8) {
                            if (i5 < 25) {
                                continue;
                                i5++;
                                i4 = i4;
                                i2 = i2;
                            }
                        }
                        if (i5 > 33) {
                            c2.delete(0, c2.length());
                            bBB = bBB(hashtable, hashtable2, iArr[0], iArr[1]);
                            if (C1253X.bwV(bBB)) {
                            }
                        }
                    }
                    stringBuilder = c2.toString();
                    if (i5 < length) {
                        switch (a) {
                            case 1:
                                iArr[0] = 0;
                                iArr[1] = 0;
                                break;
                            case 2:
                                break;
                            default:
                                iArr[0] = 0;
                                iArr[1] = 0;
                                break;
                        }
                        stringBuilder = stringBuilder + a2 + File.separator;
                        if (bBx[i5].startsWith("-")) {
                        }
                        indexOf = bBx[i5].indexOf(",") + 1;
                        if (bBx[i5].substring(indexOf, indexOf + 1).startsWith("-")) {
                        }
                        str4 = (stringBuilder + File.separator) + bBx[i5];
                        if (str4.equals(f348c)) {
                            aVVar = bhB;
                            cbVar2 = (cb) aVVar.bzj(str4);
                            file = new File(str4);
                            if (cbVar2 == null) {
                                c1235h = new C1235H();
                                cbVar2 = new cb(file, c1235h);
                                obj = null;
                                cbVar = cbVar2;
                            } else {
                                obj = 1;
                                cbVar = cbVar2;
                            }
                            i6 = 0;
                            if (cbVar == null) {
                                cbVar.m464a(0);
                                c = cbVar.m467c();
                                if (i5 < length) {
                                    i6 = cbVar.m468d();
                                }
                                g = cbVar.m471g();
                                i7 = 8;
                                if (i5 < length) {
                                    i7 = ((i6 * 4) + 2) + 8;
                                }
                                if (c + 7776000000L < C1253X.m125a()) {
                                }
                                if ((c + 7776000000L < C1253X.m125a() ? 1 : null) != null) {
                                    if (g > 8) {
                                    }
                                    if ((g > 8 ? 1 : null) == null) {
                                    }
                                    if (cbVar != null) {
                                        cbVar.m466b();
                                    }
                                    file.delete();
                                    bhA.remove(bBx[i5]);
                                } else {
                                    if (cbVar != null) {
                                        if (obj != null) {
                                            aVVar.bzk(str4);
                                        } else {
                                            cbVar.m466b();
                                        }
                                    }
                                    file.delete();
                                    bhA.remove(bBx[i5]);
                                }
                            }
                        }
                    }
                    i5++;
                    i4 = i4;
                    i2 = i2;
                }
                c2.delete(0, c2.length());
                bBB = bBB(hashtable, hashtable2, iArr[0], iArr[1]);
                if (C1253X.bwV(bBB)) {
                }
            }

            private static void bBz(int i, String str, String str2, Hashtable hashtable) {
                String[] split = str.split("#");
                switch (i) {
                    case 1:
                        hashtable.put(split[3] + "|" + split[4], "access");
                        if (!TextUtils.isEmpty(str2) && str2.split("#").length <= 0) {
                            return;
                        }
                        return;
                    case 2:
                        hashtable.put(split[3] + "|" + split[4] + "|" + split[5], "access");
                        return;
                    default:
                        return;
                }
            }

            private static StringBuilder m448c() {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(C1253X.m140e());
                stringBuilder.append("offline").append(File.separator);
                stringBuilder.append(C1253X.m145j()).append(File.separator).append("s").append(File.separator);
                return stringBuilder;
            }
        }
