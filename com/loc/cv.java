package com.loc;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.text.TextUtils;
import com.amap.api.location.C0097e;
import com.autonavi.aps.amapapi.model.AmapLoc;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Vector;
import org.json.JSONObject;

public class cv implements C0097e {
    Context f416a;
    boolean f417b = false;
    Messenger bkO = null;
    private volatile boolean bkP = false;
    private boolean bkQ = false;
    private boolean bkR = false;
    Messenger bkS;
    ci bkT = new ci(this, this);
    aa bkU = null;
    Vector bkV = new Vector();
    Vector bkW = new Vector();
    private int bkX = 0;
    private boolean bkY = false;
    private boolean bkZ = false;
    private boolean bla = false;
    private boolean blb = false;
    private boolean blc = false;
    private boolean bld = false;
    private boolean ble = false;
    private long blf = 0;
    private long blg = 0;
    private cd blh = null;
    Object bli = new Object();
    AmapLoc blj;
    long blk = 0;
    private boolean bll = true;
    private String blm = "";
    JSONObject bln = new JSONObject();
    AmapLoc blo;
    ServerSocket blp = null;
    boolean blq = false;
    Socket blr = null;
    boolean bls = false;
    bs blt;
    String f418d = null;
    volatile boolean f419j = false;
    boolean f420k = false;
    long f421n = C1253X.m132b();

    public cv(Context context) {
        this.f416a = context.getApplicationContext();
    }

    private AmapLoc m529a(int i, String str) {
        try {
            AmapLoc amapLoc = new AmapLoc();
            amapLoc.bHr(i);
            amapLoc.bHv(str);
            return amapLoc;
        } catch (Throwable th) {
            bx.bBw(th, "APSServiceCore", "newInstanceAMapLoc");
            return null;
        }
    }

    private void bGd(Messenger messenger) {
        try {
            Message obtain;
            if (bQ.bCH() && messenger != null) {
                bQ.m328a(false);
                obtain = Message.obtain();
                obtain.what = 100;
                messenger.send(obtain);
            }
            if (this.bkO != null) {
                obtain = Message.obtain();
                obtain.what = 6;
                this.bkO.send(obtain);
                this.bkO = null;
            }
            if (bQ.m330a(this.blg) && !this.bla) {
                this.bkT.sendEmptyMessage(8);
            }
            if (bQ.m329a() && !this.bkY) {
                this.bkY = true;
                this.bkT.sendEmptyMessage(4);
            }
            if (bQ.m335c() && bQ.m336d() > 2 && !this.bkZ) {
                this.bkZ = true;
                this.bkT.sendEmptyMessage(5);
            }
        } catch (Throwable th) {
            bx.bBw(th, "APSServiceCore", "checkConfig");
        }
    }

    private void bGe(JSONObject jSONObject) {
        try {
            if (this.blh != null) {
                this.blh.bEl(jSONObject);
            }
        } catch (Throwable th) {
            bx.bBw(th, "APSServiceCore", "setExtra");
        }
    }

    private void bGf(java.net.Socket r13) {
        /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:121:0x0347
	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.modifyBlocksTree(BlockProcessor.java:248)
	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.processBlocksTree(BlockProcessor.java:52)
	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.visit(BlockProcessor.java:38)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:59)
	at jadx.core.ProcessClass.process(ProcessClass.java:42)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:306)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:199)
*/
        /*
        r12 = this;
        r2 = 0;
        r5 = 1;
        r6 = 0;
        if (r13 == 0) goto L_0x007f;
    L_0x0005:
        r0 = 30000; // 0x7530 float:4.2039E-41 double:1.4822E-319;
        r1 = "jsonp1";	 Catch:{ Throwable -> 0x0174 }
        java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x0174 }
        r4 = new java.io.BufferedReader;	 Catch:{ Throwable -> 0x040c, all -> 0x03fe }
        r3 = new java.io.InputStreamReader;	 Catch:{ Throwable -> 0x040c, all -> 0x03fe }
        r7 = r13.getInputStream();	 Catch:{ Throwable -> 0x040c, all -> 0x03fe }
        r8 = "UTF-8";	 Catch:{ Throwable -> 0x040c, all -> 0x03fe }
        r3.<init>(r7, r8);	 Catch:{ Throwable -> 0x040c, all -> 0x03fe }
        r4.<init>(r3);	 Catch:{ Throwable -> 0x040c, all -> 0x03fe }
        r3 = r4.readLine();	 Catch:{ Throwable -> 0x0410, all -> 0x0226 }
        if (r3 != 0) goto L_0x0080;
    L_0x0024:
        r3 = r1;
        r1 = r0;
    L_0x0026:
        r7 = com.loc.bx.bhu;	 Catch:{ Throwable -> 0x021c, all -> 0x0226 }
        com.loc.bx.bhu = r1;	 Catch:{ Throwable -> 0x021c, all -> 0x0226 }
        r0 = java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x021c, all -> 0x0226 }
        r8 = r12.blo;	 Catch:{ Throwable -> 0x021c, all -> 0x0226 }
        if (r8 != 0) goto L_0x018e;	 Catch:{ Throwable -> 0x021c, all -> 0x0226 }
    L_0x0032:
        r0 = r12.f416a;	 Catch:{ Throwable -> 0x021c, all -> 0x0226 }
        r0 = com.loc.C1253X.m139d(r0);	 Catch:{ Throwable -> 0x021c, all -> 0x0226 }
        if (r0 == 0) goto L_0x01a2;
    L_0x003a:
        r0 = r2;
    L_0x003b:
        if (r0 == 0) goto L_0x0269;
    L_0x003d:
        r1 = new java.io.PrintStream;	 Catch:{ all -> 0x0365 }
        r2 = r13.getOutputStream();	 Catch:{ all -> 0x0365 }
        r3 = "UTF-8";	 Catch:{ all -> 0x0365 }
        r5 = 1;	 Catch:{ all -> 0x0365 }
        r1.<init>(r2, r5, r3);	 Catch:{ all -> 0x0365 }
        r2 = "HTTP/1.0 200 OK";	 Catch:{ all -> 0x0365 }
        r1.println(r2);	 Catch:{ all -> 0x0365 }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0365 }
        r2.<init>();	 Catch:{ all -> 0x0365 }
        r3 = "Content-Length:";	 Catch:{ all -> 0x0365 }
        r2 = r2.append(r3);	 Catch:{ all -> 0x0365 }
        r3 = "UTF-8";	 Catch:{ all -> 0x0365 }
        r3 = r0.getBytes(r3);	 Catch:{ all -> 0x0365 }
        r3 = r3.length;	 Catch:{ all -> 0x0365 }
        r2 = r2.append(r3);	 Catch:{ all -> 0x0365 }
        r2 = r2.toString();	 Catch:{ all -> 0x0365 }
        r1.println(r2);	 Catch:{ all -> 0x0365 }
        r1.println();	 Catch:{ all -> 0x0365 }
        r1.println(r0);	 Catch:{ all -> 0x0365 }
        r1.close();	 Catch:{ all -> 0x0365 }
        r4.close();	 Catch:{ Throwable -> 0x0174 }
        r13.close();	 Catch:{ Throwable -> 0x0174 }
    L_0x007e:
        return;
    L_0x007f:
        return;
    L_0x0080:
        r7 = r3.length();	 Catch:{ Throwable -> 0x0410, all -> 0x0226 }
        if (r7 <= 0) goto L_0x0024;	 Catch:{ Throwable -> 0x0410, all -> 0x0226 }
    L_0x0086:
        r7 = " ";	 Catch:{ Throwable -> 0x0410, all -> 0x0226 }
        r3 = r3.split(r7);	 Catch:{ Throwable -> 0x0410, all -> 0x0226 }
        if (r3 == 0) goto L_0x0024;	 Catch:{ Throwable -> 0x0410, all -> 0x0226 }
    L_0x008f:
        r7 = r3.length;	 Catch:{ Throwable -> 0x0410, all -> 0x0226 }
        if (r7 <= r5) goto L_0x0024;	 Catch:{ Throwable -> 0x0410, all -> 0x0226 }
    L_0x0092:
        r7 = 1;	 Catch:{ Throwable -> 0x0410, all -> 0x0226 }
        r3 = r3[r7];	 Catch:{ Throwable -> 0x0410, all -> 0x0226 }
        r7 = "\\?";	 Catch:{ Throwable -> 0x0410, all -> 0x0226 }
        r3 = r3.split(r7);	 Catch:{ Throwable -> 0x0410, all -> 0x0226 }
        if (r3 == 0) goto L_0x0024;	 Catch:{ Throwable -> 0x0410, all -> 0x0226 }
    L_0x009e:
        r7 = r3.length;	 Catch:{ Throwable -> 0x0410, all -> 0x0226 }
        if (r7 <= r5) goto L_0x0024;	 Catch:{ Throwable -> 0x0410, all -> 0x0226 }
    L_0x00a1:
        r7 = 1;	 Catch:{ Throwable -> 0x0410, all -> 0x0226 }
        r3 = r3[r7];	 Catch:{ Throwable -> 0x0410, all -> 0x0226 }
        r7 = "&";	 Catch:{ Throwable -> 0x0410, all -> 0x0226 }
        r7 = r3.split(r7);	 Catch:{ Throwable -> 0x0410, all -> 0x0226 }
        if (r7 == 0) goto L_0x0024;	 Catch:{ Throwable -> 0x0410, all -> 0x0226 }
    L_0x00ad:
        r3 = r7.length;	 Catch:{ Throwable -> 0x0410, all -> 0x0226 }
        if (r3 <= 0) goto L_0x0024;
    L_0x00b0:
        r3 = r6;
        r11 = r1;
        r1 = r0;
        r0 = r11;
    L_0x00b4:
        r8 = r7.length;	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        if (r3 < r8) goto L_0x00ba;	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
    L_0x00b7:
        r3 = r0;	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        goto L_0x0026;	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
    L_0x00ba:
        r8 = r7[r3];	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        r9 = "=";	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        r8 = r8.split(r9);	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        if (r8 != 0) goto L_0x00c8;	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
    L_0x00c5:
        r3 = r3 + 1;	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        goto L_0x00b4;	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
    L_0x00c8:
        r9 = r8.length;	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        if (r9 <= r5) goto L_0x00c5;	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
    L_0x00cb:
        r9 = "to";	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        r10 = 0;	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        r10 = r8[r10];	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        r9 = r9.equals(r10);	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        if (r9 != 0) goto L_0x0180;	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
    L_0x00d7:
        r9 = "callback";	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        r10 = 0;	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        r10 = r8[r10];	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        r9 = r9.equals(r10);	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        if (r9 != 0) goto L_0x0189;	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
    L_0x00e3:
        r9 = "_";	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        r10 = 0;	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        r10 = r8[r10];	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        r9 = r9.equals(r10);	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        if (r9 == 0) goto L_0x00c5;	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
    L_0x00ef:
        r9 = 1;	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        r8 = r8[r9];	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        java.lang.Long.parseLong(r8);	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        goto L_0x00c5;
    L_0x00f6:
        r1 = move-exception;
        r3 = r2;
        r2 = r4;
        r11 = r0;
        r0 = r1;
        r1 = r11;
    L_0x00fc:
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0407 }
        r4.<init>();	 Catch:{ all -> 0x0407 }
        r4 = r4.append(r1);	 Catch:{ all -> 0x0407 }
        r5 = "&&";	 Catch:{ all -> 0x0407 }
        r4 = r4.append(r5);	 Catch:{ all -> 0x0407 }
        r1 = r4.append(r1);	 Catch:{ all -> 0x0407 }
        r4 = "({'package':'";	 Catch:{ all -> 0x0407 }
        r1 = r1.append(r4);	 Catch:{ all -> 0x0407 }
        r4 = r12.f418d;	 Catch:{ all -> 0x0407 }
        r1 = r1.append(r4);	 Catch:{ all -> 0x0407 }
        r4 = "','error_code':1,'error':'params error'})";	 Catch:{ all -> 0x0407 }
        r1 = r1.append(r4);	 Catch:{ all -> 0x0407 }
        r3 = r1.toString();	 Catch:{ all -> 0x0407 }
        r1 = "APSServiceCore";	 Catch:{ all -> 0x0407 }
        r4 = "invoke part2";	 Catch:{ all -> 0x0407 }
        com.loc.bx.bBw(r0, r1, r4);	 Catch:{ all -> 0x0407 }
        r0 = new java.io.PrintStream;	 Catch:{ all -> 0x038b }
        r1 = r13.getOutputStream();	 Catch:{ all -> 0x038b }
        r4 = "UTF-8";	 Catch:{ all -> 0x038b }
        r5 = 1;	 Catch:{ all -> 0x038b }
        r0.<init>(r1, r5, r4);	 Catch:{ all -> 0x038b }
        r1 = "HTTP/1.0 200 OK";	 Catch:{ all -> 0x038b }
        r0.println(r1);	 Catch:{ all -> 0x038b }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x038b }
        r1.<init>();	 Catch:{ all -> 0x038b }
        r4 = "Content-Length:";	 Catch:{ all -> 0x038b }
        r1 = r1.append(r4);	 Catch:{ all -> 0x038b }
        r4 = "UTF-8";	 Catch:{ all -> 0x038b }
        r4 = r3.getBytes(r4);	 Catch:{ all -> 0x038b }
        r4 = r4.length;	 Catch:{ all -> 0x038b }
        r1 = r1.append(r4);	 Catch:{ all -> 0x038b }
        r1 = r1.toString();	 Catch:{ all -> 0x038b }
        r0.println(r1);	 Catch:{ all -> 0x038b }
        r0.println();	 Catch:{ all -> 0x038b }
        r0.println(r3);	 Catch:{ all -> 0x038b }
        r0.close();	 Catch:{ all -> 0x038b }
        r2.close();	 Catch:{ Throwable -> 0x0174 }
        r13.close();	 Catch:{ Throwable -> 0x0174 }
        goto L_0x007e;
    L_0x0174:
        r0 = move-exception;
        r1 = "APSServiceCore";
        r2 = "invoke part5";
        com.loc.bx.bBw(r0, r1, r2);
        goto L_0x007e;
    L_0x0180:
        r1 = 1;
        r1 = r8[r1];	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        r1 = java.lang.Integer.parseInt(r1);	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        goto L_0x00d7;	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
    L_0x0189:
        r9 = 1;	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        r0 = r8[r9];	 Catch:{ Throwable -> 0x00f6, all -> 0x0226 }
        goto L_0x00e3;
    L_0x018e:
        r8 = r12.blo;	 Catch:{ Throwable -> 0x021c, all -> 0x0226 }
        r8 = r8.bHL();	 Catch:{ Throwable -> 0x021c, all -> 0x0226 }
        r0 = r0 - r8;
        r8 = 5000; // 0x1388 float:7.006E-42 double:2.4703E-320;
        r0 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1));
        if (r0 > 0) goto L_0x01a0;
    L_0x019b:
        r0 = r5;
    L_0x019c:
        if (r0 != 0) goto L_0x003a;
    L_0x019e:
        goto L_0x0032;
    L_0x01a0:
        r0 = r6;
        goto L_0x019c;
    L_0x01a2:
        r0 = r12.blh;	 Catch:{ Throwable -> 0x020e }
        r0 = r0.m482a();	 Catch:{ Throwable -> 0x020e }
        r12.blo = r0;	 Catch:{ Throwable -> 0x020e }
        r0 = r12.blo;	 Catch:{ Throwable -> 0x020e }
        r0 = r0.bHo();	 Catch:{ Throwable -> 0x020e }
        if (r0 != 0) goto L_0x01bf;
    L_0x01b2:
        r0 = r2;
    L_0x01b3:
        com.loc.bx.bhu = r7;	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        goto L_0x003b;
    L_0x01b7:
        r1 = move-exception;
        r2 = r4;
        r11 = r3;
        r3 = r0;
        r0 = r1;
        r1 = r11;
        goto L_0x00fc;
    L_0x01bf:
        r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x020e }
        r0.<init>();	 Catch:{ Throwable -> 0x020e }
        r0 = r0.append(r3);	 Catch:{ Throwable -> 0x020e }
        r1 = "&&";	 Catch:{ Throwable -> 0x020e }
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x020e }
        r0 = r0.append(r3);	 Catch:{ Throwable -> 0x020e }
        r1 = "({'package':'";	 Catch:{ Throwable -> 0x020e }
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x020e }
        r1 = r12.f418d;	 Catch:{ Throwable -> 0x020e }
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x020e }
        r1 = "','error_code':";	 Catch:{ Throwable -> 0x020e }
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x020e }
        r1 = r12.blo;	 Catch:{ Throwable -> 0x020e }
        r1 = r1.bHo();	 Catch:{ Throwable -> 0x020e }
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x020e }
        r1 = ",'error':'";	 Catch:{ Throwable -> 0x020e }
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x020e }
        r1 = r12.blo;	 Catch:{ Throwable -> 0x020e }
        r1 = r1.bHs();	 Catch:{ Throwable -> 0x020e }
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x020e }
        r1 = "'})";	 Catch:{ Throwable -> 0x020e }
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x020e }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x020e }
        goto L_0x01b3;
    L_0x020e:
        r0 = move-exception;
        r1 = "APSServiceCore";	 Catch:{ all -> 0x0222 }
        r5 = "invoke part1";	 Catch:{ all -> 0x0222 }
        com.loc.bx.bBw(r0, r1, r5);	 Catch:{ all -> 0x0222 }
        com.loc.bx.bhu = r7;	 Catch:{ Throwable -> 0x021c, all -> 0x0226 }
        goto L_0x003a;	 Catch:{ Throwable -> 0x021c, all -> 0x0226 }
    L_0x021c:
        r0 = move-exception;	 Catch:{ Throwable -> 0x021c, all -> 0x0226 }
        r1 = r3;	 Catch:{ Throwable -> 0x021c, all -> 0x0226 }
        r3 = r2;	 Catch:{ Throwable -> 0x021c, all -> 0x0226 }
        r2 = r4;	 Catch:{ Throwable -> 0x021c, all -> 0x0226 }
        goto L_0x00fc;	 Catch:{ Throwable -> 0x021c, all -> 0x0226 }
    L_0x0222:
        r0 = move-exception;	 Catch:{ Throwable -> 0x021c, all -> 0x0226 }
        com.loc.bx.bhu = r7;	 Catch:{ Throwable -> 0x021c, all -> 0x0226 }
        throw r0;	 Catch:{ Throwable -> 0x021c, all -> 0x0226 }
    L_0x0226:
        r0 = move-exception;
    L_0x0227:
        r1 = new java.io.PrintStream;	 Catch:{ all -> 0x03b1 }
        r3 = r13.getOutputStream();	 Catch:{ all -> 0x03b1 }
        r5 = "UTF-8";	 Catch:{ all -> 0x03b1 }
        r6 = 1;	 Catch:{ all -> 0x03b1 }
        r1.<init>(r3, r6, r5);	 Catch:{ all -> 0x03b1 }
        r3 = "HTTP/1.0 200 OK";	 Catch:{ all -> 0x03b1 }
        r1.println(r3);	 Catch:{ all -> 0x03b1 }
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x03b1 }
        r3.<init>();	 Catch:{ all -> 0x03b1 }
        r5 = "Content-Length:";	 Catch:{ all -> 0x03b1 }
        r3 = r3.append(r5);	 Catch:{ all -> 0x03b1 }
        r5 = "UTF-8";	 Catch:{ all -> 0x03b1 }
        r5 = r2.getBytes(r5);	 Catch:{ all -> 0x03b1 }
        r5 = r5.length;	 Catch:{ all -> 0x03b1 }
        r3 = r3.append(r5);	 Catch:{ all -> 0x03b1 }
        r3 = r3.toString();	 Catch:{ all -> 0x03b1 }
        r1.println(r3);	 Catch:{ all -> 0x03b1 }
        r1.println();	 Catch:{ all -> 0x03b1 }
        r1.println(r2);	 Catch:{ all -> 0x03b1 }
        r1.close();	 Catch:{ all -> 0x03b1 }
        r4.close();	 Catch:{ Throwable -> 0x0174 }
        r13.close();	 Catch:{ Throwable -> 0x0174 }
    L_0x0268:
        throw r0;	 Catch:{ Throwable -> 0x0174 }
    L_0x0269:
        r1 = r12.blo;	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        if (r1 == 0) goto L_0x031a;	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
    L_0x026d:
        r1 = r12.blo;	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2.<init>();	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = r2.append(r3);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r5 = "&&";	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = r2.append(r5);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = r2.append(r3);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r5 = "({'package':'";	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = r2.append(r5);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r5 = r12.f418d;	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = r2.append(r5);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r5 = "','error_code':0,'error':'','location':{'y':";	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = r2.append(r5);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r6 = r1.bHE();	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = r2.append(r6);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r5 = ",'precision':";	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = r2.append(r5);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r5 = r1.getAccuracy();	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = r2.append(r5);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r5 = ",'x':";	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = r2.append(r5);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r6 = r1.bHB();	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r1 = r2.append(r6);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = "},'version_code':'";	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r1 = r1.append(r2);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = "2.5.1";	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r1 = r1.append(r2);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = "','version':'";	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r1 = r1.append(r2);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = "2.5.1";	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r1 = r1.append(r2);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = "'})";	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r1 = r1.append(r2);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r0 = r1.toString();	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
    L_0x02e4:
        r1 = r12.f416a;	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r1 = com.loc.C1253X.m139d(r1);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        if (r1 == 0) goto L_0x003d;	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
    L_0x02ec:
        r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r1.<init>();	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r1 = r1.append(r3);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = "&&";	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r1 = r1.append(r2);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r1 = r1.append(r3);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = "({'package':'";	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r1 = r1.append(r2);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = r12.f418d;	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r1 = r1.append(r2);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = "','error_code':36,'error':'app is background'})";	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r1 = r1.append(r2);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r0 = r1.toString();	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        goto L_0x003d;	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
    L_0x031a:
        r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r1.<init>();	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r1 = r1.append(r3);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = "&&";	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r1 = r1.append(r2);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r1 = r1.append(r3);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = "({'package':'";	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r1 = r1.append(r2);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = r12.f418d;	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r1 = r1.append(r2);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r2 = "','error_code':8,'error':'unknown error'})";	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r1 = r1.append(r2);	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        r0 = r1.toString();	 Catch:{ Throwable -> 0x01b7, all -> 0x0402 }
        goto L_0x02e4;
        r0 = move-exception;
        r1 = "APSServiceCore";	 Catch:{ all -> 0x0365 }
        r2 = "invoke part3";	 Catch:{ all -> 0x0365 }
        com.loc.bx.bBw(r0, r1, r2);	 Catch:{ all -> 0x0365 }
        r4.close();	 Catch:{ Throwable -> 0x0174 }
        r13.close();	 Catch:{ Throwable -> 0x0174 }
        goto L_0x007e;
        r0 = move-exception;
        r1 = "APSServiceCore";	 Catch:{ Throwable -> 0x0174 }
        r2 = "invoke part4";	 Catch:{ Throwable -> 0x0174 }
        com.loc.bx.bBw(r0, r1, r2);	 Catch:{ Throwable -> 0x0174 }
        goto L_0x007e;
    L_0x0365:
        r0 = move-exception;
        r4.close();	 Catch:{ Throwable -> 0x0174 }
        r13.close();	 Catch:{ Throwable -> 0x0174 }
    L_0x036c:
        throw r0;	 Catch:{ Throwable -> 0x0174 }
        r0 = move-exception;
        r1 = "APSServiceCore";	 Catch:{ all -> 0x038b }
        r3 = "invoke part3";	 Catch:{ all -> 0x038b }
        com.loc.bx.bBw(r0, r1, r3);	 Catch:{ all -> 0x038b }
        r2.close();	 Catch:{ Throwable -> 0x0174 }
        r13.close();	 Catch:{ Throwable -> 0x0174 }
        goto L_0x007e;
        r0 = move-exception;
        r1 = "APSServiceCore";	 Catch:{ Throwable -> 0x0174 }
        r2 = "invoke part4";	 Catch:{ Throwable -> 0x0174 }
        com.loc.bx.bBw(r0, r1, r2);	 Catch:{ Throwable -> 0x0174 }
        goto L_0x007e;
    L_0x038b:
        r0 = move-exception;
        r2.close();	 Catch:{ Throwable -> 0x0174 }
        r13.close();	 Catch:{ Throwable -> 0x0174 }
    L_0x0392:
        throw r0;	 Catch:{ Throwable -> 0x0174 }
        r1 = move-exception;
        r2 = "APSServiceCore";	 Catch:{ all -> 0x03b1 }
        r3 = "invoke part3";	 Catch:{ all -> 0x03b1 }
        com.loc.bx.bBw(r1, r2, r3);	 Catch:{ all -> 0x03b1 }
        r4.close();	 Catch:{ Throwable -> 0x0174 }
        r13.close();	 Catch:{ Throwable -> 0x0174 }
        goto L_0x0268;
        r1 = move-exception;
        r2 = "APSServiceCore";	 Catch:{ Throwable -> 0x0174 }
        r3 = "invoke part4";	 Catch:{ Throwable -> 0x0174 }
        com.loc.bx.bBw(r1, r2, r3);	 Catch:{ Throwable -> 0x0174 }
        goto L_0x0268;
    L_0x03b1:
        r0 = move-exception;
        r4.close();	 Catch:{ Throwable -> 0x0174 }
        r13.close();	 Catch:{ Throwable -> 0x0174 }
    L_0x03b8:
        throw r0;	 Catch:{ Throwable -> 0x0174 }
        r0 = move-exception;	 Catch:{ Throwable -> 0x0174 }
        r1 = "APSServiceCore";	 Catch:{ Throwable -> 0x0174 }
        r2 = "invoke part4";	 Catch:{ Throwable -> 0x0174 }
        com.loc.bx.bBw(r0, r1, r2);	 Catch:{ Throwable -> 0x0174 }
        goto L_0x007e;	 Catch:{ Throwable -> 0x0174 }
        r1 = move-exception;	 Catch:{ Throwable -> 0x0174 }
        r2 = "APSServiceCore";	 Catch:{ Throwable -> 0x0174 }
        r3 = "invoke part4";	 Catch:{ Throwable -> 0x0174 }
        com.loc.bx.bBw(r1, r2, r3);	 Catch:{ Throwable -> 0x0174 }
        goto L_0x036c;	 Catch:{ Throwable -> 0x0174 }
        r0 = move-exception;	 Catch:{ Throwable -> 0x0174 }
        r1 = "APSServiceCore";	 Catch:{ Throwable -> 0x0174 }
        r2 = "invoke part4";	 Catch:{ Throwable -> 0x0174 }
        com.loc.bx.bBw(r0, r1, r2);	 Catch:{ Throwable -> 0x0174 }
        goto L_0x007e;	 Catch:{ Throwable -> 0x0174 }
        r1 = move-exception;	 Catch:{ Throwable -> 0x0174 }
        r2 = "APSServiceCore";	 Catch:{ Throwable -> 0x0174 }
        r3 = "invoke part4";	 Catch:{ Throwable -> 0x0174 }
        com.loc.bx.bBw(r1, r2, r3);	 Catch:{ Throwable -> 0x0174 }
        goto L_0x0392;	 Catch:{ Throwable -> 0x0174 }
        r1 = move-exception;	 Catch:{ Throwable -> 0x0174 }
        r2 = "APSServiceCore";	 Catch:{ Throwable -> 0x0174 }
        r3 = "invoke part4";	 Catch:{ Throwable -> 0x0174 }
        com.loc.bx.bBw(r1, r2, r3);	 Catch:{ Throwable -> 0x0174 }
        goto L_0x0268;	 Catch:{ Throwable -> 0x0174 }
        r1 = move-exception;	 Catch:{ Throwable -> 0x0174 }
        r2 = "APSServiceCore";	 Catch:{ Throwable -> 0x0174 }
        r3 = "invoke part4";	 Catch:{ Throwable -> 0x0174 }
        com.loc.bx.bBw(r1, r2, r3);	 Catch:{ Throwable -> 0x0174 }
        goto L_0x03b8;
    L_0x03fe:
        r0 = move-exception;
        r4 = r2;
        goto L_0x0227;
    L_0x0402:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
        goto L_0x0227;
    L_0x0407:
        r0 = move-exception;
        r4 = r2;
        r2 = r3;
        goto L_0x0227;
    L_0x040c:
        r0 = move-exception;
        r3 = r2;
        goto L_0x00fc;
    L_0x0410:
        r0 = move-exception;
        r3 = r2;
        r2 = r4;
        goto L_0x00fc;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.cv.bGf(java.net.Socket):void");
    }

    private void m530d() {
        try {
            m535i();
        } catch (Throwable th) {
            bx.bBw(th, "APSServiceCore", "doFusionLocaiton:init");
        }
        if (this.blb) {
            this.blg = C1253X.m132b();
            this.blb = false;
            this.blh.m486b();
            this.bla = false;
        }
        if (this.blc) {
            this.blc = false;
            this.blh.m486b();
        }
        if (this.bld) {
            this.bld = false;
            this.blh.m486b();
        }
        if (this.ble && bQ.bCJ(this.blf)) {
            this.blf = C1253X.m125a();
            this.ble = false;
            this.blh.m486b();
        }
    }

    private boolean m531e() {
        boolean z;
        synchronized (this.bli) {
            z = this.f419j;
        }
        return z;
    }

    private AmapLoc m532f() {
        return this.blh.m482a();
    }

    private void m533g() {
        try {
            this.blh.m493g();
        } catch (Throwable th) {
        }
    }

    private void m534h() {
        try {
            if (!this.bkQ) {
                this.bkQ = true;
                this.blh.m489c(this.f416a);
            }
        } catch (Throwable th) {
            bx.bBw(th, "APSServiceCore", "initAuth");
        }
    }

    private void m535i() {
        try {
            if (!this.bkP) {
                m536j();
            }
        } catch (Throwable th) {
            this.bll = false;
            this.blm = th.getMessage();
            bx.bBw(th, "APSServiceCore", "init");
        }
    }

    private void m536j() {
        try {
            bx.m436a(this.f416a);
            String str = "";
            str = C1241M.m98c(this.f416a);
            if (TextUtils.isEmpty("")) {
                str = "null";
            }
            String str2 = str;
            str = C1241M.m101f(this.f416a);
            if (TextUtils.isEmpty(str)) {
                str = "null";
            }
            this.blh.m484a("api_serverSDK_130905##S128DF1572465B890OE3F7A13167KLEI##" + str2 + "##" + str);
            this.bln.put("key", C1241M.m101f(this.f416a));
            this.bln.put("User-Agent", "AMAP_Location_SDK_Android 2.5.1");
            this.bln.put("netloc", "0");
            this.bln.put("gpsstatus", "0");
            this.bln.put("nbssid", "0");
            if (!this.bln.has("reversegeo")) {
                this.bln.put("reversegeo", true);
            }
            if (!this.bln.has("isOffset")) {
                this.bln.put("isOffset", true);
            }
            this.bln.put("wait1stwifi", "0");
            this.bln.put("autoup", "0");
            this.bln.put("upcolmobile", 1);
            if (!this.bln.has("enablegetreq")) {
                this.bln.put("enablegetreq", 1);
            }
            if (!this.bln.has("wifiactivescan")) {
                this.bln.put("wifiactivescan", 1);
            }
            if (!this.bln.has("isLocationCacheEnable")) {
                this.bln.put("isLocationCacheEnable", true);
            }
        } catch (Throwable th) {
            this.blm = th.getMessage();
            this.bll = false;
            bx.bBw(th, "APSServiceCore", "doInit part3");
            return;
        }
        this.bkP = true;
        this.blh.bEl(this.bln);
        this.blh.m487b(this.f416a);
    }

    private void m537k() {
        try {
            m541c();
            this.bkP = false;
            this.bkQ = false;
            this.bkR = false;
            this.bkY = false;
            this.bkZ = false;
            this.bkX = 0;
            this.blh.m488c();
            this.bkV.clear();
            bp.m421a();
            if (this.f417b) {
                Process.killProcess(Process.myPid());
            }
            if (this.bkT != null) {
                this.bkT.removeCallbacksAndMessages(null);
            }
        } catch (Throwable th) {
            bx.bBw(th, "APSServiceCore", "threadDestroy");
        }
    }

    private void m538l() {
        try {
            if (this.blh != null) {
                this.blh.m495i();
            }
        } catch (Throwable th) {
            bx.bBw(th, "APSServiceCore", "startColl");
        }
    }

    public Handler m539a() {
        return this.bkT;
    }

    public synchronized void m540b() {
        try {
            if (!this.bls) {
                this.blt = new bs(this);
                this.blt.start();
                this.bls = true;
            }
        } catch (Throwable th) {
            bx.bBw(th, "APSServiceCore", "startSocket");
        }
    }

    public synchronized void m541c() {
        try {
            if (this.blp != null) {
                this.blp.close();
            }
            if (this.blr != null) {
                this.blr.close();
            }
        } catch (Throwable th) {
            bx.bBw(th, "APSServiceCore", "stopScocket");
        }
        this.blp = null;
        this.blt = null;
        this.bls = false;
        this.blq = false;
    }

    public IBinder onBind(Intent intent) {
        Object stringExtra = intent.getStringExtra("apiKey");
        if (!TextUtils.isEmpty(stringExtra)) {
            ae.m219a(stringExtra);
        }
        String stringExtra2 = intent.getStringExtra("packageName");
        String stringExtra3 = intent.getStringExtra("sha1AndPackage");
        C1241M.m95a(stringExtra2);
        C1241M.m97b(stringExtra3);
        this.bkS = new Messenger(m539a());
        return this.bkS.getBinder();
    }

    public void onCreate() {
        try {
            this.blh = new cd();
            this.f418d = this.f416a.getApplicationContext().getPackageName();
            this.f419j = true;
            this.bkU = new aa(this);
            this.bkU.setName("serviceThread");
            this.bkU.start();
        } catch (Throwable th) {
            bx.bBw(th, "APSServiceCore", "onCreate");
        }
    }

    public void onDestroy() {
        try {
            synchronized (this.bli) {
                this.f419j = false;
                this.bli.notify();
            }
        } catch (Throwable th) {
            bx.bBw(th, "APSServiceCore", "onDestroy");
        }
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        return 0;
    }
}
