package com.loc;

import android.content.Context;
import java.io.File;
import java.io.RandomAccessFile;

public class C1251V extends Thread implements C1250f {
    private static String f143h = "sodownload";
    private static String f144i = "sofail";
    private aM ben = new aM(this.beo);
    private aq beo;
    private RandomAccessFile bep;
    private Context beq;
    private String f145d;
    private String f146e;
    private String f147f;

    public C1251V(Context context, String str, String str2, String str3) {
        this.beq = context;
        this.f147f = str3;
        this.f145d = C1251V.m116a(context, str + "temp.so");
        this.f146e = C1251V.m116a(context, "libwgs2gcj.so");
        this.beo = new aq(str2);
    }

    public static String m116a(Context context, String str) {
        return context.getFilesDir().getAbsolutePath() + File.separator + "libso" + File.separator + str;
    }

    private static String bwP(Context context, String str) {
        return C1251V.m116a(context, str);
    }

    private void m117d() {
        File file = new File(this.f145d);
        if (file.exists()) {
            file.delete();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void m118a() {
        /*
        r2 = this;
        r0 = r2.beo;
        if (r0 != 0) goto L_0x0005;
    L_0x0004:
        return;
    L_0x0005:
        r0 = r2.beo;
        r0 = r0.mo931b();
        r0 = android.text.TextUtils.isEmpty(r0);
        if (r0 != 0) goto L_0x0004;
    L_0x0011:
        r0 = r2.beo;
        r0 = r0.mo931b();
        r1 = "libJni_wgs2gcj.so";
        r0 = r0.contains(r1);
        if (r0 == 0) goto L_0x0004;
    L_0x0020:
        r0 = r2.beo;
        r0 = r0.mo931b();
        r1 = android.os.Build.CPU_ABI;
        r0 = r0.contains(r1);
        if (r0 == 0) goto L_0x0004;
    L_0x002e:
        r0 = new java.io.File;
        r1 = r2.f146e;
        r0.<init>(r1);
        r0 = r0.exists();
        if (r0 != 0) goto L_0x003f;
    L_0x003b:
        r2.start();
        return;
    L_0x003f:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.V.a():void");
    }

    public void mo923a(Throwable th) {
        try {
            if (this.bep != null) {
                this.bep.close();
            }
            m117d();
            File file = new File(C1251V.bwP(this.beq, "tempfile"));
            if (!file.exists()) {
                File parentFile = file.getParentFile();
                if (!parentFile.exists()) {
                    parentFile.mkdir();
                }
                file.createNewFile();
            }
        } catch (Throwable th2) {
            C1259s.bwd(th2, "SDKCoordinatorDownload", "onException");
        }
    }

    public void mo924b() {
        m117d();
    }

    public void bvy(byte[] bArr, long j) {
        try {
            if (this.bep == null) {
                File file = new File(this.f145d);
                File parentFile = file.getParentFile();
                if (!parentFile.exists()) {
                    parentFile.mkdirs();
                }
                this.bep = new RandomAccessFile(file, "rw");
            }
        } catch (Throwable e) {
            C1259s.bwd(e, "SDKCoordinatorDownload", "onDownload");
            m117d();
        } catch (Throwable e2) {
            m117d();
            C1259s.bwd(e2, "SDKCoordinatorDownload", "onDownload");
            return;
        }
        try {
            this.bep.seek(j);
            this.bep.write(bArr);
        } catch (Throwable e22) {
            m117d();
            C1259s.bwd(e22, "SDKCoordinatorDownload", "onDownload");
        }
    }

    public void mo926c() {
        try {
            if (this.bep != null) {
                this.bep.close();
            }
            String a = bU.m367a(this.f145d);
            if (a != null) {
                if (a.equalsIgnoreCase(this.f147f)) {
                    if (new File(this.f146e).exists()) {
                        m117d();
                        return;
                    } else {
                        new File(this.f145d).renameTo(new File(this.f146e));
                    }
                }
            }
            m117d();
        } catch (Throwable th) {
            m117d();
            r1 = new File(this.f146e);
            File file;
            if (file.exists()) {
                file.delete();
            }
            C1259s.bwd(th, "SDKCoordinatorDownload", "onFinish");
        }
    }

    public void run() {
        try {
            File file = new File(C1251V.bwP(this.beq, "tempfile"));
            if (file.exists()) {
                file.delete();
            }
            this.ben.bzO(this);
        } catch (Throwable th) {
            C1259s.bwd(th, "SDKCoordinatorDownload", "run");
            m117d();
        }
    }
}
