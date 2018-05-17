package com.loc;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Environment;
import android.os.Process;
import com.umeng.analytics.C1296a;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import org.json.JSONObject;

public class bW {
    private Context f285a = null;
    private boolean f286b = true;
    private int bjg = 0;
    private int bjh = 0;
    private C1257e bji = null;
    private int f287c = 1270;
    private int f288d = 310;
    private int f289e = 4;
    private int f290f = 200;
    private int f291g = 1;
    private long f292j = 0;

    protected bW(Context context) {
        this.f285a = context;
    }

    protected static bW m374a(Context context) {
        FileInputStream fileInputStream;
        Throwable th;
        int i = 1;
        bW bWVar = new bW(context);
        bWVar.bjg = 0;
        bWVar.bjh = 0;
        bWVar.f292j = ((System.currentTimeMillis() + 28800000) / C1296a.f551g) * C1296a.f551g;
        try {
            File file = new File(m376b(context) + File.separator + "data_carrier_status");
            if (!file.exists()) {
                return bWVar;
            }
            fileInputStream = new FileInputStream(file);
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[32];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                byteArrayOutputStream.flush();
                byte[] toByteArray = byteArrayOutputStream.toByteArray();
                if (toByteArray != null) {
                    if (toByteArray.length >= 22) {
                        bWVar.f286b = toByteArray[0] != (byte) 0;
                        bWVar.f287c = (toByteArray[1] * 10) * 1024;
                        bWVar.f288d = (toByteArray[2] * 10) * 1024;
                        bWVar.f289e = toByteArray[3];
                        bWVar.f290f = toByteArray[4] * 10;
                        bWVar.f291g = toByteArray[5];
                        long bDP = bDP(toByteArray, 14);
                        if (bWVar.f292j - bDP < C1296a.f551g) {
                            i = 0;
                        }
                        if (i == 0) {
                            bWVar.f292j = bDP;
                            bWVar.bjg = bDO(toByteArray, 6);
                            bWVar.bjh = bDO(toByteArray, 10);
                        }
                    }
                }
                byteArrayOutputStream.close();
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                try {
                    bx.bBw(th, "CollectorStatus", "load");
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th4) {
                        }
                    }
                    return bWVar;
                } catch (Throwable th5) {
                    th = th5;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th6) {
                        }
                    }
                    throw th;
                }
            }
            return bWVar;
        } catch (Throwable th7) {
            th = th7;
            fileInputStream = null;
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            throw th;
        }
    }

    private static byte[] m375a(long j) {
        byte[] bArr = new byte[8];
        for (int i = 0; i < 8; i++) {
            bArr[i] = (byte) ((byte) ((int) ((j >> (i * 8)) & 255)));
        }
        return bArr;
    }

    private static String m376b(Context context) {
        try {
            File a = Process.myUid() == 1000 ? null : cw.m542a(context);
            if ("mounted".equals(Environment.getExternalStorageState()) || !cw.m544a()) {
                if (a != null) {
                    return a.getPath();
                }
            }
            return context.getFilesDir().getPath();
        } catch (Throwable th) {
            bx.bBw(th, "CollectorStatus", "getDiskFileDir");
            return null;
        }
    }

    private static byte[] bDN(int i) {
        byte[] bArr = new byte[4];
        for (int i2 = 0; i2 < 4; i2++) {
            bArr[i2] = (byte) ((byte) ((i >> (i2 * 8)) & 255));
        }
        return bArr;
    }

    private static int bDO(byte[] bArr, int i) {
        int i2 = 0;
        int i3 = 0;
        while (i2 < 4) {
            i3 += (bArr[i2 + i] & 255) << (i2 * 8);
            i2++;
        }
        return i3;
    }

    private static long bDP(byte[] bArr, int i) {
        int i2 = 0;
        int i3 = 0;
        while (i2 < 8) {
            i3 += (bArr[i2 + i] & 255) << (i2 * 8);
            i2++;
        }
        return (long) i3;
    }

    private void m377h() {
        long currentTimeMillis = System.currentTimeMillis() + 28800000;
        if ((currentTimeMillis - this.f292j <= C1296a.f551g ? 1 : 0) == 0) {
            this.f292j = (currentTimeMillis / C1296a.f551g) * C1296a.f551g;
            this.bjg = 0;
            this.bjh = 0;
        }
    }

    protected void m378a(int i) {
        m377h();
        if (i < 0) {
            i = 0;
        }
        this.bjg = i;
    }

    protected boolean m379a() {
        boolean z = true;
        try {
            m377h();
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f285a.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                return this.f286b;
            }
            if (activeNetworkInfo.getType() != 1) {
                if (this.f286b) {
                    if (this.bjh >= this.f288d) {
                    }
                    return z;
                }
                z = false;
                return z;
            }
            boolean z2 = this.f286b && this.bjg < this.f287c;
            return z2;
        } catch (Throwable th) {
            bx.bBw(th, "CollectorStatus", "isEnabled");
            return false;
        }
    }

    protected boolean m380a(String str) {
        boolean z = false;
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("e")) {
                this.f286b = jSONObject.getInt("e") != 0;
            }
            if (jSONObject.has("d")) {
                int i = jSONObject.getInt("d");
                this.f287c = ((i & 127) * 10) * 1024;
                this.f288d = (((i & 3968) >> 7) * 10) * 1024;
                this.f289e = (520192 & i) >> 12;
                this.f290f = ((66584576 & i) >> 19) * 10;
                this.f291g = (i & 2080374784) >> 26;
                if (this.f291g == 31) {
                    this.f291g = 1500;
                }
                if (this.bji != null) {
                    this.bji.mo935a();
                }
            }
            if (jSONObject.has("u") && jSONObject.getInt("u") != 0) {
                z = true;
            }
        } catch (Throwable th) {
            bx.bBw(th, "CollectorStatus", "parse");
        }
        m386g();
        return z;
    }

    protected int m381b() {
        return this.f289e;
    }

    protected void bDL(int i) {
        m377h();
        if (i < 0) {
            i = 0;
        }
        this.bjh = i;
    }

    protected void bDM(C1257e c1257e) {
        this.bji = c1257e;
    }

    protected int m382c() {
        return this.f290f;
    }

    protected int m383d() {
        return this.f291g;
    }

    protected int m384e() {
        m377h();
        return this.bjg;
    }

    protected int m385f() {
        m377h();
        return this.bjh;
    }

    protected void m386g() {
        FileOutputStream fileOutputStream;
        Throwable th;
        int i = 0;
        try {
            m377h();
            File file = new File(m376b(this.f285a) + File.separator + "data_carrier_status");
            if (file.exists()) {
                fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bDN = bDN(this.bjg);
                    byte[] bDN2 = bDN(this.bjh);
                    byte[] a = m375a(this.f292j);
                    byte[] bArr = new byte[22];
                    if (this.f286b) {
                        i = 1;
                    }
                    bArr[0] = (byte) ((byte) i);
                    bArr[1] = (byte) ((byte) (this.f287c / 10240));
                    bArr[2] = (byte) ((byte) (this.f288d / 10240));
                    bArr[3] = (byte) ((byte) this.f289e);
                    bArr[4] = (byte) ((byte) (this.f290f / 10));
                    bArr[5] = (byte) ((byte) this.f291g);
                    bArr[6] = (byte) bDN[0];
                    bArr[7] = (byte) bDN[1];
                    bArr[8] = (byte) bDN[2];
                    bArr[9] = (byte) bDN[3];
                    bArr[10] = (byte) bDN2[0];
                    bArr[11] = (byte) bDN2[1];
                    bArr[12] = (byte) bDN2[2];
                    bArr[13] = (byte) bDN2[3];
                    bArr[14] = (byte) a[0];
                    bArr[15] = (byte) a[1];
                    bArr[16] = (byte) a[2];
                    bArr[17] = (byte) a[3];
                    bArr[18] = (byte) a[4];
                    bArr[19] = (byte) a[5];
                    bArr[20] = (byte) a[6];
                    bArr[21] = (byte) a[7];
                    fileOutputStream.write(bArr);
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th2) {
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        bx.bBw(th, "CollectorStatus", "save");
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th4) {
                            }
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th6) {
                            }
                        }
                        throw th;
                    }
                }
            }
        } catch (Throwable th7) {
            th = th7;
            fileOutputStream = null;
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
            throw th;
        }
    }
}
