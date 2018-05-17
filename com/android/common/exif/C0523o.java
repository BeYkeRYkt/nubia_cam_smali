package com.android.common.exif;

import android.util.SparseIntArray;
import com.fotonation.vfb.VfbEngineCtx;
import com.p010a.C0090a;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.TimeZone;

public class C0523o {
    public static final int BW = C0523o.Cq(0, (short) 274);
    public static final int BX = C0523o.Cq(2, (short) -28026);
    public static final int BY = C0523o.Cq(0, (short) 271);
    public static final int BZ = C0523o.Cq(0, (short) 272);
    public static final int CA = C0523o.Cq(2, (short) -28414);
    public static final int CB = C0523o.Cq(0, (short) 259);
    public static final int CC = C0523o.Cq(2, (short) -23544);
    public static final int CD = C0523o.Cq(0, (short) -32104);
    public static final int CE = C0523o.Cq(2, (short) -23551);
    public static final int CF = C0523o.Cq(2, (short) -28668);
    public static final int CG = C0523o.Cq(2, (short) -28669);
    public static final int CH = C0523o.Cq(2, (short) -23541);
    public static final int CI = C0523o.Cq(2, (short) -23548);
    public static final int CJ = C0523o.Cq(2, (short) -28672);
    public static final int CK = C0523o.Cq(2, (short) -28156);
    public static final int CL = C0523o.Cq(2, (short) -24043);
    public static final int CM = C0523o.Cq(2, (short) -23550);
    public static final int CN = C0523o.Cq(2, (short) -30686);
    public static final int CO = C0523o.Cq(2, (short) -23808);
    public static final int CP = C0523o.Cq(2, (short) -28151);
    public static final int CQ = C0523o.Cq(2, (short) -24576);
    public static final int CR = C0523o.Cq(2, (short) -24053);
    public static final int CS = C0523o.Cq(2, (short) -23547);
    public static final int CT = C0523o.Cq(2, (short) -24048);
    public static final int CU = C0523o.Cq(2, (short) -24050);
    public static final int CV = C0523o.Cq(2, (short) -24049);
    public static final int CW = C0523o.Cq(2, (short) -23545);
    public static final int CX = C0523o.Cq(4, (short) 6);
    public static final int CY = C0523o.Cq(4, (short) 5);
    public static final int CZ = C0523o.Cq(4, (short) 28);
    public static final int Ca = C0523o.Cq(2, (short) -30681);
    public static final int Cb = C0523o.Cq(2, (short) -32102);
    public static final int Cc = C0523o.Cq(2, (short) -32099);
    public static final int Cd = C0523o.Cq(0, (short) 306);
    public static final int Ce = C0523o.Cq(4, (short) 2);
    public static final int Cf = C0523o.Cq(4, (short) 4);
    public static final int Cg = C0523o.Cq(4, (short) 1);
    public static final int Ch = C0523o.Cq(4, (short) 3);
    public static final int Ci = C0523o.Cq(0, (short) -30871);
    public static final int Cj = C0523o.Cq(0, (short) -30683);
    public static final int Ck = C0523o.Cq(2, (short) -24571);
    public static final int Cl = C0523o.Cq(1, (short) 513);
    public static final int Cm = C0523o.Cq(1, (short) 514);
    public static final int Cn = C0523o.Cq(0, (short) 273);
    public static final int Co = C0523o.Cq(0, (short) 279);
    public static final int Cp = C0523o.Cq(2, (short) -24574);
    public static final int Cq = C0523o.Cq(2, (short) -24573);
    public static final int Cr = C0523o.Cq(0, (short) 315);
    public static final int Cs = C0523o.Cq(2, (short) -28150);
    public static final ByteOrder Ct = ByteOrder.BIG_ENDIAN;
    public static final int Cu = C0523o.Cq(2, (short) -28158);
    public static final int Cv = C0523o.Cq(0, (short) 258);
    public static final int Cw = C0523o.Cq(2, (short) -28157);
    public static final int Cx = C0523o.Cq(2, (short) -23806);
    public static final int Cy = C0523o.Cq(2, (short) -24575);
    public static final int Cz = C0523o.Cq(2, (short) -28415);
    public static final int DA = C0523o.Cq(2, (short) -23520);
    public static final int DB = C0523o.Cq(0, (short) 256);
    public static final int DC = C0523o.Cq(3, (short) 1);
    public static final int DD = C0523o.Cq(2, (short) -28152);
    public static final int DE = C0523o.Cq(2, (short) -28036);
    public static final int DF = C0523o.Cq(2, (short) -28155);
    public static final int DG = C0523o.Cq(2, (short) -28153);
    public static final int DH = C0523o.Cq(2, (short) -30680);
    public static final int DI = C0523o.Cq(0, (short) 262);
    public static final int DJ = C0523o.Cq(0, (short) 284);
    public static final int DK = C0523o.Cq(0, (short) 319);
    public static final int DL = C0523o.Cq(0, (short) 532);
    public static final int DM = C0523o.Cq(2, (short) -24572);
    public static final int DN = C0523o.Cq(0, (short) 296);
    public static final int DO = C0523o.Cq(0, (short) 278);
    public static final int DP = C0523o.Cq(0, (short) 277);
    public static final int DQ = C0523o.Cq(2, (short) -23543);
    public static final int DR = C0523o.Cq(2, (short) -23546);
    public static final int DS = C0523o.Cq(2, (short) -23807);
    public static final int DT = C0523o.Cq(2, (short) -24041);
    public static final int DU = C0523o.Cq(2, (short) -23542);
    public static final int DV = C0523o.Cq(2, (short) -28159);
    public static final int DW = C0523o.Cq(0, (short) 305);
    public static final int DX = C0523o.Cq(2, (short) -24052);
    public static final int DY = C0523o.Cq(2, (short) -30684);
    public static final int DZ = C0523o.Cq(2, (short) -28140);
    public static final int Da = C0523o.Cq(4, (short) 29);
    public static final int Db = C0523o.Cq(4, (short) 24);
    public static final int Dc = C0523o.Cq(4, (short) 23);
    public static final int Dd = C0523o.Cq(4, (short) 26);
    public static final int De = C0523o.Cq(4, (short) 25);
    public static final int Df = C0523o.Cq(4, (short) 20);
    public static final int Dg = C0523o.Cq(4, (short) 19);
    public static final int Dh = C0523o.Cq(4, (short) 22);
    public static final int Di = C0523o.Cq(4, (short) 21);
    public static final int Dj = C0523o.Cq(4, (short) 30);
    public static final int Dk = C0523o.Cq(4, (short) 11);
    public static final int Dl = C0523o.Cq(4, (short) 17);
    public static final int Dm = C0523o.Cq(4, (short) 16);
    public static final int Dn = C0523o.Cq(4, (short) 18);
    public static final int Do = C0523o.Cq(4, (short) 10);
    public static final int Dp = C0523o.Cq(4, (short) 27);
    public static final int Dq = C0523o.Cq(4, (short) 8);
    public static final int Dr = C0523o.Cq(4, (short) 13);
    public static final int Ds = C0523o.Cq(4, (short) 12);
    public static final int Dt = C0523o.Cq(4, (short) 9);
    public static final int Du = C0523o.Cq(4, (short) 7);
    public static final int Dv = C0523o.Cq(4, (short) 15);
    public static final int Dw = C0523o.Cq(4, (short) 14);
    public static final int Dx = C0523o.Cq(4, (short) 0);
    public static final int Dy = C0523o.Cq(0, (short) 270);
    public static final int Dz = C0523o.Cq(0, (short) 257);
    public static final int Ea = C0523o.Cq(2, (short) -28154);
    public static final int Eb = C0523o.Cq(2, (short) -23540);
    public static final int Ec = C0523o.Cq(2, (short) -24044);
    public static final int Ed = C0523o.Cq(2, (short) -28016);
    public static final int Ee = C0523o.Cq(2, (short) -28014);
    public static final int Ef = C0523o.Cq(2, (short) -28015);
    public static final int Eg = C0523o.Cq(0, (short) 301);
    public static final int Eh = C0523o.Cq(2, (short) -23549);
    public static final int Ei = C0523o.Cq(0, (short) 318);
    public static final int Ej = C0523o.Cq(0, (short) 282);
    public static final int Ek = C0523o.Cq(0, (short) 529);
    public static final int El = C0523o.Cq(0, (short) 531);
    public static final int Em = C0523o.Cq(0, (short) 530);
    public static final int En = C0523o.Cq(0, (short) 283);
    protected static HashSet Et = new HashSet(Eu);
    private static HashSet Eu = new HashSet();
    private C0511c Eo = new C0511c(Ct);
    private final DateFormat Ep = new SimpleDateFormat("yyyy:MM:dd kk:mm:ss");
    private final DateFormat Eq = new SimpleDateFormat("yyyy:MM:dd");
    private final Calendar Er = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
    private SparseIntArray Es = null;

    static {
        Eu.add(Short.valueOf(C0523o.BV(Cj)));
        Eu.add(Short.valueOf(C0523o.BV(Ci)));
        Eu.add(Short.valueOf(C0523o.BV(Cl)));
        Eu.add(Short.valueOf(C0523o.BV(Ck)));
        Eu.add(Short.valueOf(C0523o.BV(Cn)));
        Et.add(Short.valueOf(C0523o.BV(-1)));
        Et.add(Short.valueOf(C0523o.BV(Cm)));
        Et.add(Short.valueOf(C0523o.BV(Co)));
    }

    public static int Cq(int i, short s) {
        return (65535 & s) | (i << 16);
    }

    public static short BV(int i) {
        return (short) i;
    }

    public static int CE(int i) {
        return i >>> 16;
    }

    public C0523o() {
        this.Eq.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public void BZ(byte[] bArr) {
        CH(new ByteArrayInputStream(bArr));
    }

    public void CH(InputStream inputStream) {
        if (inputStream == null) {
            throw new IllegalArgumentException("Argument is null");
        }
        try {
            this.Eo = new C0516h(this).Ba(inputStream);
        } catch (ExifInvalidFormatException e) {
            throw new IOException("Invalid exif format : " + e);
        }
    }

    public void BX(String str) {
        IOException e;
        if (str == null) {
            throw new IllegalArgumentException("Argument is null");
        }
        Closeable bufferedInputStream;
        try {
            bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
            try {
                CH(bufferedInputStream);
                bufferedInputStream.close();
            } catch (IOException e2) {
                e = e2;
                C0523o.BU(bufferedInputStream);
                throw e;
            }
        } catch (IOException e3) {
            e = e3;
            bufferedInputStream = null;
            C0523o.BU(bufferedInputStream);
            throw e;
        }
    }

    public void Cc(byte[] bArr, OutputStream outputStream) {
        if (bArr == null || outputStream == null) {
            throw new IllegalArgumentException("Argument is null");
        }
        OutputStream Cw = Cw(outputStream);
        Cw.write(bArr, 0, bArr.length);
        Cw.flush();
    }

    public void CK(byte[] bArr, String str) {
        Closeable closeable = null;
        if (bArr == null || str == null) {
            throw new IllegalArgumentException("Argument is null");
        }
        try {
            closeable = Cx(str);
            closeable.write(bArr, 0, bArr.length);
            closeable.flush();
            closeable.close();
        } catch (IOException e) {
            C0523o.BU(closeable);
            throw e;
        }
    }

    public OutputStream Cw(OutputStream outputStream) {
        if (outputStream == null) {
            throw new IllegalArgumentException("Argument is null");
        }
        OutputStream c0512d = new C0512d(outputStream, this);
        c0512d.zQ(this.Eo);
        return c0512d;
    }

    public OutputStream Cx(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Argument is null");
        }
        try {
            return Cw(new FileOutputStream(str));
        } catch (FileNotFoundException e) {
            C0523o.BU(null);
            throw e;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean CI(java.lang.String r9, java.util.Collection r10) {
        /*
        r8 = this;
        r6 = 0;
        r0 = new java.io.File;	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r0.<init>(r9);	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r1 = new java.io.BufferedInputStream;	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r2 = new java.io.FileInputStream;	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r2.<init>(r0);	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r1.<init>(r2);	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r2 = com.android.common.exif.C0517i.Bb(r1, r8);	 Catch:{ ExifInvalidFormatException -> 0x0042 }
        r2 = r2.Bq();	 Catch:{ IOException -> 0x004c }
        r4 = (long) r2;	 Catch:{ IOException -> 0x004c }
        r1.close();	 Catch:{ IOException -> 0x004c }
        r7 = new java.io.RandomAccessFile;	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r1 = "rw";
        r7.<init>(r0, r1);	 Catch:{ IOException -> 0x0067, all -> 0x0065 }
        r0 = r7.length();	 Catch:{ IOException -> 0x0035, all -> 0x0065 }
        r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1));
        if (r0 >= 0) goto L_0x004e;
    L_0x002c:
        r0 = new java.io.IOException;	 Catch:{ IOException -> 0x0035, all -> 0x0065 }
        r1 = "Filesize changed during operation";
        r0.<init>(r1);	 Catch:{ IOException -> 0x0035, all -> 0x0065 }
        throw r0;	 Catch:{ IOException -> 0x0035, all -> 0x0065 }
    L_0x0035:
        r0 = move-exception;
        r1 = r6;
        r6 = r7;
    L_0x0038:
        com.android.common.exif.C0523o.BU(r6);	 Catch:{ all -> 0x003c }
        throw r0;	 Catch:{ all -> 0x003c }
    L_0x003c:
        r0 = move-exception;
        r6 = r1;
    L_0x003e:
        com.android.common.exif.C0523o.BU(r6);
        throw r0;
    L_0x0042:
        r0 = move-exception;
        r2 = new java.io.IOException;	 Catch:{ IOException -> 0x004c }
        r3 = "Invalid exif format : ";
        r2.<init>(r3, r0);	 Catch:{ IOException -> 0x004c }
        throw r2;	 Catch:{ IOException -> 0x004c }
    L_0x004c:
        r0 = move-exception;
        goto L_0x0038;
    L_0x004e:
        r0 = r7.getChannel();	 Catch:{ IOException -> 0x0035, all -> 0x0065 }
        r1 = java.nio.channels.FileChannel.MapMode.READ_WRITE;	 Catch:{ IOException -> 0x0035, all -> 0x0065 }
        r2 = 0;
        r0 = r0.map(r1, r2, r4);	 Catch:{ IOException -> 0x0035, all -> 0x0065 }
        r0 = r8.CJ(r0, r10);	 Catch:{ IOException -> 0x0035, all -> 0x0065 }
        com.android.common.exif.C0523o.BU(r6);
        r7.close();
        return r0;
    L_0x0065:
        r0 = move-exception;
        goto L_0x003e;
    L_0x0067:
        r0 = move-exception;
        r1 = r6;
        goto L_0x0038;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.exif.o.CI(java.lang.String, java.util.Collection):boolean");
    }

    public boolean CJ(ByteBuffer byteBuffer, Collection collection) {
        try {
            C0509a c0509a = new C0509a(byteBuffer, this);
            for (C0514f zu : collection) {
                c0509a.zu(zu);
            }
            return c0509a.commit();
        } catch (ExifInvalidFormatException e) {
            throw new IOException("Invalid exif format : " + e);
        }
    }

    public void Cj(String str, Collection collection) {
        FileInputStream fileInputStream;
        IOException e;
        Throwable th;
        if (!CI(str, collection)) {
            C0511c c0511c = this.Eo;
            this.Eo = new C0511c(Ct);
            try {
                fileInputStream = new FileInputStream(str);
                try {
                    OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    Cs(fileInputStream, byteArrayOutputStream);
                    byte[] toByteArray = byteArrayOutputStream.toByteArray();
                    BZ(toByteArray);
                    Ci(collection);
                    CK(toByteArray, str);
                    fileInputStream.close();
                    this.Eo = c0511c;
                } catch (IOException e2) {
                    e = e2;
                    try {
                        C0090a.m1e("CameraExif", "rewriteExif IOException");
                        C0523o.BU(fileInputStream);
                        throw e;
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream.close();
                        this.Eo = c0511c;
                        throw th;
                    }
                }
            } catch (IOException e3) {
                e = e3;
                fileInputStream = null;
                C0090a.m1e("CameraExif", "rewriteExif IOException");
                C0523o.BU(fileInputStream);
                throw e;
            } catch (Throwable th3) {
                th = th3;
                fileInputStream = null;
                fileInputStream.close();
                this.Eo = c0511c;
                throw th;
            }
        }
        C0090a.m1e("CameraExif", "rewriteExif successful");
    }

    public List Cp() {
        return this.Eo.zB();
    }

    public C0514f Cz(int i, int i2) {
        if (C0514f.Ai(i2)) {
            return this.Eo.zG(C0523o.BV(i), i2);
        }
        return null;
    }

    public C0514f BY(int i) {
        return Cz(i, Cv(i));
    }

    public Integer CA(int i, int i2) {
        int[] CB = CB(i, i2);
        if (CB == null || CB.length <= 0) {
            return null;
        }
        return Integer.valueOf(CB[0]);
    }

    public Integer Ca(int i) {
        return CA(i, Cv(i));
    }

    public C0513e CC(int i, int i2) {
        C0513e[] CD = CD(i, i2);
        if (CD == null || CD.length == 0) {
            return null;
        }
        return new C0513e(CD[0]);
    }

    public C0513e Cb(int i) {
        return CC(i, Cv(i));
    }

    public int[] CB(int i, int i2) {
        C0514f Cz = Cz(i, i2);
        if (Cz == null) {
            return null;
        }
        return Cz.AB();
    }

    public C0513e[] CD(int i, int i2) {
        C0514f Cz = Cz(i, i2);
        if (Cz == null) {
            return null;
        }
        return Cz.AC();
    }

    public int Cv(int i) {
        if (Cn().get(i) == 0) {
            return -1;
        }
        return C0523o.CE(i);
    }

    protected static boolean Cl(short s) {
        return Eu.contains(Short.valueOf(s));
    }

    public C0514f Cr(int i, int i2, Object obj) {
        boolean z = false;
        int i3 = Cn().get(i);
        if (i3 == 0 || obj == null) {
            return null;
        }
        short CF = C0523o.CF(i3);
        int Cu = C0523o.Cu(i3);
        if (Cu != 0) {
            z = true;
        }
        if (!C0523o.Co(i3, i2)) {
            return null;
        }
        C0514f c0514f = new C0514f(C0523o.BV(i), CF, Cu, i2, z);
        if (c0514f.AP(obj)) {
            return c0514f;
        }
        return null;
    }

    public C0514f Ce(int i, Object obj) {
        return Cr(i, C0523o.CE(i), obj);
    }

    protected C0514f Cm(int i) {
        boolean z = false;
        int i2 = Cn().get(i);
        if (i2 == 0) {
            return null;
        }
        short CF = C0523o.CF(i2);
        int Cu = C0523o.Cu(i2);
        if (Cu != 0) {
            z = true;
        }
        return new C0514f(C0523o.BV(i), CF, Cu, C0523o.CE(i), z);
    }

    public C0514f Cf(C0514f c0514f) {
        return this.Eo.zy(c0514f);
    }

    public void Ci(Collection collection) {
        for (C0514f Cf : collection) {
            Cf(Cf);
        }
    }

    public void Cd() {
        this.Eo.zK(null);
    }

    public static short BW(int i) {
        int i2 = i % 360;
        if (i2 < 0) {
            i2 += 360;
        }
        if (i2 < 90) {
            return (short) 1;
        }
        if (i2 < 180) {
            return (short) 6;
        }
        if (i2 < 270) {
            return (short) 3;
        }
        return (short) 8;
    }

    public boolean Ch(int i, long j, TimeZone timeZone) {
        if (i != Cd && i != CF && i != CG) {
            return false;
        }
        this.Ep.setTimeZone(timeZone);
        C0514f Ce = Ce(i, this.Ep.format(Long.valueOf(j)));
        if (Ce == null) {
            return false;
        }
        Cf(Ce);
        return true;
    }

    public boolean Cg(double d, double d2) {
        Object obj;
        C0514f Ce = Ce(Ce, C0523o.Ck(d));
        C0514f Ce2 = Ce(Cf, C0523o.Ck(d2));
        int i = Cg;
        if (d >= 0.0d) {
            obj = "N";
        } else {
            obj = "S";
        }
        C0514f Ce3 = Ce(i, obj);
        int i2 = Ch;
        if (d2 >= 0.0d) {
            obj = "E";
        } else {
            obj = "W";
        }
        C0514f Ce4 = Ce(i2, obj);
        if (Ce == null || Ce2 == null || Ce3 == null || Ce4 == null) {
            return false;
        }
        Cf(Ce);
        Cf(Ce2);
        Cf(Ce3);
        Cf(Ce4);
        return true;
    }

    public static C0513e[] Ck(double d) {
        double abs = Math.abs(d);
        abs = (abs - ((double) ((int) abs))) * 60.0d;
        int i = (int) ((abs - ((double) ((int) abs))) * 6000.0d);
        return new C0513e[]{new C0513e((long) r2, 1), new C0513e((long) r3, 1), new C0513e((long) i, 100)};
    }

    private void Cs(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[1024];
        int read = inputStream.read(bArr, 0, 1024);
        while (read != -1) {
            outputStream.write(bArr, 0, read);
            read = inputStream.read(bArr, 0, 1024);
        }
    }

    protected static void BU(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
            }
        }
    }

    protected SparseIntArray Cn() {
        if (this.Es == null) {
            this.Es = new SparseIntArray();
            CG();
        }
        return this.Es;
    }

    private void CG() {
        int Cy = C0523o.Cy(new int[]{0, 1}) << 24;
        this.Es.put(BY, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 0);
        this.Es.put(DB, (Cy | 262144) | 1);
        this.Es.put(Dz, (Cy | 262144) | 1);
        this.Es.put(Cv, (Cy | 196608) | 3);
        this.Es.put(CB, (Cy | 196608) | 1);
        this.Es.put(DI, (Cy | 196608) | 1);
        this.Es.put(BW, (Cy | 196608) | 1);
        this.Es.put(DP, (Cy | 196608) | 1);
        this.Es.put(DJ, (Cy | 196608) | 1);
        this.Es.put(Em, (Cy | 196608) | 2);
        this.Es.put(El, (Cy | 196608) | 1);
        this.Es.put(Ej, (Cy | 327680) | 1);
        this.Es.put(En, (Cy | 327680) | 1);
        this.Es.put(DN, (Cy | 196608) | 1);
        this.Es.put(Cn, (Cy | 262144) | 0);
        this.Es.put(DO, (Cy | 262144) | 1);
        this.Es.put(Co, (Cy | 262144) | 0);
        this.Es.put(Eg, (Cy | 196608) | 768);
        this.Es.put(Ei, (Cy | 327680) | 2);
        this.Es.put(DK, (Cy | 327680) | 6);
        this.Es.put(Ek, (Cy | 327680) | 3);
        this.Es.put(DL, (Cy | 327680) | 6);
        this.Es.put(Cd, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 20);
        this.Es.put(Dy, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 0);
        this.Es.put(BY, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 0);
        this.Es.put(BZ, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 0);
        this.Es.put(DW, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 0);
        this.Es.put(Cr, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 0);
        this.Es.put(CD, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 0);
        this.Es.put(Ci, (Cy | 262144) | 1);
        this.Es.put(Cj, (Cy | 262144) | 1);
        Cy = C0523o.Cy(new int[]{1}) << 24;
        this.Es.put(Cl, (Cy | 262144) | 1);
        this.Es.put(Cm, (Cy | 262144) | 1);
        Cy = C0523o.Cy(new int[]{2}) << 24;
        this.Es.put(CJ, (Cy | 458752) | 4);
        this.Es.put(CQ, (Cy | 458752) | 4);
        this.Es.put(Cy, (Cy | 196608) | 1);
        this.Es.put(Cz, (Cy | 458752) | 4);
        this.Es.put(CA, (Cy | 327680) | 1);
        this.Es.put(Cp, (Cy | 262144) | 1);
        this.Es.put(Cq, (Cy | 262144) | 1);
        this.Es.put(DE, (Cy | 458752) | 0);
        this.Es.put(BX, (Cy | 458752) | 0);
        this.Es.put(DM, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 13);
        this.Es.put(CG, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 20);
        this.Es.put(CF, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 20);
        this.Es.put(Ed, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 0);
        this.Es.put(Ef, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 0);
        this.Es.put(Ee, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 0);
        this.Es.put(DA, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 33);
        this.Es.put(Cb, (Cy | 327680) | 1);
        this.Es.put(Cc, (Cy | 327680) | 1);
        this.Es.put(CN, (Cy | 196608) | 1);
        this.Es.put(DY, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 0);
        this.Es.put(Ca, (Cy | 196608) | 0);
        this.Es.put(DH, (Cy | 458752) | 0);
        this.Es.put(DV, (655360 | Cy) | 1);
        this.Es.put(Cu, (Cy | 327680) | 1);
        this.Es.put(Cw, (655360 | Cy) | 1);
        this.Es.put(CK, (655360 | Cy) | 1);
        this.Es.put(DF, (Cy | 327680) | 1);
        this.Es.put(Ea, (Cy | 327680) | 1);
        this.Es.put(DG, (Cy | 196608) | 1);
        this.Es.put(DD, (Cy | 196608) | 1);
        this.Es.put(CP, (Cy | 196608) | 1);
        this.Es.put(Cs, (Cy | 327680) | 1);
        this.Es.put(DZ, (Cy | 196608) | 0);
        this.Es.put(CR, (Cy | 327680) | 1);
        this.Es.put(DX, (Cy | 458752) | 0);
        this.Es.put(CU, (Cy | 327680) | 1);
        this.Es.put(CV, (Cy | 327680) | 1);
        this.Es.put(CT, (Cy | 196608) | 1);
        this.Es.put(Ec, (Cy | 196608) | 2);
        this.Es.put(CL, (Cy | 327680) | 1);
        this.Es.put(DT, (Cy | 196608) | 1);
        this.Es.put(CO, (Cy | 458752) | 1);
        this.Es.put(DS, (Cy | 458752) | 1);
        this.Es.put(Cx, (Cy | 458752) | 0);
        this.Es.put(CE, (Cy | 196608) | 1);
        this.Es.put(CM, (Cy | 196608) | 1);
        this.Es.put(Eh, (Cy | 196608) | 1);
        this.Es.put(CI, (Cy | 327680) | 1);
        this.Es.put(CS, (Cy | 196608) | 1);
        this.Es.put(DR, (Cy | 196608) | 1);
        this.Es.put(CW, (Cy | 327680) | 1);
        this.Es.put(CC, (Cy | 196608) | 1);
        this.Es.put(DQ, (Cy | 196608) | 1);
        this.Es.put(DU, (Cy | 196608) | 1);
        this.Es.put(CH, (Cy | 458752) | 0);
        this.Es.put(Eb, (Cy | 196608) | 1);
        this.Es.put(Ck, (Cy | 262144) | 1);
        Cy = C0523o.Cy(new int[]{4}) << 24;
        this.Es.put(Dx, (VfbEngineCtx.INIT_FLAG_MODE_TEXTURE_TO_TEXTURE | Cy) | 4);
        this.Es.put(Cg, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 2);
        this.Es.put(Ch, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 2);
        this.Es.put(Ce, (655360 | Cy) | 3);
        this.Es.put(Cf, (655360 | Cy) | 3);
        this.Es.put(CY, (VfbEngineCtx.INIT_FLAG_MODE_TEXTURE_TO_TEXTURE | Cy) | 1);
        this.Es.put(CX, (Cy | 327680) | 1);
        this.Es.put(Du, (Cy | 327680) | 3);
        this.Es.put(Dq, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 0);
        this.Es.put(Dt, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 2);
        this.Es.put(Do, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 2);
        this.Es.put(Dk, (Cy | 327680) | 1);
        this.Es.put(Ds, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 2);
        this.Es.put(Dr, (Cy | 327680) | 1);
        this.Es.put(Dw, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 2);
        this.Es.put(Dv, (Cy | 327680) | 1);
        this.Es.put(Dm, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 2);
        this.Es.put(Dl, (Cy | 327680) | 1);
        this.Es.put(Dn, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 0);
        this.Es.put(Dg, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 2);
        this.Es.put(Df, (Cy | 327680) | 1);
        this.Es.put(Dc, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 2);
        this.Es.put(Db, (Cy | 327680) | 1);
        this.Es.put(De, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 2);
        this.Es.put(Dd, (Cy | 327680) | 1);
        this.Es.put(Dp, (Cy | 458752) | 0);
        this.Es.put(CZ, (Cy | 458752) | 0);
        this.Es.put(Da, (Cy | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 11);
        this.Es.put(Dj, (Cy | 196608) | 11);
        this.Es.put(DC, ((C0523o.Cy(new int[]{3}) << 24) | VfbEngineCtx.INIT_FLAG_MODE_IMAGE_TO_TEXTURE) | 0);
    }

    protected static int Ct(int i) {
        return i >>> 24;
    }

    protected static boolean Co(int i, int i2) {
        int[] AZ = C0515g.AZ();
        int Ct = C0523o.Ct(i);
        int i3 = 0;
        while (i3 < AZ.length) {
            if (i2 == AZ[i3] && ((Ct >> i3) & 1) == 1) {
                return true;
            }
            i3++;
        }
        return false;
    }

    protected static int Cy(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return 0;
        }
        int[] AZ = C0515g.AZ();
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            for (int i3 : iArr) {
                if (AZ[i2] == i3) {
                    i |= 1 << i2;
                    break;
                }
            }
        }
        return i;
    }

    protected static short CF(int i) {
        return (short) ((i >> 16) & 255);
    }

    protected static int Cu(int i) {
        return 65535 & i;
    }
}
