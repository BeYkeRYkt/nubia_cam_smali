package com.loc;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.autonavi.aps.amapapi.model.AmapLoc;
import org.json.JSONObject;

public class bI {
    private static bI bhK = null;
    private String f261b = "2.0.201501131131".replace(".", "");
    private String f262c = null;

    public static synchronized bI m309a() {
        bI bIVar;
        synchronized (bI.class) {
            if (bhK == null) {
                bhK = new bI();
            }
            bIVar = bhK;
        }
        return bIVar;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean bCm(android.database.sqlite.SQLiteDatabase r8, java.lang.String r9) {
        /*
        r7 = this;
        r2 = 1;
        r0 = 0;
        r1 = 0;
        r3 = android.text.TextUtils.isEmpty(r9);
        if (r3 != 0) goto L_0x003f;
    L_0x0009:
        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x004f, all -> 0x0054 }
        r3.<init>();	 Catch:{ Throwable -> 0x004f, all -> 0x0054 }
        r4 = "SELECT count(*) as c FROM sqlite_master WHERE type = 'table' AND name = '";
        r3.append(r4);	 Catch:{ Throwable -> 0x004f, all -> 0x0054 }
        r4 = r9.trim();	 Catch:{ Throwable -> 0x004f, all -> 0x0054 }
        r4 = r3.append(r4);	 Catch:{ Throwable -> 0x004f, all -> 0x0054 }
        r5 = r7.f261b;	 Catch:{ Throwable -> 0x004f, all -> 0x0054 }
        r4 = r4.append(r5);	 Catch:{ Throwable -> 0x004f, all -> 0x0054 }
        r5 = "' ";
        r4.append(r5);	 Catch:{ Throwable -> 0x004f, all -> 0x0054 }
        r4 = r3.toString();	 Catch:{ Throwable -> 0x004f, all -> 0x0054 }
        r5 = 0;
        r0 = r8.rawQuery(r4, r5);	 Catch:{ Throwable -> 0x004f, all -> 0x0054 }
        if (r0 != 0) goto L_0x0040;
    L_0x0033:
        r4 = 0;
        r5 = r3.length();	 Catch:{ Throwable -> 0x004f, all -> 0x0067 }
        r3.delete(r4, r5);	 Catch:{ Throwable -> 0x004f, all -> 0x0067 }
        if (r0 != 0) goto L_0x005b;
    L_0x003d:
        r0 = r1;
    L_0x003e:
        return r0;
    L_0x003f:
        return r1;
    L_0x0040:
        r4 = r0.moveToFirst();	 Catch:{ Throwable -> 0x004f, all -> 0x0067 }
        if (r4 == 0) goto L_0x0033;
    L_0x0046:
        r4 = 0;
        r4 = r0.getInt(r4);	 Catch:{ Throwable -> 0x004f, all -> 0x0067 }
        if (r4 <= 0) goto L_0x0033;
    L_0x004d:
        r1 = r2;
        goto L_0x0033;
    L_0x004f:
        r1 = move-exception;
        if (r0 != 0) goto L_0x005f;
    L_0x0052:
        r0 = r2;
        goto L_0x003e;
    L_0x0054:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
    L_0x0058:
        if (r1 != 0) goto L_0x0063;
    L_0x005a:
        throw r0;
    L_0x005b:
        r0.close();
        goto L_0x003d;
    L_0x005f:
        r0.close();
        goto L_0x0052;
    L_0x0063:
        r1.close();
        goto L_0x005a;
    L_0x0067:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
        goto L_0x0058;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.bI.bCm(android.database.sqlite.SQLiteDatabase, java.lang.String):boolean");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected synchronized void m310a(android.content.Context r13) {
        /*
        r12 = this;
        r1 = 0;
        r3 = 0;
        monitor-enter(r12);
        if (r13 == 0) goto L_0x0068;
    L_0x0005:
        r0 = "hmdb";
        r2 = 0;
        r4 = 0;
        r7 = r13.openOrCreateDatabase(r0, r2, r4);	 Catch:{ Throwable -> 0x0348, all -> 0x033a }
        r0 = "hist";
        r0 = r12.bCm(r7, r0);	 Catch:{ Throwable -> 0x0078, all -> 0x033f }
        if (r0 == 0) goto L_0x006a;
    L_0x0017:
        r9 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0078, all -> 0x033f }
        r9.<init>();	 Catch:{ Throwable -> 0x0078, all -> 0x033f }
        r0 = "SELECT feature, nb, loc FROM ";
        r9.append(r0);	 Catch:{ Throwable -> 0x0078, all -> 0x033f }
        r0 = "hist";
        r0 = r9.append(r0);	 Catch:{ Throwable -> 0x0078, all -> 0x033f }
        r2 = r12.f261b;	 Catch:{ Throwable -> 0x0078, all -> 0x033f }
        r0.append(r2);	 Catch:{ Throwable -> 0x0078, all -> 0x033f }
        r4 = com.loc.C1253X.m125a();	 Catch:{ Throwable -> 0x0078, all -> 0x033f }
        r10 = 86400000; // 0x5265c00 float:7.82218E-36 double:4.2687272E-316;
        r4 = r4 - r10;
        r0 = " WHERE time > ";
        r0 = r9.append(r0);	 Catch:{ Throwable -> 0x0078, all -> 0x033f }
        r0.append(r4);	 Catch:{ Throwable -> 0x0078, all -> 0x033f }
        r0 = " ORDER BY time ASC";
        r0 = r9.append(r0);	 Catch:{ Throwable -> 0x0078, all -> 0x033f }
        r2 = ";";
        r0.append(r2);	 Catch:{ Throwable -> 0x0078, all -> 0x033f }
        r0 = r9.toString();	 Catch:{ Throwable -> 0x0094, all -> 0x033f }
        r2 = 0;
        r1 = r7.rawQuery(r0, r2);	 Catch:{ Throwable -> 0x0094, all -> 0x033f }
        r6 = r1;
    L_0x0057:
        r2 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r2.<init>();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = r12.f262c;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        if (r0 == 0) goto L_0x00b5;
    L_0x0060:
        if (r6 != 0) goto L_0x00c7;
    L_0x0062:
        if (r6 != 0) goto L_0x0315;
    L_0x0064:
        if (r7 != 0) goto L_0x031a;
    L_0x0066:
        monitor-exit(r12);
        return;
    L_0x0068:
        monitor-exit(r12);
        return;
    L_0x006a:
        if (r7 != 0) goto L_0x006e;
    L_0x006c:
        monitor-exit(r12);
        return;
    L_0x006e:
        r0 = r7.isOpen();	 Catch:{ Throwable -> 0x0078, all -> 0x033f }
        if (r0 == 0) goto L_0x006c;
    L_0x0074:
        r7.close();	 Catch:{ Throwable -> 0x0078, all -> 0x033f }
        goto L_0x006c;
    L_0x0078:
        r0 = move-exception;
        r2 = r7;
    L_0x007a:
        r3 = "DB";
        r4 = "fetchHist p2";
        com.loc.bx.bBw(r0, r3, r4);	 Catch:{ all -> 0x0343 }
        if (r1 != 0) goto L_0x0325;
    L_0x0085:
        if (r2 == 0) goto L_0x0066;
    L_0x0087:
        r0 = r2.isOpen();	 Catch:{ all -> 0x0091 }
        if (r0 == 0) goto L_0x0066;
    L_0x008d:
        r2.close();	 Catch:{ all -> 0x0091 }
        goto L_0x0066;
    L_0x0091:
        r0 = move-exception;
        monitor-exit(r12);
        throw r0;
    L_0x0094:
        r0 = move-exception;
        r2 = "DB";
        r4 = "fetchHist";
        com.loc.bx.bBw(r0, r2, r4);	 Catch:{ Throwable -> 0x0078, all -> 0x033f }
        r0 = r0.getMessage();	 Catch:{ Throwable -> 0x0078, all -> 0x033f }
        r2 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x0078, all -> 0x033f }
        if (r2 == 0) goto L_0x00aa;
    L_0x00a8:
        r6 = r1;
        goto L_0x0057;
    L_0x00aa:
        r2 = "no such table";
        r0 = r0.contains(r2);	 Catch:{ Throwable -> 0x0078, all -> 0x033f }
        if (r0 == 0) goto L_0x00a8;
    L_0x00b3:
        r6 = r1;
        goto L_0x0057;
    L_0x00b5:
        r0 = "MD5";
        r1 = r13.getPackageName();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = com.loc.ak.m248a(r0, r1);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r12.f262c = r0;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        goto L_0x0060;
    L_0x00c3:
        r0 = move-exception;
        r1 = r6;
        r2 = r7;
        goto L_0x007a;
    L_0x00c7:
        r0 = r6.moveToFirst();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        if (r0 == 0) goto L_0x0062;
    L_0x00cd:
        r0 = 0;
        r0 = r6.getString(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r1 = "{";
        r0 = r0.startsWith(r1);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        if (r0 != 0) goto L_0x015d;
    L_0x00db:
        r0 = 0;
        r0 = r6.getString(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = com.loc.cz.m552b(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r1 = new org.json.JSONObject;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4 = new java.lang.String;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r5 = r12.f262c;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = com.loc.ak.byd(r0, r5);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r5 = "UTF-8";
        r4.<init>(r0, r5);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r1.<init>(r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = 0;
        r4 = r2.length();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r2.delete(r0, r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = 1;
        r0 = r6.getString(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        if (r0 == 0) goto L_0x01c7;
    L_0x010a:
        r0 = "mmac";
        r0 = com.loc.C1253X.bxc(r1, r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        if (r0 != 0) goto L_0x01e3;
    L_0x0113:
        r0 = 2;
        r0 = r6.getString(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4 = com.loc.cz.m552b(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = new org.json.JSONObject;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r5 = new java.lang.String;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r8 = r12.f262c;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4 = com.loc.ak.byd(r4, r8);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r8 = "UTF-8";
        r5.<init>(r4, r8);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0.<init>(r5);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4 = "type";
        r4 = com.loc.C1253X.bxc(r0, r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        if (r4 != 0) goto L_0x01fc;
    L_0x0138:
        r8 = r3 + 1;
        r3 = new com.autonavi.aps.amapapi.model.AmapLoc;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r3.<init>(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = "";
        r0 = "mmac";
        r0 = com.loc.C1253X.bxc(r1, r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        if (r0 != 0) goto L_0x0207;
    L_0x014b:
        r0 = "cgi";
        r0 = com.loc.C1253X.bxc(r1, r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        if (r0 != 0) goto L_0x02ae;
    L_0x0154:
        r0 = r6.moveToNext();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        if (r0 == 0) goto L_0x0303;
    L_0x015a:
        r3 = r8;
        goto L_0x00cd;
    L_0x015d:
        r1 = new org.json.JSONObject;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = 0;
        r0 = r6.getString(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r1.<init>(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = 0;
        r4 = r2.length();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r2.delete(r0, r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = 1;
        r0 = r6.getString(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        if (r0 == 0) goto L_0x01a6;
    L_0x017a:
        r0 = "mmac";
        r0 = com.loc.C1253X.bxc(r1, r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        if (r0 != 0) goto L_0x01af;
    L_0x0183:
        r0 = new org.json.JSONObject;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4 = 2;
        r4 = r6.getString(r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0.<init>(r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4 = "type";
        r4 = com.loc.C1253X.bxc(r0, r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        if (r4 == 0) goto L_0x0138;
    L_0x0196:
        r4 = "type";
        r5 = "new";
        r0.put(r4, r5);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        goto L_0x0138;
    L_0x01a0:
        r0 = move-exception;
    L_0x01a1:
        if (r6 != 0) goto L_0x032a;
    L_0x01a3:
        if (r7 != 0) goto L_0x032f;
    L_0x01a5:
        throw r0;	 Catch:{ all -> 0x0091 }
    L_0x01a6:
        r0 = 1;
        r0 = r6.getString(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r2.append(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        goto L_0x0183;
    L_0x01af:
        r0 = "#";
        r0 = r2.append(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4 = "mmac";
        r4 = r1.getString(r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0.append(r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = ",access";
        r2.append(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        goto L_0x0183;
    L_0x01c7:
        r0 = 1;
        r0 = r6.getString(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = com.loc.cz.m552b(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4 = new java.lang.String;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r5 = r12.f262c;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = com.loc.ak.byd(r0, r5);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r5 = "UTF-8";
        r4.<init>(r0, r5);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r2.append(r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        goto L_0x0113;
    L_0x01e3:
        r0 = "#";
        r0 = r2.append(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4 = "mmac";
        r4 = r1.getString(r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0.append(r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = ",access";
        r2.append(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        goto L_0x0113;
    L_0x01fc:
        r4 = "type";
        r5 = "new";
        r0.put(r4, r5);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        goto L_0x0138;
    L_0x0207:
        r0 = "cgi";
        r0 = com.loc.C1253X.bxc(r1, r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        if (r0 == 0) goto L_0x014b;
    L_0x0210:
        r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0.<init>();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4 = "cgi";
        r4 = r1.getString(r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = r0.append(r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4 = "#";
        r0 = r0.append(r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4.<init>();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = r4.append(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4 = "network#";
        r0 = r0.append(r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4 = "cgi";
        r1 = r1.getString(r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4 = "#";
        r1 = r1.contains(r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        if (r1 != 0) goto L_0x0299;
    L_0x024f:
        r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r1.<init>();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = r1.append(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r1 = "wifi";
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
    L_0x0263:
        r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r1.<init>();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = r1.append(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r1 = "&";
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r1 = r3.bHw();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r1 = "&";
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r1 = r3.bHy();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r1 = r0.toString();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = com.loc.bj.m416a();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r5 = 0;
        r4 = r13;
        r0.bAH(r1, r2, r3, r4, r5);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        goto L_0x0154;
    L_0x0299:
        r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r1.<init>();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = r1.append(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r1 = "cgiwifi";
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        goto L_0x0263;
    L_0x02ae:
        r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0.<init>();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4 = "cgi";
        r4 = r1.getString(r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = r0.append(r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4 = "#";
        r0 = r0.append(r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4.<init>();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = r4.append(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4 = "network#";
        r0 = r0.append(r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4 = "cgi";
        r1 = r1.getString(r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r4 = "#";
        r1 = r1.contains(r4);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        if (r1 == 0) goto L_0x0154;
    L_0x02ed:
        r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r1.<init>();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = r1.append(r0);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r1 = "cgi";
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        goto L_0x0263;
    L_0x0303:
        r0 = 0;
        r1 = r2.length();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r2.delete(r0, r1);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r0 = 0;
        r1 = r9.length();	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        r9.delete(r0, r1);	 Catch:{ Throwable -> 0x00c3, all -> 0x01a0 }
        goto L_0x0062;
    L_0x0315:
        r6.close();	 Catch:{ all -> 0x0091 }
        goto L_0x0064;
    L_0x031a:
        r0 = r7.isOpen();	 Catch:{ all -> 0x0091 }
        if (r0 == 0) goto L_0x0066;
    L_0x0320:
        r7.close();	 Catch:{ all -> 0x0091 }
        goto L_0x0066;
    L_0x0325:
        r1.close();	 Catch:{ all -> 0x0091 }
        goto L_0x0085;
    L_0x032a:
        r6.close();	 Catch:{ all -> 0x0091 }
        goto L_0x01a3;
    L_0x032f:
        r1 = r7.isOpen();	 Catch:{ all -> 0x0091 }
        if (r1 == 0) goto L_0x01a5;
    L_0x0335:
        r7.close();	 Catch:{ all -> 0x0091 }
        goto L_0x01a5;
    L_0x033a:
        r0 = move-exception;
        r6 = r1;
        r7 = r1;
        goto L_0x01a1;
    L_0x033f:
        r0 = move-exception;
        r6 = r1;
        goto L_0x01a1;
    L_0x0343:
        r0 = move-exception;
        r6 = r1;
        r7 = r2;
        goto L_0x01a1;
    L_0x0348:
        r0 = move-exception;
        r2 = r1;
        goto L_0x007a;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.bI.a(android.content.Context):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected synchronized void m311b(android.content.Context r12) {
        /*
        r11 = this;
        r1 = 0;
        r2 = 0;
        monitor-enter(r11);
        r0 = com.loc.cu.f412a;	 Catch:{ all -> 0x0099 }
        if (r0 != 0) goto L_0x0009;
    L_0x0007:
        monitor-exit(r11);
        return;
    L_0x0009:
        if (r12 == 0) goto L_0x0007;
    L_0x000b:
        r0 = "hmdb";
        r3 = 0;
        r4 = 0;
        r10 = r12.openOrCreateDatabase(r0, r3, r4);	 Catch:{ Throwable -> 0x012e, all -> 0x00fc }
        r0 = "hm";
        r0 = r11.bCm(r10, r0);	 Catch:{ Throwable -> 0x0080, all -> 0x0126 }
        if (r0 == 0) goto L_0x0072;
    L_0x001d:
        r4 = com.loc.C1253X.m125a();	 Catch:{ Throwable -> 0x0080, all -> 0x0126 }
        r6 = 1209600000; // 0x48190800 float:156704.0 double:5.97621805E-315;
        r4 = r4 - r6;
        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0080, all -> 0x0126 }
        r3.<init>();	 Catch:{ Throwable -> 0x0080, all -> 0x0126 }
        r0 = "SELECT hash, num, extra, time FROM ";
        r3.append(r0);	 Catch:{ Throwable -> 0x0080, all -> 0x0126 }
        r0 = "hm";
        r0 = r3.append(r0);	 Catch:{ Throwable -> 0x0080, all -> 0x0126 }
        r6 = r11.f261b;	 Catch:{ Throwable -> 0x0080, all -> 0x0126 }
        r0.append(r6);	 Catch:{ Throwable -> 0x0080, all -> 0x0126 }
        r0 = " WHERE time > ";
        r0 = r3.append(r0);	 Catch:{ Throwable -> 0x0080, all -> 0x0126 }
        r0.append(r4);	 Catch:{ Throwable -> 0x0080, all -> 0x0126 }
        r0 = " ORDER BY num DESC LIMIT 0,";
        r3.append(r0);	 Catch:{ Throwable -> 0x0080, all -> 0x0126 }
        r0 = 500; // 0x1f4 float:7.0E-43 double:2.47E-321;
        r0 = r3.append(r0);	 Catch:{ Throwable -> 0x0080, all -> 0x0126 }
        r4 = ";";
        r0.append(r4);	 Catch:{ Throwable -> 0x0080, all -> 0x0126 }
        r0 = r3.toString();	 Catch:{ Throwable -> 0x009c, all -> 0x0126 }
        r4 = 0;
        r1 = r10.rawQuery(r0, r4);	 Catch:{ Throwable -> 0x009c, all -> 0x0126 }
        r9 = r1;
    L_0x0062:
        r0 = 0;
        r1 = r3.length();	 Catch:{ Throwable -> 0x0132, all -> 0x0128 }
        r3.delete(r0, r1);	 Catch:{ Throwable -> 0x0132, all -> 0x0128 }
        if (r9 != 0) goto L_0x00bd;
    L_0x006c:
        if (r9 != 0) goto L_0x0103;
    L_0x006e:
        if (r10 != 0) goto L_0x0108;
    L_0x0070:
        monitor-exit(r11);
        return;
    L_0x0072:
        if (r10 != 0) goto L_0x0076;
    L_0x0074:
        monitor-exit(r11);
        return;
    L_0x0076:
        r0 = r10.isOpen();	 Catch:{ Throwable -> 0x0080, all -> 0x0126 }
        if (r0 == 0) goto L_0x0074;
    L_0x007c:
        r10.close();	 Catch:{ Throwable -> 0x0080, all -> 0x0126 }
        goto L_0x0074;
    L_0x0080:
        r0 = move-exception;
        r2 = r10;
    L_0x0082:
        r3 = "DB";
        r4 = "fetchHm p2";
        com.loc.bx.bBw(r0, r3, r4);	 Catch:{ all -> 0x012b }
        if (r1 != 0) goto L_0x0113;
    L_0x008d:
        if (r2 == 0) goto L_0x0070;
    L_0x008f:
        r0 = r2.isOpen();	 Catch:{ all -> 0x0099 }
        if (r0 == 0) goto L_0x0070;
    L_0x0095:
        r2.close();	 Catch:{ all -> 0x0099 }
        goto L_0x0070;
    L_0x0099:
        r0 = move-exception;
        monitor-exit(r11);
        throw r0;
    L_0x009c:
        r0 = move-exception;
        r4 = "DB";
        r5 = "fetchHm";
        com.loc.bx.bBw(r0, r4, r5);	 Catch:{ Throwable -> 0x0080, all -> 0x0126 }
        r0 = r0.getMessage();	 Catch:{ Throwable -> 0x0080, all -> 0x0126 }
        r4 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x0080, all -> 0x0126 }
        if (r4 == 0) goto L_0x00b2;
    L_0x00b0:
        r9 = r1;
        goto L_0x0062;
    L_0x00b2:
        r4 = "no such table";
        r0 = r0.contains(r4);	 Catch:{ Throwable -> 0x0080, all -> 0x0126 }
        if (r0 == 0) goto L_0x00b0;
    L_0x00bb:
        r9 = r1;
        goto L_0x0062;
    L_0x00bd:
        r0 = r9.moveToFirst();	 Catch:{ Throwable -> 0x0132, all -> 0x0128 }
        if (r0 == 0) goto L_0x006c;
    L_0x00c3:
        r0 = r2;
    L_0x00c4:
        r0 = r0 + 1;
        r1 = 0;
        r3 = r9.getString(r1);	 Catch:{ Throwable -> 0x0132, all -> 0x0128 }
        r1 = 1;
        r5 = r9.getInt(r1);	 Catch:{ Throwable -> 0x0132, all -> 0x0128 }
        r1 = 2;
        r4 = r9.getString(r1);	 Catch:{ Throwable -> 0x0132, all -> 0x0128 }
        r1 = 3;
        r6 = r9.getLong(r1);	 Catch:{ Throwable -> 0x0132, all -> 0x0128 }
        r1 = "{";
        r1 = r4.startsWith(r1);	 Catch:{ Throwable -> 0x0132, all -> 0x0128 }
        if (r1 == 0) goto L_0x00f3;
    L_0x00e3:
        r1 = com.loc.C1271p.m567a();	 Catch:{ Throwable -> 0x0132, all -> 0x0128 }
        r8 = 0;
        r2 = r12;
        r1.bvW(r2, r3, r4, r5, r6, r8);	 Catch:{ Throwable -> 0x0132, all -> 0x0128 }
        r1 = r9.moveToNext();	 Catch:{ Throwable -> 0x0132, all -> 0x0128 }
        if (r1 == 0) goto L_0x006c;
    L_0x00f2:
        goto L_0x00c4;
    L_0x00f3:
        r3 = com.loc.C1253X.bxk(r3);	 Catch:{ Throwable -> 0x0132, all -> 0x0128 }
        r4 = com.loc.C1253X.bxk(r4);	 Catch:{ Throwable -> 0x0132, all -> 0x0128 }
        goto L_0x00e3;
    L_0x00fc:
        r0 = move-exception;
        r10 = r1;
    L_0x00fe:
        if (r1 != 0) goto L_0x0118;
    L_0x0100:
        if (r10 != 0) goto L_0x011c;
    L_0x0102:
        throw r0;	 Catch:{ all -> 0x0099 }
    L_0x0103:
        r9.close();	 Catch:{ all -> 0x0099 }
        goto L_0x006e;
    L_0x0108:
        r0 = r10.isOpen();	 Catch:{ all -> 0x0099 }
        if (r0 == 0) goto L_0x0070;
    L_0x010e:
        r10.close();	 Catch:{ all -> 0x0099 }
        goto L_0x0070;
    L_0x0113:
        r1.close();	 Catch:{ all -> 0x0099 }
        goto L_0x008d;
    L_0x0118:
        r1.close();	 Catch:{ all -> 0x0099 }
        goto L_0x0100;
    L_0x011c:
        r1 = r10.isOpen();	 Catch:{ all -> 0x0099 }
        if (r1 == 0) goto L_0x0102;
    L_0x0122:
        r10.close();	 Catch:{ all -> 0x0099 }
        goto L_0x0102;
    L_0x0126:
        r0 = move-exception;
        goto L_0x00fe;
    L_0x0128:
        r0 = move-exception;
        r1 = r9;
        goto L_0x00fe;
    L_0x012b:
        r0 = move-exception;
        r10 = r2;
        goto L_0x00fe;
    L_0x012e:
        r0 = move-exception;
        r2 = r1;
        goto L_0x0082;
    L_0x0132:
        r0 = move-exception;
        r1 = r9;
        r2 = r10;
        goto L_0x0082;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.bI.b(android.content.Context):void");
    }

    protected void bCk(String str, AmapLoc amapLoc, StringBuilder stringBuilder, Context context) {
        SQLiteDatabase openOrCreateDatabase;
        Throwable th;
        Cursor cursor = null;
        if (context != null) {
            if (this.f262c == null) {
                this.f262c = ak.m248a("MD5", context.getPackageName());
            }
            JSONObject jSONObject = new JSONObject();
            if (str.contains("&")) {
                str = str.substring(0, str.indexOf("&"));
            }
            String substring = str.substring(str.lastIndexOf("#") + 1);
            if (substring.equals("cgi")) {
                jSONObject.put("cgi", str.substring(0, str.length() - (("network".length() + 2) + "cgi".length())));
            } else if (!(TextUtils.isEmpty(stringBuilder) || stringBuilder.indexOf("access") == -1)) {
                jSONObject.put("cgi", str.substring(0, str.length() - (substring.length() + ("network".length() + 2))));
                String[] split = stringBuilder.toString().split(",access");
                jSONObject.put("mmac", !split[0].contains("#") ? split[0] : split[0].substring(split[0].lastIndexOf("#") + 1));
            }
            if (C1253X.bxc(jSONObject, "cgi") || C1253X.bxc(jSONObject, "mmac")) {
                StringBuilder stringBuilder2 = new StringBuilder();
                try {
                    openOrCreateDatabase = context.openOrCreateDatabase("hmdb", 0, null);
                    try {
                        stringBuilder2.append("CREATE TABLE IF NOT EXISTS ").append("hist");
                        stringBuilder2.append(this.f261b);
                        stringBuilder2.append(" (feature VARCHAR PRIMARY KEY, nb VARCHAR, loc VARCHAR, time VARCHAR);");
                        openOrCreateDatabase.execSQL(stringBuilder2.toString());
                        stringBuilder2.delete(0, stringBuilder2.length());
                        stringBuilder2.append("REPLACE INTO ");
                        stringBuilder2.append("hist").append(this.f261b);
                        stringBuilder2.append(" VALUES (?, ?, ?, ?)");
                        Object[] objArr = new Object[]{ak.byc(jSONObject.toString().getBytes("UTF-8"), this.f262c), ak.byc(stringBuilder.toString().getBytes("UTF-8"), this.f262c), ak.byc(amapLoc.bIC().getBytes("UTF-8"), this.f262c), Long.valueOf(amapLoc.bHL())};
                        for (int i = 0; i < objArr.length - 1; i++) {
                            objArr[i] = cz.m549a((byte[]) objArr[i]);
                        }
                        openOrCreateDatabase.execSQL(stringBuilder2.toString(), objArr);
                        stringBuilder2.delete(0, stringBuilder2.length());
                        stringBuilder2.append("SELECT COUNT(*) AS total FROM ");
                        stringBuilder2.append("hist").append(this.f261b).append(";");
                        cursor = openOrCreateDatabase.rawQuery(stringBuilder2.toString(), null);
                        if (!(cursor == null || cursor.moveToFirst())) {
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                        stringBuilder2.delete(0, stringBuilder2.length());
                        if (openOrCreateDatabase != null && openOrCreateDatabase.isOpen()) {
                            openOrCreateDatabase.close();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    openOrCreateDatabase = cursor;
                    if (cursor != null) {
                        cursor.close();
                    }
                    stringBuilder2.delete(0, stringBuilder2.length());
                    if (openOrCreateDatabase != null && openOrCreateDatabase.isOpen()) {
                        openOrCreateDatabase.close();
                    }
                    throw th;
                }
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void bCl(android.content.Context r9, int r10) {
        /*
        r8 = this;
        r2 = 0;
        monitor-enter(r8);
        if (r9 == 0) goto L_0x0037;
    L_0x0004:
        r0 = "hmdb";
        r1 = 0;
        r3 = 0;
        r1 = r9.openOrCreateDatabase(r0, r1, r3);	 Catch:{ Throwable -> 0x00b3, all -> 0x00b0 }
        r0 = "hist";
        r0 = r8.bCm(r1, r0);	 Catch:{ Throwable -> 0x0047 }
        if (r0 == 0) goto L_0x0039;
    L_0x0016:
        switch(r10) {
            case 1: goto L_0x0060;
            case 2: goto L_0x007a;
            default: goto L_0x0019;
        };
    L_0x0019:
        r0 = r2;
    L_0x001a:
        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x007e }
        r3.<init>();	 Catch:{ Throwable -> 0x007e }
        r4 = "hist";
        r3 = r3.append(r4);	 Catch:{ Throwable -> 0x007e }
        r4 = r8.f261b;	 Catch:{ Throwable -> 0x007e }
        r3 = r3.append(r4);	 Catch:{ Throwable -> 0x007e }
        r3 = r3.toString();	 Catch:{ Throwable -> 0x007e }
        r1.delete(r3, r0, r2);	 Catch:{ Throwable -> 0x007e }
    L_0x0033:
        if (r1 != 0) goto L_0x009c;
    L_0x0035:
        monitor-exit(r8);
        return;
    L_0x0037:
        monitor-exit(r8);
        return;
    L_0x0039:
        if (r1 != 0) goto L_0x003d;
    L_0x003b:
        monitor-exit(r8);
        return;
    L_0x003d:
        r0 = r1.isOpen();	 Catch:{ Throwable -> 0x0047 }
        if (r0 == 0) goto L_0x003b;
    L_0x0043:
        r1.close();	 Catch:{ Throwable -> 0x0047 }
        goto L_0x003b;
    L_0x0047:
        r0 = move-exception;
    L_0x0048:
        r2 = "DB";
        r3 = "clearHist p2";
        com.loc.bx.bBw(r0, r2, r3);	 Catch:{ all -> 0x0076 }
        if (r1 == 0) goto L_0x0035;
    L_0x0053:
        r0 = r1.isOpen();	 Catch:{ all -> 0x005d }
        if (r0 == 0) goto L_0x0035;
    L_0x0059:
        r1.close();	 Catch:{ all -> 0x005d }
        goto L_0x0035;
    L_0x005d:
        r0 = move-exception;
        monitor-exit(r8);
        throw r0;
    L_0x0060:
        r0 = "time<?";
        r2 = 1;
        r2 = new java.lang.String[r2];	 Catch:{ Throwable -> 0x0047 }
        r3 = 0;
        r4 = com.loc.C1253X.m125a();	 Catch:{ Throwable -> 0x0047 }
        r6 = 86400000; // 0x5265c00 float:7.82218E-36 double:4.2687272E-316;
        r4 = r4 - r6;
        r4 = java.lang.String.valueOf(r4);	 Catch:{ Throwable -> 0x0047 }
        r2[r3] = r4;	 Catch:{ Throwable -> 0x0047 }
        goto L_0x001a;
    L_0x0076:
        r0 = move-exception;
    L_0x0077:
        if (r1 != 0) goto L_0x00a6;
    L_0x0079:
        throw r0;	 Catch:{ all -> 0x005d }
    L_0x007a:
        r0 = "1";
        goto L_0x001a;
    L_0x007e:
        r0 = move-exception;
        r2 = "DB";
        r3 = "clearHist";
        com.loc.bx.bBw(r0, r2, r3);	 Catch:{ Throwable -> 0x0047 }
        r0 = r0.getMessage();	 Catch:{ Throwable -> 0x0047 }
        r2 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x0047 }
        if (r2 != 0) goto L_0x0033;
    L_0x0092:
        r2 = "no such table";
        r0 = r0.contains(r2);	 Catch:{ Throwable -> 0x0047 }
        if (r0 != 0) goto L_0x0033;
    L_0x009b:
        goto L_0x0033;
    L_0x009c:
        r0 = r1.isOpen();	 Catch:{ all -> 0x005d }
        if (r0 == 0) goto L_0x0035;
    L_0x00a2:
        r1.close();	 Catch:{ all -> 0x005d }
        goto L_0x0035;
    L_0x00a6:
        r2 = r1.isOpen();	 Catch:{ all -> 0x005d }
        if (r2 == 0) goto L_0x0079;
    L_0x00ac:
        r1.close();	 Catch:{ all -> 0x005d }
        goto L_0x0079;
    L_0x00b0:
        r0 = move-exception;
        r1 = r2;
        goto L_0x0077;
    L_0x00b3:
        r0 = move-exception;
        r1 = r2;
        goto L_0x0048;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.bI.bCl(android.content.Context, int):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected synchronized void bCn(android.content.Context r11, java.lang.String r12, java.lang.String r13, long r14) {
        /*
        r10 = this;
        r1 = 0;
        r3 = 0;
        monitor-enter(r10);
        r0 = android.text.TextUtils.isEmpty(r12);	 Catch:{ all -> 0x0165 }
        if (r0 == 0) goto L_0x000b;
    L_0x0009:
        monitor-exit(r10);
        return;
    L_0x000b:
        if (r11 == 0) goto L_0x0009;
    L_0x000d:
        r4 = com.loc.C1253X.bxi(r12);	 Catch:{ all -> 0x0165 }
        r5 = com.loc.C1253X.bxi(r13);	 Catch:{ all -> 0x0165 }
        r6 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0198, all -> 0x0195 }
        r6.<init>();	 Catch:{ Throwable -> 0x0198, all -> 0x0195 }
        r0 = "hmdb";
        r2 = 0;
        r7 = 0;
        r2 = r11.openOrCreateDatabase(r0, r2, r7);	 Catch:{ Throwable -> 0x0198, all -> 0x0195 }
        r0 = "CREATE TABLE IF NOT EXISTS ";
        r0 = r6.append(r0);	 Catch:{ Throwable -> 0x014c }
        r7 = "hm";
        r0.append(r7);	 Catch:{ Throwable -> 0x014c }
        r0 = r10.f261b;	 Catch:{ Throwable -> 0x014c }
        r6.append(r0);	 Catch:{ Throwable -> 0x014c }
        r0 = " (hash VARCHAR PRIMARY KEY, num INTEGER, extra VARCHAR, time VARCHAR);";
        r6.append(r0);	 Catch:{ Throwable -> 0x014c }
        r0 = r6.toString();	 Catch:{ Throwable -> 0x014c }
        r2.execSQL(r0);	 Catch:{ Throwable -> 0x014c }
        r0 = 0;
        r7 = r6.length();	 Catch:{ Throwable -> 0x014c }
        r6.delete(r0, r7);	 Catch:{ Throwable -> 0x014c }
        r0 = "SELECT num FROM ";
        r0 = r6.append(r0);	 Catch:{ Throwable -> 0x014c }
        r7 = "hm";
        r0.append(r7);	 Catch:{ Throwable -> 0x014c }
        r0 = r10.f261b;	 Catch:{ Throwable -> 0x014c }
        r6.append(r0);	 Catch:{ Throwable -> 0x014c }
        r0 = " WHERE hash = '";
        r0 = r6.append(r0);	 Catch:{ Throwable -> 0x014c }
        r0 = r0.append(r4);	 Catch:{ Throwable -> 0x014c }
        r7 = "';";
        r0.append(r7);	 Catch:{ Throwable -> 0x014c }
        r0 = r6.toString();	 Catch:{ Throwable -> 0x00ca }
        r7 = 0;
        r1 = r2.rawQuery(r0, r7);	 Catch:{ Throwable -> 0x00ca }
    L_0x0076:
        if (r1 != 0) goto L_0x00e8;
    L_0x0078:
        r0 = r3;
    L_0x0079:
        if (r0 > 0) goto L_0x00f4;
    L_0x007b:
        r0 = 0;
        r3 = r6.length();	 Catch:{ Throwable -> 0x014c }
        r6.delete(r0, r3);	 Catch:{ Throwable -> 0x014c }
        r0 = "REPLACE INTO ";
        r6.append(r0);	 Catch:{ Throwable -> 0x014c }
        r0 = "hm";
        r0 = r6.append(r0);	 Catch:{ Throwable -> 0x014c }
        r3 = r10.f261b;	 Catch:{ Throwable -> 0x014c }
        r0.append(r3);	 Catch:{ Throwable -> 0x014c }
        r0 = " VALUES (?, ?, ?, ?)";
        r6.append(r0);	 Catch:{ Throwable -> 0x014c }
        r0 = 4;
        r0 = new java.lang.Object[r0];	 Catch:{ Throwable -> 0x014c }
        r3 = 0;
        r0[r3] = r4;	 Catch:{ Throwable -> 0x014c }
        r3 = 1;
        r4 = 1;
        r4 = java.lang.Integer.valueOf(r4);	 Catch:{ Throwable -> 0x014c }
        r0[r3] = r4;	 Catch:{ Throwable -> 0x014c }
        r3 = 2;
        r0[r3] = r5;	 Catch:{ Throwable -> 0x014c }
        r3 = 3;
        r4 = java.lang.Long.valueOf(r14);	 Catch:{ Throwable -> 0x014c }
        r0[r3] = r4;	 Catch:{ Throwable -> 0x014c }
        r3 = r6.toString();	 Catch:{ Throwable -> 0x014c }
        r2.execSQL(r3, r0);	 Catch:{ Throwable -> 0x014c }
    L_0x00ba:
        if (r1 != 0) goto L_0x0168;
    L_0x00bc:
        r0 = 0;
        r3 = r6.length();	 Catch:{ Throwable -> 0x014c }
        r6.delete(r0, r3);	 Catch:{ Throwable -> 0x014c }
        if (r1 != 0) goto L_0x0173;
    L_0x00c6:
        if (r2 != 0) goto L_0x0178;
    L_0x00c8:
        monitor-exit(r10);
        return;
    L_0x00ca:
        r0 = move-exception;
        r7 = "DB";
        r8 = "updateHm";
        com.loc.bx.bBw(r0, r7, r8);	 Catch:{ Throwable -> 0x014c }
        r0 = r0.getMessage();	 Catch:{ Throwable -> 0x014c }
        r7 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x014c }
        if (r7 != 0) goto L_0x0076;
    L_0x00de:
        r7 = "no such table";
        r0 = r0.contains(r7);	 Catch:{ Throwable -> 0x014c }
        if (r0 != 0) goto L_0x0076;
    L_0x00e7:
        goto L_0x0076;
    L_0x00e8:
        r0 = r1.moveToNext();	 Catch:{ Throwable -> 0x014c }
        if (r0 == 0) goto L_0x0078;
    L_0x00ee:
        r0 = 0;
        r0 = r1.getInt(r0);	 Catch:{ Throwable -> 0x014c }
        goto L_0x0079;
    L_0x00f4:
        r0 = r0 + 1;
        r3 = new android.content.ContentValues;	 Catch:{ Throwable -> 0x014c }
        r3.<init>();	 Catch:{ Throwable -> 0x014c }
        r7 = "num";
        r0 = java.lang.Integer.valueOf(r0);	 Catch:{ Throwable -> 0x014c }
        r3.put(r7, r0);	 Catch:{ Throwable -> 0x014c }
        r0 = "extra";
        r3.put(r0, r5);	 Catch:{ Throwable -> 0x014c }
        r0 = "time";
        r5 = java.lang.Long.valueOf(r14);	 Catch:{ Throwable -> 0x014c }
        r3.put(r0, r5);	 Catch:{ Throwable -> 0x014c }
        r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x014c }
        r0.<init>();	 Catch:{ Throwable -> 0x014c }
        r5 = "hash = '";
        r0 = r0.append(r5);	 Catch:{ Throwable -> 0x014c }
        r0 = r0.append(r4);	 Catch:{ Throwable -> 0x014c }
        r4 = "'";
        r0 = r0.append(r4);	 Catch:{ Throwable -> 0x014c }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x014c }
        r4 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x014c }
        r4.<init>();	 Catch:{ Throwable -> 0x014c }
        r5 = "hm";
        r4 = r4.append(r5);	 Catch:{ Throwable -> 0x014c }
        r5 = r10.f261b;	 Catch:{ Throwable -> 0x014c }
        r4 = r4.append(r5);	 Catch:{ Throwable -> 0x014c }
        r4 = r4.toString();	 Catch:{ Throwable -> 0x014c }
        r5 = 0;
        r2.update(r4, r3, r0, r5);	 Catch:{ Throwable -> 0x014c }
        goto L_0x00ba;
    L_0x014c:
        r0 = move-exception;
    L_0x014d:
        r3 = "DB";
        r4 = "updateHm p2";
        com.loc.bx.bBw(r0, r3, r4);	 Catch:{ all -> 0x016d }
        if (r1 != 0) goto L_0x0183;
    L_0x0158:
        if (r2 == 0) goto L_0x00c8;
    L_0x015a:
        r0 = r2.isOpen();	 Catch:{ all -> 0x0165 }
        if (r0 == 0) goto L_0x00c8;
    L_0x0160:
        r2.close();	 Catch:{ all -> 0x0165 }
        goto L_0x00c8;
    L_0x0165:
        r0 = move-exception;
        monitor-exit(r10);
        throw r0;
    L_0x0168:
        r1.close();	 Catch:{ Throwable -> 0x014c }
        goto L_0x00bc;
    L_0x016d:
        r0 = move-exception;
    L_0x016e:
        if (r1 != 0) goto L_0x0187;
    L_0x0170:
        if (r2 != 0) goto L_0x018b;
    L_0x0172:
        throw r0;	 Catch:{ all -> 0x0165 }
    L_0x0173:
        r1.close();	 Catch:{ all -> 0x0165 }
        goto L_0x00c6;
    L_0x0178:
        r0 = r2.isOpen();	 Catch:{ all -> 0x0165 }
        if (r0 == 0) goto L_0x00c8;
    L_0x017e:
        r2.close();	 Catch:{ all -> 0x0165 }
        goto L_0x00c8;
    L_0x0183:
        r1.close();	 Catch:{ all -> 0x0165 }
        goto L_0x0158;
    L_0x0187:
        r1.close();	 Catch:{ all -> 0x0165 }
        goto L_0x0170;
    L_0x018b:
        r1 = r2.isOpen();	 Catch:{ all -> 0x0165 }
        if (r1 == 0) goto L_0x0172;
    L_0x0191:
        r2.close();	 Catch:{ all -> 0x0165 }
        goto L_0x0172;
    L_0x0195:
        r0 = move-exception;
        r2 = r1;
        goto L_0x016e;
    L_0x0198:
        r0 = move-exception;
        r2 = r1;
        goto L_0x014d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.bI.bCn(android.content.Context, java.lang.String, java.lang.String, long):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized java.util.ArrayList bCo(android.content.Context r11, int r12) {
        /*
        r10 = this;
        r2 = 0;
        monitor-enter(r10);
        if (r11 == 0) goto L_0x0042;
    L_0x0004:
        r0 = "hmdb";
        r1 = 0;
        r3 = 0;
        r3 = r11.openOrCreateDatabase(r0, r1, r3);	 Catch:{ Throwable -> 0x0151, all -> 0x014d }
        r0 = "hm";
        r0 = r10.bCm(r3, r0);	 Catch:{ Throwable -> 0x0052, all -> 0x0084 }
        if (r0 == 0) goto L_0x0044;
    L_0x0016:
        r4 = new java.util.ArrayList;	 Catch:{ Throwable -> 0x0052, all -> 0x0084 }
        r4.<init>();	 Catch:{ Throwable -> 0x0052, all -> 0x0084 }
        switch(r12) {
            case 1: goto L_0x006e;
            case 2: goto L_0x008a;
            default: goto L_0x001e;
        };
    L_0x001e:
        r0 = r2;
        r1 = r2;
    L_0x0020:
        r5 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0156, all -> 0x0084 }
        r5.<init>();	 Catch:{ Throwable -> 0x0156, all -> 0x0084 }
        r6 = "hm";
        r5 = r5.append(r6);	 Catch:{ Throwable -> 0x0156, all -> 0x0084 }
        r6 = r10.f261b;	 Catch:{ Throwable -> 0x0156, all -> 0x0084 }
        r5 = r5.append(r6);	 Catch:{ Throwable -> 0x0156, all -> 0x0084 }
        r5 = r5.toString();	 Catch:{ Throwable -> 0x0156, all -> 0x0084 }
        if (r0 != 0) goto L_0x0090;
    L_0x0038:
        r3.delete(r5, r1, r0);	 Catch:{ Throwable -> 0x0156, all -> 0x0084 }
        r1 = r2;
    L_0x003c:
        if (r1 != 0) goto L_0x0128;
    L_0x003e:
        if (r3 != 0) goto L_0x012d;
    L_0x0040:
        monitor-exit(r10);
        return r2;
    L_0x0042:
        monitor-exit(r10);
        return r2;
    L_0x0044:
        if (r3 != 0) goto L_0x0048;
    L_0x0046:
        monitor-exit(r10);
        return r2;
    L_0x0048:
        r0 = r3.isOpen();	 Catch:{ Throwable -> 0x0052, all -> 0x0084 }
        if (r0 == 0) goto L_0x0046;
    L_0x004e:
        r3.close();	 Catch:{ Throwable -> 0x0052, all -> 0x0084 }
        goto L_0x0046;
    L_0x0052:
        r0 = move-exception;
        r1 = r2;
    L_0x0054:
        r4 = "DB";
        r5 = "clearHm p2";
        com.loc.bx.bBw(r0, r4, r5);	 Catch:{ all -> 0x0120 }
        if (r1 != 0) goto L_0x0138;
    L_0x005f:
        if (r3 == 0) goto L_0x0040;
    L_0x0061:
        r0 = r3.isOpen();	 Catch:{ all -> 0x006b }
        if (r0 == 0) goto L_0x0040;
    L_0x0067:
        r3.close();	 Catch:{ all -> 0x006b }
        goto L_0x0040;
    L_0x006b:
        r0 = move-exception;
        monitor-exit(r10);
        throw r0;
    L_0x006e:
        r1 = "time<?";
        r0 = 1;
        r0 = new java.lang.String[r0];	 Catch:{ Throwable -> 0x0052, all -> 0x0084 }
        r5 = 0;
        r6 = com.loc.C1253X.m125a();	 Catch:{ Throwable -> 0x0052, all -> 0x0084 }
        r8 = 1209600000; // 0x48190800 float:156704.0 double:5.97621805E-315;
        r6 = r6 - r8;
        r6 = java.lang.String.valueOf(r6);	 Catch:{ Throwable -> 0x0052, all -> 0x0084 }
        r0[r5] = r6;	 Catch:{ Throwable -> 0x0052, all -> 0x0084 }
        goto L_0x0020;
    L_0x0084:
        r0 = move-exception;
    L_0x0085:
        if (r2 != 0) goto L_0x013d;
    L_0x0087:
        if (r3 != 0) goto L_0x0142;
    L_0x0089:
        throw r0;	 Catch:{ all -> 0x006b }
    L_0x008a:
        r0 = "1";
        r1 = r0;
        r0 = r2;
        goto L_0x0020;
    L_0x0090:
        r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0156, all -> 0x0084 }
        r1.<init>();	 Catch:{ Throwable -> 0x0156, all -> 0x0084 }
        r6 = "SELECT hash, num, extra FROM ";
        r1.append(r6);	 Catch:{ Throwable -> 0x0156, all -> 0x0084 }
        r1.append(r5);	 Catch:{ Throwable -> 0x0156, all -> 0x0084 }
        r5 = " WHERE time < ";
        r5 = r1.append(r5);	 Catch:{ Throwable -> 0x0156, all -> 0x0084 }
        r6 = 0;
        r0 = r0[r6];	 Catch:{ Throwable -> 0x0156, all -> 0x0084 }
        r0 = r5.append(r0);	 Catch:{ Throwable -> 0x0156, all -> 0x0084 }
        r5 = ";";
        r0.append(r5);	 Catch:{ Throwable -> 0x0156, all -> 0x0084 }
        r0 = r1.toString();	 Catch:{ Throwable -> 0x0156, all -> 0x0084 }
        r1 = 0;
        r1 = r3.rawQuery(r0, r1);	 Catch:{ Throwable -> 0x0156, all -> 0x0084 }
        if (r1 != 0) goto L_0x00c5;
    L_0x00bd:
        if (r1 != 0) goto L_0x010f;
    L_0x00bf:
        if (r3 != 0) goto L_0x0116;
    L_0x00c1:
        if (r1 != 0) goto L_0x0124;
    L_0x00c3:
        monitor-exit(r10);
        return r4;
    L_0x00c5:
        r0 = r1.moveToFirst();	 Catch:{ Throwable -> 0x00f0 }
        if (r0 == 0) goto L_0x00bd;
    L_0x00cb:
        r0 = 0;
        r0 = r1.getString(r0);	 Catch:{ Throwable -> 0x00f0 }
        r5 = 2;
        r5 = r1.getString(r5);	 Catch:{ Throwable -> 0x00f0 }
        r6 = "{";
        r6 = r5.startsWith(r6);	 Catch:{ Throwable -> 0x00f0 }
        if (r6 == 0) goto L_0x00e8;
    L_0x00de:
        r4.add(r0);	 Catch:{ Throwable -> 0x00f0 }
        r0 = r1.moveToNext();	 Catch:{ Throwable -> 0x00f0 }
        if (r0 == 0) goto L_0x00bd;
    L_0x00e7:
        goto L_0x00cb;
    L_0x00e8:
        r0 = com.loc.C1253X.bxk(r0);	 Catch:{ Throwable -> 0x00f0 }
        com.loc.C1253X.bxk(r5);	 Catch:{ Throwable -> 0x00f0 }
        goto L_0x00de;
    L_0x00f0:
        r0 = move-exception;
    L_0x00f1:
        r4 = "DB";
        r5 = "clearHm";
        com.loc.bx.bBw(r0, r4, r5);	 Catch:{ Throwable -> 0x0113 }
        r0 = r0.getMessage();	 Catch:{ Throwable -> 0x0113 }
        r4 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x0113 }
        if (r4 != 0) goto L_0x003c;
    L_0x0104:
        r4 = "no such table";
        r0 = r0.contains(r4);	 Catch:{ Throwable -> 0x0113 }
        if (r0 != 0) goto L_0x003c;
    L_0x010d:
        goto L_0x003c;
    L_0x010f:
        r1.close();	 Catch:{ Throwable -> 0x00f0 }
        goto L_0x00bf;
    L_0x0113:
        r0 = move-exception;
        goto L_0x0054;
    L_0x0116:
        r0 = r3.isOpen();	 Catch:{ Throwable -> 0x00f0 }
        if (r0 == 0) goto L_0x00c1;
    L_0x011c:
        r3.close();	 Catch:{ Throwable -> 0x00f0 }
        goto L_0x00c1;
    L_0x0120:
        r0 = move-exception;
        r2 = r1;
        goto L_0x0085;
    L_0x0124:
        r1.close();	 Catch:{ all -> 0x006b }
        goto L_0x00c3;
    L_0x0128:
        r1.close();	 Catch:{ all -> 0x006b }
        goto L_0x003e;
    L_0x012d:
        r0 = r3.isOpen();	 Catch:{ all -> 0x006b }
        if (r0 == 0) goto L_0x0040;
    L_0x0133:
        r3.close();	 Catch:{ all -> 0x006b }
        goto L_0x0040;
    L_0x0138:
        r1.close();	 Catch:{ all -> 0x006b }
        goto L_0x005f;
    L_0x013d:
        r2.close();	 Catch:{ all -> 0x006b }
        goto L_0x0087;
    L_0x0142:
        r1 = r3.isOpen();	 Catch:{ all -> 0x006b }
        if (r1 == 0) goto L_0x0089;
    L_0x0148:
        r3.close();	 Catch:{ all -> 0x006b }
        goto L_0x0089;
    L_0x014d:
        r0 = move-exception;
        r3 = r2;
        goto L_0x0085;
    L_0x0151:
        r0 = move-exception;
        r1 = r2;
        r3 = r2;
        goto L_0x0054;
    L_0x0156:
        r0 = move-exception;
        r1 = r2;
        goto L_0x00f1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.bI.bCo(android.content.Context, int):java.util.ArrayList");
    }
}
