package com.loc;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.zip.GZIPInputStream;

public class bP {
    private RandomAccessFile bhQ;
    private C1242N bhR;
    private File bhS = null;

    protected bP(C1242N c1242n) {
        this.bhR = c1242n;
    }

    private BitSet m324b() {
        BitSet bitSet = null;
        try {
            byte[] bArr = new byte[this.bhR.m106a()];
            try {
                this.bhQ.read(bArr);
                bitSet = cw.m543a(bArr);
            } catch (IOException e) {
            }
        } catch (Throwable th) {
            bx.bBw(th, "DataLoopReader", "getCurrentBitset");
        }
        return bitSet;
    }

    private ArrayList bCr(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        while (i <= i2) {
            try {
                this.bhQ.seek((long) i);
                int readInt = this.bhQ.readInt();
                this.bhQ.readLong();
                if (readInt <= 0 || readInt > 1500) {
                    return null;
                }
                byte[] bArr = new byte[readInt];
                this.bhQ.read(bArr);
                byte a = m325a(bArr);
                if (a != (byte) 3 && a != (byte) 4 && a != (byte) 41) {
                    return null;
                }
                arrayList.add(bArr);
                i += 1500;
            } catch (IOException e) {
            } catch (Throwable th) {
                bx.bBw(th, "DataLoopReader", "getContents");
            }
        }
        return arrayList;
    }

    private int bCs(BitSet bitSet) {
        int i = 0;
        while (i < bitSet.length()) {
            try {
                if (bitSet.get(i)) {
                    return this.bhR.m106a() + ((i * 1500) + 4);
                }
                i++;
            } catch (Throwable th) {
                bx.bBw(th, "DataLoopReader", "getStartPointer");
                return 0;
            }
        }
        return 0;
    }

    private int bCt(int i, int i2, int i3) {
        int i4 = ((i3 - 1) * 1500) + i;
        while (i4 >= i2) {
            i4 -= 1500;
        }
        return i4;
    }

    protected byte m325a(byte[] bArr) {
        byte[] bArr2 = null;
        try {
            InputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            byte[] bArr3 = new byte[1024];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int read = gZIPInputStream.read(bArr3, 0, bArr3.length);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr3, 0, read);
            }
            bArr2 = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
            gZIPInputStream.close();
            byteArrayInputStream.close();
        } catch (Throwable th) {
            bx.bBw(th, "DataLoopReader", "getVersion");
        }
        return bArr2[0];
    }

    protected int m326a() {
        /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:47:0x0080
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
        r5 = this;
        r0 = 0;
        monitor-enter(r5);
        r1 = r5.bhR;	 Catch:{ Throwable -> 0x005e }
        r1 = r1.m109b();	 Catch:{ Throwable -> 0x005e }
        r5.bhS = r1;	 Catch:{ Throwable -> 0x005e }
        r1 = r5.bhS;	 Catch:{ Throwable -> 0x005e }
        if (r1 != 0) goto L_0x0017;
    L_0x000e:
        r1 = r5.bhQ;	 Catch:{ all -> 0x0077 }
        if (r1 != 0) goto L_0x0082;	 Catch:{ all -> 0x0077 }
    L_0x0012:
        r1 = 0;	 Catch:{ all -> 0x0077 }
        r5.bhS = r1;	 Catch:{ all -> 0x0077 }
        monitor-exit(r5);	 Catch:{ all -> 0x0077 }
        return r0;
    L_0x0017:
        r1 = new java.io.RandomAccessFile;	 Catch:{ Throwable -> 0x005e }
        r2 = r5.bhR;	 Catch:{ Throwable -> 0x005e }
        r2 = r2.m109b();	 Catch:{ Throwable -> 0x005e }
        r3 = "rw";	 Catch:{ Throwable -> 0x005e }
        r1.<init>(r2, r3);	 Catch:{ Throwable -> 0x005e }
        r5.bhQ = r1;	 Catch:{ Throwable -> 0x005e }
        r1 = r5.bhR;	 Catch:{ Throwable -> 0x005e }
        r1 = r1.m106a();	 Catch:{ Throwable -> 0x005e }
        r1 = new byte[r1];	 Catch:{ Throwable -> 0x005e }
        r2 = com.loc.at.bfH;	 Catch:{ Throwable -> 0x005e }
        if (r2 != 0) goto L_0x004c;	 Catch:{ Throwable -> 0x005e }
    L_0x0033:
        r2 = r5.bhQ;	 Catch:{ Throwable -> 0x005e }
        r2.read(r1);	 Catch:{ Throwable -> 0x005e }
        r2 = com.loc.cw.m543a(r1);	 Catch:{ Throwable -> 0x005e }
        r1 = r0;	 Catch:{ Throwable -> 0x005e }
    L_0x003d:
        r3 = r2.size();	 Catch:{ Throwable -> 0x005e }
        if (r1 >= r3) goto L_0x000e;	 Catch:{ Throwable -> 0x005e }
    L_0x0043:
        r3 = r2.get(r1);	 Catch:{ Throwable -> 0x005e }
        if (r3 != 0) goto L_0x005b;	 Catch:{ Throwable -> 0x005e }
    L_0x0049:
        r1 = r1 + 1;	 Catch:{ Throwable -> 0x005e }
        goto L_0x003d;	 Catch:{ Throwable -> 0x005e }
    L_0x004c:
        r2 = r5.bhQ;	 Catch:{ Throwable -> 0x005e }
        if (r2 == 0) goto L_0x0033;
    L_0x0050:
        r2 = r5.bhQ;	 Catch:{ IOException -> 0x009a }
        r2.close();	 Catch:{ IOException -> 0x009a }
        r1 = r5.bhQ;	 Catch:{ all -> 0x0077 }
        if (r1 != 0) goto L_0x007a;	 Catch:{ all -> 0x0077 }
    L_0x0059:
        monitor-exit(r5);	 Catch:{ all -> 0x0077 }
        return r0;
    L_0x005b:
        r0 = r0 + 1;
        goto L_0x0049;
    L_0x005e:
        r1 = move-exception;
        r4 = r1;
        r1 = r0;
        r0 = r4;
        r2 = "DataLoopReader";	 Catch:{ all -> 0x0071 }
        r3 = "getCount";	 Catch:{ all -> 0x0071 }
        com.loc.bx.bBw(r0, r2, r3);	 Catch:{ all -> 0x0071 }
        r0 = r5.bhQ;	 Catch:{ all -> 0x0077 }
        if (r0 != 0) goto L_0x008a;	 Catch:{ all -> 0x0077 }
    L_0x006f:
        r0 = r1;	 Catch:{ all -> 0x0077 }
        goto L_0x0012;	 Catch:{ all -> 0x0077 }
    L_0x0071:
        r0 = move-exception;	 Catch:{ all -> 0x0077 }
        r1 = r5.bhQ;	 Catch:{ all -> 0x0077 }
        if (r1 != 0) goto L_0x0092;	 Catch:{ all -> 0x0077 }
    L_0x0076:
        throw r0;	 Catch:{ all -> 0x0077 }
    L_0x0077:
        r0 = move-exception;	 Catch:{ all -> 0x0077 }
        monitor-exit(r5);	 Catch:{ all -> 0x0077 }
        throw r0;
    L_0x007a:
        r1 = r5.bhQ;	 Catch:{ all -> 0x0077 }
        r1.close();	 Catch:{ all -> 0x0077 }
        goto L_0x0059;	 Catch:{ all -> 0x0077 }
        r1 = move-exception;	 Catch:{ all -> 0x0077 }
        goto L_0x0059;	 Catch:{ all -> 0x0077 }
    L_0x0082:
        r1 = r5.bhQ;	 Catch:{ all -> 0x0077 }
        r1.close();	 Catch:{ all -> 0x0077 }
        goto L_0x0012;	 Catch:{ all -> 0x0077 }
        r1 = move-exception;	 Catch:{ all -> 0x0077 }
        goto L_0x0012;	 Catch:{ all -> 0x0077 }
    L_0x008a:
        r0 = r5.bhQ;	 Catch:{ all -> 0x0077 }
        r0.close();	 Catch:{ all -> 0x0077 }
        goto L_0x006f;	 Catch:{ all -> 0x0077 }
        r0 = move-exception;	 Catch:{ all -> 0x0077 }
        goto L_0x006f;	 Catch:{ all -> 0x0077 }
    L_0x0092:
        r1 = r5.bhQ;	 Catch:{ all -> 0x0077 }
        r1.close();	 Catch:{ all -> 0x0077 }
        goto L_0x0076;
        r1 = move-exception;
        goto L_0x0076;
    L_0x009a:
        r2 = move-exception;
        goto L_0x0033;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.bP.a():int");
    }

    protected synchronized com.loc.bK m327a(int r8) {
        /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:91:0x00d7
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
        r7 = this;
        r1 = 0;
        monitor-enter(r7);
        r0 = r7.bhR;	 Catch:{  }
        if (r0 == 0) goto L_0x0075;	 Catch:{  }
    L_0x0006:
        monitor-enter(r7);	 Catch:{  }
        r0 = r7.bhR;	 Catch:{ all -> 0x00af }
        r0 = r0.m109b();	 Catch:{ all -> 0x00af }
        r7.bhS = r0;	 Catch:{ all -> 0x00af }
        r0 = r7.bhS;	 Catch:{ all -> 0x00af }
        if (r0 == 0) goto L_0x0077;
    L_0x0013:
        r0 = new java.io.RandomAccessFile;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r2 = r7.bhS;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r3 = "rw";	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r0.<init>(r2, r3);	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r7.bhQ = r0;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r0 = com.loc.at.bfH;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        if (r0 != 0) goto L_0x007a;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
    L_0x0023:
        r0 = r7.m324b();	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        if (r0 == 0) goto L_0x008a;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
    L_0x0029:
        r0 = r7.bCs(r0);	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r2 = r7.bhS;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r2 = r2.length();	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r2 = (int) r2;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r2 = r7.bCt(r0, r2, r8);	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r3 = r7.bCr(r0, r2);	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        if (r3 == 0) goto L_0x0096;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
    L_0x003e:
        r4 = 2;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r4 = new int[r4];	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r5 = 0;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r6 = r7.bhR;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r6 = r6.m106a();	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r0 = r0 - r6;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r0 = r0 + -4;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r0 = r0 / 1500;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r4[r5] = r0;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r0 = 1;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r5 = r7.bhR;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r5 = r5.m106a();	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r2 = r2 - r5;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r2 = r2 + -4;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r2 = r2 / 1500;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r4[r0] = r2;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r0 = new com.loc.bK;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r2 = r7.bhS;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r0.<init>(r2, r3, r4);	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r2 = r7.bhQ;	 Catch:{ Throwable -> 0x00b2 }
        if (r2 != 0) goto L_0x00e9;
    L_0x0068:
        if (r0 != 0) goto L_0x00be;
    L_0x006a:
        r0 = r7.bhS;	 Catch:{ all -> 0x00af }
        r0.delete();	 Catch:{ all -> 0x00af }
        r0 = 0;	 Catch:{ all -> 0x00af }
        r7.bhS = r0;	 Catch:{ all -> 0x00af }
        monitor-exit(r7);	 Catch:{ all -> 0x00af }
        monitor-exit(r7);
        return r1;
    L_0x0075:
        monitor-exit(r7);
        return r1;
    L_0x0077:
        monitor-exit(r7);	 Catch:{ all -> 0x00af }
        monitor-exit(r7);
        return r1;
    L_0x007a:
        r0 = r7.bhQ;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        if (r0 == 0) goto L_0x0023;
    L_0x007e:
        r0 = r7.bhQ;	 Catch:{ IOException -> 0x0113 }
        r0.close();	 Catch:{ IOException -> 0x0113 }
        r0 = r7.bhQ;	 Catch:{ Throwable -> 0x00b2 }
        if (r0 != 0) goto L_0x00d1;
    L_0x0087:
        monitor-exit(r7);	 Catch:{ all -> 0x00af }
        monitor-exit(r7);
        return r1;
    L_0x008a:
        r0 = r7.bhS;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r0.delete();	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r0 = r7.bhQ;	 Catch:{ Throwable -> 0x00b2 }
        if (r0 != 0) goto L_0x00d9;
    L_0x0093:
        monitor-exit(r7);	 Catch:{ all -> 0x00af }
        monitor-exit(r7);
        return r1;
    L_0x0096:
        r0 = r7.bhS;	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r0.delete();	 Catch:{ FileNotFoundException -> 0x00a2, Throwable -> 0x00fb, all -> 0x00a9 }
        r0 = r7.bhQ;	 Catch:{ Throwable -> 0x00b2 }
        if (r0 != 0) goto L_0x00e1;
    L_0x009f:
        monitor-exit(r7);	 Catch:{ all -> 0x00af }
        monitor-exit(r7);
        return r1;
    L_0x00a2:
        r0 = move-exception;
        r0 = r7.bhQ;	 Catch:{ Throwable -> 0x00b2 }
        if (r0 != 0) goto L_0x00f3;	 Catch:{ Throwable -> 0x00b2 }
    L_0x00a7:
        r0 = r1;	 Catch:{ Throwable -> 0x00b2 }
        goto L_0x0068;	 Catch:{ Throwable -> 0x00b2 }
    L_0x00a9:
        r0 = move-exception;	 Catch:{ Throwable -> 0x00b2 }
        r2 = r7.bhQ;	 Catch:{ Throwable -> 0x00b2 }
        if (r2 != 0) goto L_0x0108;
    L_0x00ae:
        throw r0;	 Catch:{ all -> 0x00af }
    L_0x00af:
        r0 = move-exception;	 Catch:{ all -> 0x00af }
        monitor-exit(r7);	 Catch:{ all -> 0x00af }
        throw r0;	 Catch:{  }
    L_0x00b2:
        r0 = move-exception;
        r2 = "DataLoopReader";	 Catch:{ all -> 0x0110 }
        r3 = "get";	 Catch:{ all -> 0x0110 }
        com.loc.bx.bBw(r0, r2, r3);	 Catch:{ all -> 0x0110 }
        monitor-exit(r7);
        return r1;
    L_0x00be:
        r2 = r0.m315c();	 Catch:{ all -> 0x00af }
        r3 = 100;	 Catch:{ all -> 0x00af }
        if (r2 <= r3) goto L_0x006a;	 Catch:{ all -> 0x00af }
    L_0x00c6:
        r2 = r0.m315c();	 Catch:{ all -> 0x00af }
        r3 = 5242880; // 0x500000 float:7.34684E-39 double:2.590327E-317;	 Catch:{ all -> 0x00af }
        if (r2 >= r3) goto L_0x006a;	 Catch:{ all -> 0x00af }
    L_0x00ce:
        monitor-exit(r7);	 Catch:{ all -> 0x00af }
        monitor-exit(r7);
        return r0;
    L_0x00d1:
        r0 = r7.bhQ;	 Catch:{ Throwable -> 0x00b2 }
        r0.close();	 Catch:{ Throwable -> 0x00b2 }
        goto L_0x0087;	 Catch:{ Throwable -> 0x00b2 }
        r0 = move-exception;	 Catch:{ Throwable -> 0x00b2 }
        goto L_0x0087;	 Catch:{ Throwable -> 0x00b2 }
    L_0x00d9:
        r0 = r7.bhQ;	 Catch:{ Throwable -> 0x00b2 }
        r0.close();	 Catch:{ Throwable -> 0x00b2 }
        goto L_0x0093;	 Catch:{ Throwable -> 0x00b2 }
        r0 = move-exception;	 Catch:{ Throwable -> 0x00b2 }
        goto L_0x0093;	 Catch:{ Throwable -> 0x00b2 }
    L_0x00e1:
        r0 = r7.bhQ;	 Catch:{ Throwable -> 0x00b2 }
        r0.close();	 Catch:{ Throwable -> 0x00b2 }
        goto L_0x009f;	 Catch:{ Throwable -> 0x00b2 }
        r0 = move-exception;	 Catch:{ Throwable -> 0x00b2 }
        goto L_0x009f;	 Catch:{ Throwable -> 0x00b2 }
    L_0x00e9:
        r2 = r7.bhQ;	 Catch:{ Throwable -> 0x00b2 }
        r2.close();	 Catch:{ Throwable -> 0x00b2 }
        goto L_0x0068;	 Catch:{ Throwable -> 0x00b2 }
        r2 = move-exception;	 Catch:{ Throwable -> 0x00b2 }
        goto L_0x0068;	 Catch:{ Throwable -> 0x00b2 }
    L_0x00f3:
        r0 = r7.bhQ;	 Catch:{ Throwable -> 0x00b2 }
        r0.close();	 Catch:{ Throwable -> 0x00b2 }
        goto L_0x00a7;	 Catch:{ Throwable -> 0x00b2 }
        r0 = move-exception;	 Catch:{ Throwable -> 0x00b2 }
        goto L_0x00a7;	 Catch:{ Throwable -> 0x00b2 }
    L_0x00fb:
        r0 = move-exception;	 Catch:{ Throwable -> 0x00b2 }
        r0 = r7.bhQ;	 Catch:{ Throwable -> 0x00b2 }
        if (r0 == 0) goto L_0x00a7;	 Catch:{ Throwable -> 0x00b2 }
    L_0x0100:
        r0 = r7.bhQ;	 Catch:{ Throwable -> 0x00b2 }
        r0.close();	 Catch:{ Throwable -> 0x00b2 }
        goto L_0x00a7;	 Catch:{ Throwable -> 0x00b2 }
        r0 = move-exception;	 Catch:{ Throwable -> 0x00b2 }
        goto L_0x00a7;	 Catch:{ Throwable -> 0x00b2 }
    L_0x0108:
        r2 = r7.bhQ;	 Catch:{ Throwable -> 0x00b2 }
        r2.close();	 Catch:{ Throwable -> 0x00b2 }
        goto L_0x00ae;
        r2 = move-exception;
        goto L_0x00ae;
    L_0x0110:
        r0 = move-exception;
        monitor-exit(r7);
        throw r0;
    L_0x0113:
        r0 = move-exception;
        goto L_0x0023;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.bP.a(int):com.loc.bK");
    }

    protected synchronized void bCu(com.loc.bK r5) {
        /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:72:0x00b4
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
        r4 = this;
        r1 = 0;
        monitor-enter(r4);
        monitor-enter(r4);	 Catch:{ all -> 0x0092 }
        r0 = r5.bhM;	 Catch:{ all -> 0x008f }
        r4.bhS = r0;	 Catch:{ all -> 0x008f }
        r0 = r4.bhS;	 Catch:{ Throwable -> 0x0070 }
        if (r0 == 0) goto L_0x003c;	 Catch:{ Throwable -> 0x0070 }
    L_0x000b:
        r0 = new java.io.RandomAccessFile;	 Catch:{ Throwable -> 0x0070 }
        r2 = r4.bhS;	 Catch:{ Throwable -> 0x0070 }
        r3 = "rw";	 Catch:{ Throwable -> 0x0070 }
        r0.<init>(r2, r3);	 Catch:{ Throwable -> 0x0070 }
        r4.bhQ = r0;	 Catch:{ Throwable -> 0x0070 }
        r0 = r4.bhR;	 Catch:{ Throwable -> 0x0070 }
        r0 = r0.m106a();	 Catch:{ Throwable -> 0x0070 }
        r0 = new byte[r0];	 Catch:{ Throwable -> 0x0070 }
        r2 = com.loc.at.bfH;	 Catch:{ Throwable -> 0x0070 }
        if (r2 != 0) goto L_0x0043;	 Catch:{ Throwable -> 0x0070 }
    L_0x0023:
        r2 = r4.bhQ;	 Catch:{ Throwable -> 0x0070 }
        r2.read(r0);	 Catch:{ Throwable -> 0x0070 }
        r1 = com.loc.cw.m543a(r0);	 Catch:{ Throwable -> 0x0070 }
        r0 = r5.m314b();	 Catch:{ Throwable -> 0x0070 }
        if (r0 != 0) goto L_0x0053;
    L_0x0032:
        r0 = r4.bhQ;	 Catch:{ all -> 0x008f }
        if (r0 != 0) goto L_0x00ca;	 Catch:{ all -> 0x008f }
    L_0x0036:
        r0 = 0;	 Catch:{ all -> 0x008f }
        r4.bhS = r0;	 Catch:{ all -> 0x008f }
        monitor-exit(r4);	 Catch:{ all -> 0x008f }
        monitor-exit(r4);
        return;
    L_0x003c:
        r0 = r4.bhQ;	 Catch:{ all -> 0x008f }
        if (r0 != 0) goto L_0x00a2;	 Catch:{ all -> 0x008f }
    L_0x0040:
        monitor-exit(r4);	 Catch:{ all -> 0x008f }
        monitor-exit(r4);
        return;
    L_0x0043:
        r2 = r4.bhQ;	 Catch:{ Throwable -> 0x0070 }
        if (r2 == 0) goto L_0x0023;
    L_0x0047:
        r2 = r4.bhQ;	 Catch:{ IOException -> 0x00f5 }
        r2.close();	 Catch:{ IOException -> 0x00f5 }
        r0 = r4.bhQ;	 Catch:{ all -> 0x008f }
        if (r0 != 0) goto L_0x00b6;	 Catch:{ all -> 0x008f }
    L_0x0050:
        monitor-exit(r4);	 Catch:{ all -> 0x008f }
        monitor-exit(r4);
        return;
    L_0x0053:
        r0 = r5.bhN;	 Catch:{ Throwable -> 0x0070 }
        r2 = 0;	 Catch:{ Throwable -> 0x0070 }
        r0 = r0[r2];	 Catch:{ Throwable -> 0x0070 }
    L_0x0058:
        r2 = r5.bhN;	 Catch:{ Throwable -> 0x0070 }
        r3 = 1;	 Catch:{ Throwable -> 0x0070 }
        r2 = r2[r3];	 Catch:{ Throwable -> 0x0070 }
        if (r0 <= r2) goto L_0x0095;	 Catch:{ Throwable -> 0x0070 }
    L_0x005f:
        r0 = r4.bhQ;	 Catch:{ Throwable -> 0x0070 }
        r2 = 0;	 Catch:{ Throwable -> 0x0070 }
        r0.seek(r2);	 Catch:{ Throwable -> 0x0070 }
        r0 = r4.bhQ;	 Catch:{ Throwable -> 0x0070 }
        r2 = com.loc.cw.bGK(r1);	 Catch:{ Throwable -> 0x0070 }
        r0.write(r2);	 Catch:{ Throwable -> 0x0070 }
        goto L_0x0032;
    L_0x0070:
        r0 = move-exception;
        r2 = "DataLoopReader";	 Catch:{ all -> 0x009c }
        r3 = "changeData";	 Catch:{ all -> 0x009c }
        com.loc.bx.bBw(r0, r2, r3);	 Catch:{ all -> 0x009c }
        r0 = r4.bhQ;	 Catch:{ all -> 0x008f }
        if (r0 == 0) goto L_0x0036;	 Catch:{ all -> 0x008f }
    L_0x007e:
        r0 = r4.bhQ;	 Catch:{ all -> 0x008f }
        r0.close();	 Catch:{ all -> 0x008f }
        r0 = r1.isEmpty();	 Catch:{ all -> 0x008f }
        if (r0 == 0) goto L_0x0036;	 Catch:{ all -> 0x008f }
    L_0x0089:
        r0 = r4.bhS;	 Catch:{ all -> 0x008f }
        r0.delete();	 Catch:{ all -> 0x008f }
        goto L_0x0036;	 Catch:{ all -> 0x008f }
    L_0x008f:
        r0 = move-exception;	 Catch:{ all -> 0x008f }
        monitor-exit(r4);	 Catch:{ all -> 0x008f }
        throw r0;	 Catch:{ all -> 0x0092 }
    L_0x0092:
        r0 = move-exception;
        monitor-exit(r4);
        throw r0;
    L_0x0095:
        r2 = 0;
        r1.set(r0, r2);	 Catch:{ Throwable -> 0x0070 }
        r0 = r0 + 1;
        goto L_0x0058;
    L_0x009c:
        r0 = move-exception;
        r2 = r4.bhQ;	 Catch:{ all -> 0x008f }
        if (r2 != 0) goto L_0x00df;	 Catch:{ all -> 0x008f }
    L_0x00a1:
        throw r0;	 Catch:{ all -> 0x008f }
    L_0x00a2:
        r0 = r4.bhQ;	 Catch:{ all -> 0x008f }
        r0.close();	 Catch:{ all -> 0x008f }
        r0 = 0;	 Catch:{ all -> 0x008f }
        r0 = r0.isEmpty();	 Catch:{ all -> 0x008f }
        if (r0 == 0) goto L_0x0040;	 Catch:{ all -> 0x008f }
    L_0x00ae:
        r0 = r4.bhS;	 Catch:{ all -> 0x008f }
        r0.delete();	 Catch:{ all -> 0x008f }
        goto L_0x0040;	 Catch:{ all -> 0x008f }
        r0 = move-exception;	 Catch:{ all -> 0x008f }
        goto L_0x0040;	 Catch:{ all -> 0x008f }
    L_0x00b6:
        r0 = r4.bhQ;	 Catch:{ all -> 0x008f }
        r0.close();	 Catch:{ all -> 0x008f }
        r0 = 0;	 Catch:{ all -> 0x008f }
        r0 = r0.isEmpty();	 Catch:{ all -> 0x008f }
        if (r0 == 0) goto L_0x0050;	 Catch:{ all -> 0x008f }
    L_0x00c2:
        r0 = r4.bhS;	 Catch:{ all -> 0x008f }
        r0.delete();	 Catch:{ all -> 0x008f }
        goto L_0x0050;	 Catch:{ all -> 0x008f }
        r0 = move-exception;	 Catch:{ all -> 0x008f }
        goto L_0x0050;	 Catch:{ all -> 0x008f }
    L_0x00ca:
        r0 = r4.bhQ;	 Catch:{ all -> 0x008f }
        r0.close();	 Catch:{ all -> 0x008f }
        r0 = r1.isEmpty();	 Catch:{ all -> 0x008f }
        if (r0 == 0) goto L_0x0036;	 Catch:{ all -> 0x008f }
    L_0x00d5:
        r0 = r4.bhS;	 Catch:{ all -> 0x008f }
        r0.delete();	 Catch:{ all -> 0x008f }
        goto L_0x0036;	 Catch:{ all -> 0x008f }
        r0 = move-exception;	 Catch:{ all -> 0x008f }
        goto L_0x0036;	 Catch:{ all -> 0x008f }
    L_0x00df:
        r2 = r4.bhQ;	 Catch:{ all -> 0x008f }
        r2.close();	 Catch:{ all -> 0x008f }
        r1 = r1.isEmpty();	 Catch:{ all -> 0x008f }
        if (r1 == 0) goto L_0x00a1;	 Catch:{ all -> 0x008f }
    L_0x00ea:
        r1 = r4.bhS;	 Catch:{ all -> 0x008f }
        r1.delete();	 Catch:{ all -> 0x008f }
        goto L_0x00a1;
        r1 = move-exception;
        goto L_0x00a1;
        r0 = move-exception;
        goto L_0x0036;
    L_0x00f5:
        r2 = move-exception;
        goto L_0x0023;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.bP.bCu(com.loc.bK):void");
    }
}
