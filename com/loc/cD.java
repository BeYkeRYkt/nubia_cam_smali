package com.loc;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

public final class cD implements Closeable {
    static final Pattern blD = Pattern.compile("[a-z0-9_-]{1,120}");
    private static final OutputStream blQ = new bo();
    private final File blE;
    private final File blF;
    private final File blG;
    private final File blH;
    private final int blI;
    private Writer blJ;
    private final LinkedHashMap blK = new LinkedHashMap(0, 0.75f, true);
    private int blL;
    private bk blM;
    private long blN = 0;
    final ThreadPoolExecutor blO = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private final Callable blP = new ax(this);
    private final int f349g;
    private long f350h;
    private long f351j = 0;

    private cD(File file, int i, int i2, long j) {
        this.blE = file;
        this.f349g = i;
        this.blF = new File(file, "journal");
        this.blG = new File(file, "journal.tmp");
        this.blH = new File(file, "journal.bkp");
        this.blI = i2;
        this.f350h = j;
    }

    private static void m450a(File file) {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public static cD bGZ(File file, int i, int i2, long j) {
        boolean z = true;
        if (j <= 0) {
            z = false;
        }
        if (!z) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i2 > 0) {
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else {
                    bHb(file2, file3, false);
                }
            }
            cD cDVar = new cD(file, i, i2, j);
            if (cDVar.blF.exists()) {
                try {
                    cDVar.m452e();
                    cDVar.m453f();
                    cDVar.blJ = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(cDVar.blF, true), C1234G.bdY));
                    return cDVar;
                } catch (IOException e) {
                    cDVar.m462c();
                }
            }
            file.mkdirs();
            cDVar = new cD(file, i, i2, j);
            cDVar.m454g();
            return cDVar;
        } else {
            throw new IllegalArgumentException("valueCount <= 0");
        }
    }

    private void bHa(String str) {
        int indexOf = str.indexOf(32);
        if (indexOf != -1) {
            String substring;
            int i = indexOf + 1;
            int indexOf2 = str.indexOf(32, i);
            if (indexOf2 != -1) {
                substring = str.substring(i, indexOf2);
            } else {
                substring = str.substring(i);
                if (indexOf == "REMOVE".length() && str.startsWith("REMOVE")) {
                    this.blK.remove(substring);
                    return;
                }
            }
            String str2 = substring;
            C1243O c1243o = (C1243O) this.blK.get(str2);
            if (c1243o == null) {
                c1243o = new C1243O(this, str2);
                this.blK.put(str2, c1243o);
            }
            if (indexOf2 != -1 && indexOf == "CLEAN".length() && str.startsWith("CLEAN")) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                c1243o.f139d = true;
                c1243o.bee = null;
                c1243o.bwx(split);
            } else if (indexOf2 == -1 && indexOf == "DIRTY".length() && str.startsWith("DIRTY")) {
                c1243o.bee = new bV(this, c1243o);
            } else {
                if (indexOf2 == -1 && indexOf == "READ".length()) {
                    if (!str.startsWith("READ")) {
                    }
                }
                throw new IOException("unexpected journal line: " + str);
            }
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    private static void bHb(File file, File file2, boolean z) {
        if (z) {
            m450a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized com.loc.bV bHc(java.lang.String r7, long r8) {
        /*
        r6 = this;
        r4 = 0;
        monitor-enter(r6);
        r6.m456i();	 Catch:{ all -> 0x0065 }
        r6.bHf(r7);	 Catch:{ all -> 0x0065 }
        r0 = r6.blK;	 Catch:{ all -> 0x0065 }
        r0 = r0.get(r7);	 Catch:{ all -> 0x0065 }
        r0 = (com.loc.C1243O) r0;	 Catch:{ all -> 0x0065 }
        r2 = -1;
        r1 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1));
        if (r1 == 0) goto L_0x0022;
    L_0x0016:
        if (r0 != 0) goto L_0x001a;
    L_0x0018:
        monitor-exit(r6);
        return r4;
    L_0x001a:
        r2 = r0.f140f;	 Catch:{ all -> 0x0065 }
        r1 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1));
        if (r1 != 0) goto L_0x0018;
    L_0x0022:
        if (r0 == 0) goto L_0x0059;
    L_0x0024:
        r1 = r0.bee;	 Catch:{ all -> 0x0065 }
        if (r1 != 0) goto L_0x0068;
    L_0x002a:
        r1 = new com.loc.bV;	 Catch:{ all -> 0x0065 }
        r2 = 0;
        r1.<init>(r6, r0);	 Catch:{ all -> 0x0065 }
        r0.bee = r1;	 Catch:{ all -> 0x0065 }
        r0 = r6.blJ;	 Catch:{ all -> 0x0065 }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0065 }
        r2.<init>();	 Catch:{ all -> 0x0065 }
        r3 = "DIRTY ";
        r2 = r2.append(r3);	 Catch:{ all -> 0x0065 }
        r2 = r2.append(r7);	 Catch:{ all -> 0x0065 }
        r3 = 10;
        r2 = r2.append(r3);	 Catch:{ all -> 0x0065 }
        r2 = r2.toString();	 Catch:{ all -> 0x0065 }
        r0.write(r2);	 Catch:{ all -> 0x0065 }
        r0 = r6.blJ;	 Catch:{ all -> 0x0065 }
        r0.flush();	 Catch:{ all -> 0x0065 }
        monitor-exit(r6);
        return r1;
    L_0x0059:
        r0 = new com.loc.O;	 Catch:{ all -> 0x0065 }
        r1 = 0;
        r0.<init>(r6, r7);	 Catch:{ all -> 0x0065 }
        r1 = r6.blK;	 Catch:{ all -> 0x0065 }
        r1.put(r7, r0);	 Catch:{ all -> 0x0065 }
        goto L_0x002a;
    L_0x0065:
        r0 = move-exception;
        monitor-exit(r6);
        throw r0;
    L_0x0068:
        monitor-exit(r6);
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.cD.bHc(java.lang.String, long):com.loc.bV");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized void bHd(com.loc.bV r11, boolean r12) {
        /*
        r10 = this;
        r0 = 1;
        r1 = 0;
        monitor-enter(r10);
        r3 = r11.bjc;	 Catch:{ all -> 0x006e }
        r2 = r3.bee;	 Catch:{ all -> 0x006e }
        if (r2 != r11) goto L_0x0068;
    L_0x000d:
        if (r12 != 0) goto L_0x0071;
    L_0x000f:
        r2 = r1;
    L_0x0010:
        r4 = r10.blI;	 Catch:{ all -> 0x006e }
        if (r2 < r4) goto L_0x00b3;
    L_0x0014:
        r2 = r10.blL;	 Catch:{ all -> 0x006e }
        r2 = r2 + 1;
        r10.blL = r2;	 Catch:{ all -> 0x006e }
        r2 = 0;
        r3.bee = r2;	 Catch:{ all -> 0x006e }
        r2 = r3.f139d;	 Catch:{ all -> 0x006e }
        r2 = r2 | r12;
        if (r2 != 0) goto L_0x00e5;
    L_0x0025:
        r2 = r10.blK;	 Catch:{ all -> 0x006e }
        r4 = r3.f138b;	 Catch:{ all -> 0x006e }
        r2.remove(r4);	 Catch:{ all -> 0x006e }
        r2 = r10.blJ;	 Catch:{ all -> 0x006e }
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x006e }
        r4.<init>();	 Catch:{ all -> 0x006e }
        r5 = "REMOVE ";
        r4 = r4.append(r5);	 Catch:{ all -> 0x006e }
        r3 = r3.f138b;	 Catch:{ all -> 0x006e }
        r3 = r4.append(r3);	 Catch:{ all -> 0x006e }
        r4 = 10;
        r3 = r3.append(r4);	 Catch:{ all -> 0x006e }
        r3 = r3.toString();	 Catch:{ all -> 0x006e }
        r2.write(r3);	 Catch:{ all -> 0x006e }
    L_0x0051:
        r2 = r10.blJ;	 Catch:{ all -> 0x006e }
        r2.flush();	 Catch:{ all -> 0x006e }
        r2 = r10.f351j;	 Catch:{ all -> 0x006e }
        r4 = r10.f350h;	 Catch:{ all -> 0x006e }
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 <= 0) goto L_0x0122;
    L_0x005e:
        if (r0 != 0) goto L_0x0125;
    L_0x0060:
        r0 = r10.m455h();	 Catch:{ all -> 0x006e }
        if (r0 != 0) goto L_0x0125;
    L_0x0066:
        monitor-exit(r10);
        return;
    L_0x0068:
        r0 = new java.lang.IllegalStateException;	 Catch:{ all -> 0x006e }
        r0.<init>();	 Catch:{ all -> 0x006e }
        throw r0;	 Catch:{ all -> 0x006e }
    L_0x006e:
        r0 = move-exception;
        monitor-exit(r10);
        throw r0;
    L_0x0071:
        r2 = r3.f139d;	 Catch:{ all -> 0x006e }
        if (r2 != 0) goto L_0x000f;
    L_0x0077:
        r2 = r1;
    L_0x0078:
        r4 = r10.blI;	 Catch:{ all -> 0x006e }
        if (r2 >= r4) goto L_0x000f;
    L_0x007c:
        r4 = r11.bjd;	 Catch:{ all -> 0x006e }
        r4 = r4[r2];	 Catch:{ all -> 0x006e }
        if (r4 == 0) goto L_0x0091;
    L_0x0084:
        r4 = r3.bwz(r2);	 Catch:{ all -> 0x006e }
        r4 = r4.exists();	 Catch:{ all -> 0x006e }
        if (r4 == 0) goto L_0x00ae;
    L_0x008e:
        r2 = r2 + 1;
        goto L_0x0078;
    L_0x0091:
        r11.m373b();	 Catch:{ all -> 0x006e }
        r0 = new java.lang.IllegalStateException;	 Catch:{ all -> 0x006e }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x006e }
        r1.<init>();	 Catch:{ all -> 0x006e }
        r3 = "Newly created entry didn't create value for index ";
        r1 = r1.append(r3);	 Catch:{ all -> 0x006e }
        r1 = r1.append(r2);	 Catch:{ all -> 0x006e }
        r1 = r1.toString();	 Catch:{ all -> 0x006e }
        r0.<init>(r1);	 Catch:{ all -> 0x006e }
        throw r0;	 Catch:{ all -> 0x006e }
    L_0x00ae:
        r11.m373b();	 Catch:{ all -> 0x006e }
        monitor-exit(r10);
        return;
    L_0x00b3:
        r4 = r3.bwz(r2);	 Catch:{ all -> 0x006e }
        if (r12 != 0) goto L_0x00c0;
    L_0x00b9:
        m450a(r4);	 Catch:{ all -> 0x006e }
    L_0x00bc:
        r2 = r2 + 1;
        goto L_0x0010;
    L_0x00c0:
        r5 = r4.exists();	 Catch:{ all -> 0x006e }
        if (r5 == 0) goto L_0x00bc;
    L_0x00c6:
        r5 = r3.m110a(r2);	 Catch:{ all -> 0x006e }
        r4.renameTo(r5);	 Catch:{ all -> 0x006e }
        r4 = r3.bed;	 Catch:{ all -> 0x006e }
        r6 = r4[r2];	 Catch:{ all -> 0x006e }
        r4 = r5.length();	 Catch:{ all -> 0x006e }
        r8 = r3.bed;	 Catch:{ all -> 0x006e }
        r8[r2] = r4;	 Catch:{ all -> 0x006e }
        r8 = r10.f351j;	 Catch:{ all -> 0x006e }
        r6 = r8 - r6;
        r4 = r4 + r6;
        r10.f351j = r4;	 Catch:{ all -> 0x006e }
        goto L_0x00bc;
    L_0x00e5:
        r2 = 1;
        r3.f139d = r2;	 Catch:{ all -> 0x006e }
        r2 = r10.blJ;	 Catch:{ all -> 0x006e }
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x006e }
        r4.<init>();	 Catch:{ all -> 0x006e }
        r5 = "CLEAN ";
        r4 = r4.append(r5);	 Catch:{ all -> 0x006e }
        r5 = r3.f138b;	 Catch:{ all -> 0x006e }
        r4 = r4.append(r5);	 Catch:{ all -> 0x006e }
        r5 = r3.m111a();	 Catch:{ all -> 0x006e }
        r4 = r4.append(r5);	 Catch:{ all -> 0x006e }
        r5 = 10;
        r4 = r4.append(r5);	 Catch:{ all -> 0x006e }
        r4 = r4.toString();	 Catch:{ all -> 0x006e }
        r2.write(r4);	 Catch:{ all -> 0x006e }
        if (r12 == 0) goto L_0x0051;
    L_0x0116:
        r4 = r10.blN;	 Catch:{ all -> 0x006e }
        r6 = 1;
        r6 = r6 + r4;
        r10.blN = r6;	 Catch:{ all -> 0x006e }
        r3.f140f = r4;	 Catch:{ all -> 0x006e }
        goto L_0x0051;
    L_0x0122:
        r0 = r1;
        goto L_0x005e;
    L_0x0125:
        r0 = r10.blO;	 Catch:{ all -> 0x006e }
        r1 = r10.blP;	 Catch:{ all -> 0x006e }
        r0.submit(r1);	 Catch:{ all -> 0x006e }
        goto L_0x0066;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.cD.bHd(com.loc.bV, boolean):void");
    }

    private void bHf(String str) {
        if (!blD.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
        }
    }

    private void m452e() {
        int i = 0;
        Closeable cgVar = new cg(new FileInputStream(this.blF), C1234G.bdY);
        try {
            String a = cgVar.m501a();
            String a2 = cgVar.m501a();
            String a3 = cgVar.m501a();
            String a4 = cgVar.m501a();
            String a5 = cgVar.m501a();
            if ("libcore.io.DiskLruCache".equals(a)) {
                if ("1".equals(a2) && Integer.toString(this.f349g).equals(a3) && Integer.toString(this.blI).equals(a4) && "".equals(a5)) {
                    while (true) {
                        bHa(cgVar.m501a());
                        i++;
                    }
                }
            }
            throw new IOException("unexpected journal header: [" + a + ", " + a2 + ", " + a4 + ", " + a5 + "]");
        } catch (EOFException e) {
            this.blL = i - this.blK.size();
            C1234G.bwr(cgVar);
        } catch (Throwable th) {
            C1234G.bwr(cgVar);
        }
    }

    private void m453f() {
        m450a(this.blG);
        Iterator it = this.blK.values().iterator();
        while (it.hasNext()) {
            C1243O c1243o = (C1243O) it.next();
            int i;
            if (c1243o.bee != null) {
                c1243o.bee = null;
                for (i = 0; i < this.blI; i++) {
                    m450a(c1243o.m110a(i));
                    m450a(c1243o.bwz(i));
                }
                it.remove();
            } else {
                for (i = 0; i < this.blI; i++) {
                    this.f351j += c1243o.bed[i];
                }
            }
        }
    }

    private synchronized void m454g() {
        if (this.blJ != null) {
            this.blJ.close();
        }
        Writer bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.blG), C1234G.bdY));
        bufferedWriter.write("libcore.io.DiskLruCache");
        bufferedWriter.write("\n");
        bufferedWriter.write("1");
        bufferedWriter.write("\n");
        bufferedWriter.write(Integer.toString(this.f349g));
        bufferedWriter.write("\n");
        bufferedWriter.write(Integer.toString(this.blI));
        bufferedWriter.write("\n");
        bufferedWriter.write("\n");
        for (C1243O c1243o : this.blK.values()) {
            if (c1243o.bee == null) {
                bufferedWriter.write("CLEAN " + c1243o.f138b + c1243o.m111a() + '\n');
            } else {
                try {
                    bufferedWriter.write("DIRTY " + c1243o.f138b + '\n');
                } finally {
                    bufferedWriter.close();
                }
            }
        }
        if (this.blF.exists()) {
            bHb(this.blF, this.blH, true);
        }
        bHb(this.blG, this.blF, false);
        this.blH.delete();
        this.blJ = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.blF, true), C1234G.bdY));
    }

    private boolean m455h() {
        return this.blL >= 2000 && this.blL >= this.blK.size();
    }

    private void m456i() {
        if (this.blJ == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    private void m457j() {
        while (true) {
            if ((this.f351j <= this.f350h ? 1 : null) == null) {
                String str = (String) ((Entry) this.blK.entrySet().iterator().next()).getKey();
                bHe(str);
                if (this.blM != null) {
                    this.blM.mo953a(str);
                }
            } else {
                return;
            }
        }
    }

    public synchronized C1228A m458a(String str) {
        int i = 0;
        synchronized (this) {
            m456i();
            bHf(str);
            C1243O c1243o = (C1243O) this.blK.get(str);
            if (c1243o == null) {
                return null;
            } else if (c1243o.f139d) {
                r6 = new InputStream[this.blI];
                int i2 = 0;
                while (i2 < this.blI) {
                    try {
                        r6[i2] = new FileInputStream(c1243o.m110a(i2));
                        i2++;
                    } catch (FileNotFoundException e) {
                        while (i < this.blI) {
                            InputStream[] inputStreamArr;
                            if (inputStreamArr[i] == null) {
                                break;
                            }
                            C1234G.bwr(inputStreamArr[i]);
                            i++;
                        }
                        return null;
                    }
                }
                this.blL++;
                this.blJ.append("READ " + str + '\n');
                if (m455h()) {
                    this.blO.submit(this.blP);
                }
                C1228A c1228a = new C1228A(this, str, c1243o.f140f, inputStreamArr, c1243o.bed);
                return c1228a;
            } else {
                return null;
            }
        }
    }

    public synchronized boolean m459a() {
        return this.blJ == null;
    }

    public bV m460b(String str) {
        return bHc(str, -1);
    }

    public synchronized void m461b() {
        m456i();
        m457j();
        this.blJ.flush();
    }

    public void bGY(bk bkVar) {
        this.blM = bkVar;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized boolean bHe(java.lang.String r7) {
        /*
        r6 = this;
        r1 = 0;
        monitor-enter(r6);
        r6.m456i();	 Catch:{ all -> 0x0091 }
        r6.bHf(r7);	 Catch:{ all -> 0x0091 }
        r0 = r6.blK;	 Catch:{ all -> 0x0091 }
        r0 = r0.get(r7);	 Catch:{ all -> 0x0091 }
        r0 = (com.loc.C1243O) r0;	 Catch:{ all -> 0x0091 }
        if (r0 != 0) goto L_0x0014;
    L_0x0012:
        monitor-exit(r6);
        return r1;
    L_0x0014:
        r2 = r0.bee;	 Catch:{ all -> 0x0091 }
        if (r2 != 0) goto L_0x0012;
    L_0x001a:
        r2 = r6.blI;	 Catch:{ all -> 0x0091 }
        if (r1 < r2) goto L_0x0051;
    L_0x001e:
        r0 = r6.blL;	 Catch:{ all -> 0x0091 }
        r0 = r0 + 1;
        r6.blL = r0;	 Catch:{ all -> 0x0091 }
        r0 = r6.blJ;	 Catch:{ all -> 0x0091 }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0091 }
        r1.<init>();	 Catch:{ all -> 0x0091 }
        r2 = "REMOVE ";
        r1 = r1.append(r2);	 Catch:{ all -> 0x0091 }
        r1 = r1.append(r7);	 Catch:{ all -> 0x0091 }
        r2 = 10;
        r1 = r1.append(r2);	 Catch:{ all -> 0x0091 }
        r1 = r1.toString();	 Catch:{ all -> 0x0091 }
        r0.append(r1);	 Catch:{ all -> 0x0091 }
        r0 = r6.blK;	 Catch:{ all -> 0x0091 }
        r0.remove(r7);	 Catch:{ all -> 0x0091 }
        r0 = r6.m455h();	 Catch:{ all -> 0x0091 }
        if (r0 != 0) goto L_0x0094;
    L_0x004e:
        r0 = 1;
        monitor-exit(r6);
        return r0;
    L_0x0051:
        r2 = r0.m110a(r1);	 Catch:{ all -> 0x0091 }
        r3 = r2.exists();	 Catch:{ all -> 0x0091 }
        if (r3 != 0) goto L_0x0071;
    L_0x005b:
        r2 = r6.f351j;	 Catch:{ all -> 0x0091 }
        r4 = r0.bed;	 Catch:{ all -> 0x0091 }
        r4 = r4[r1];	 Catch:{ all -> 0x0091 }
        r2 = r2 - r4;
        r6.f351j = r2;	 Catch:{ all -> 0x0091 }
        r2 = r0.bed;	 Catch:{ all -> 0x0091 }
        r4 = 0;
        r2[r1] = r4;	 Catch:{ all -> 0x0091 }
        r1 = r1 + 1;
        goto L_0x001a;
    L_0x0071:
        r3 = r2.delete();	 Catch:{ all -> 0x0091 }
        if (r3 != 0) goto L_0x005b;
    L_0x0077:
        r0 = new java.io.IOException;	 Catch:{ all -> 0x0091 }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0091 }
        r1.<init>();	 Catch:{ all -> 0x0091 }
        r3 = "failed to delete ";
        r1 = r1.append(r3);	 Catch:{ all -> 0x0091 }
        r1 = r1.append(r2);	 Catch:{ all -> 0x0091 }
        r1 = r1.toString();	 Catch:{ all -> 0x0091 }
        r0.<init>(r1);	 Catch:{ all -> 0x0091 }
        throw r0;	 Catch:{ all -> 0x0091 }
    L_0x0091:
        r0 = move-exception;
        monitor-exit(r6);
        throw r0;
    L_0x0094:
        r0 = r6.blO;	 Catch:{ all -> 0x0091 }
        r1 = r6.blP;	 Catch:{ all -> 0x0091 }
        r0.submit(r1);	 Catch:{ all -> 0x0091 }
        goto L_0x004e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.cD.bHe(java.lang.String):boolean");
    }

    public void m462c() {
        close();
        C1234G.m85a(this.blE);
    }

    public synchronized void close() {
        if (this.blJ != null) {
            Iterator it = new ArrayList(this.blK.values()).iterator();
            while (it.hasNext()) {
                C1243O c1243o = (C1243O) it.next();
                if (c1243o.bee != null) {
                    c1243o.bee.m373b();
                }
            }
            m457j();
            this.blJ.close();
            this.blJ = null;
        }
    }
}
