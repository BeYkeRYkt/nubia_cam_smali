package com.loc;

import android.content.Context;
import android.text.TextUtils;
import dalvik.system.DexFile;
import java.io.File;
import java.util.Date;

class cc extends C1252W {
    public cc(Context context, ag agVar, boolean z) {
        super(context, agVar, z);
        String b = cl.m511b(context, agVar.m239a(), agVar.m241b());
        String a = cl.m505a(context);
        if (TextUtils.isEmpty(b) || TextUtils.isEmpty(a)) {
            throw new Exception("dexPath or dexOutputDir is null.");
        }
        File file = new File(b);
        File parentFile = file.getParentFile();
        if (!file.exists()) {
            if (parentFile != null && parentFile.exists()) {
                cl.m512c(context, agVar.m239a(), agVar.m241b());
            }
            throw new Exception("file not exist!");
        } else if (z) {
            m473a(b, a + File.separator + cl.m508a(file.getName()));
            new ac(this, context, b, a).start();
        }
    }

    private boolean bEi(C1268m c1268m, ag agVar, String str) {
        return cl.bFD(c1268m, cl.m507a(this.a, agVar.m239a(), agVar.m241b()), str, agVar);
    }

    private boolean bEj(C1268m c1268m, String str, String str2) {
        String a = cl.m506a(this.a, str);
        if (cl.bFD(c1268m, str, a, this.bes)) {
            return true;
        }
        if (bz.bBN(c1268m, str) != null) {
            return false;
        }
        if (!TextUtils.isEmpty(this.f)) {
            bz.bBM(c1268m, new bY(str, bU.m367a(a), this.bes.m239a(), this.bes.m241b(), str2).m391a("useodex").m390a(), bC.m294b(str));
        }
        return true;
    }

    void m472a(Context context, String str, String str2) {
        new Date().getTime();
        try {
            C1268m c1268m = new C1268m(context, bX.m387c());
            File file = new File(str);
            bC bBN = bz.bBN(c1268m, file.getName());
            if (bBN != null) {
                this.f = bBN.m299d();
            }
            if (!bEi(c1268m, this.bes, file.getAbsolutePath())) {
                this.d = false;
                cl.bFy(this.a, c1268m, file.getName());
                Object bFE = cl.bFE(this.a, c1268m, this.bes);
                if (!TextUtils.isEmpty(bFE)) {
                    this.f = bFE;
                    bwQ(this.a, this.bes);
                }
            }
            if (file.exists()) {
                String str3 = str2 + File.separator + cl.m508a(file.getName());
                File file2 = new File(str3);
                if (file2.exists() && !bEj(c1268m, cl.m508a(file.getName()), this.f)) {
                    m473a(str, str2 + File.separator + cl.m508a(file.getName()));
                    bwR(file2, str3, this.f, c1268m);
                }
                new Date().getTime();
            }
        } catch (Throwable th) {
            C1259s.bwd(th, "DynamicClassLoader", "verifyDynamicSDK()");
        }
    }

    public void m473a(String str, String str2) {
        try {
            m123b();
            this.ber = DexFile.loadDex(str, str2, 0);
        } catch (Throwable e) {
            C1259s.bwd(e, "DynamicClassLoader", "loadDexFile()");
            throw new Exception("load dex fail");
        }
    }

    protected void bwR(File file, String str, String str2, C1268m c1268m) {
        if (!TextUtils.isEmpty(this.f) || !file.exists()) {
            String a = bU.m367a(str);
            String name = file.getName();
            bz.bBM(c1268m, new bY(name, a, this.bes.m239a(), this.bes.m241b(), str2).m391a("useodex").m390a(), bC.m294b(name));
        }
    }

    protected Class findClass(String str) {
        try {
            if (this.ber != null) {
                Class cls = (Class) this.b.get(str);
                if (cls != null) {
                    return cls;
                }
                cls = this.ber.loadClass(str, this);
                this.b.put(str, cls);
                if (cls != null) {
                    return cls;
                }
                throw new ClassNotFoundException(str);
            }
            throw new ClassNotFoundException(str);
        } catch (Throwable th) {
            C1259s.bwd(th, "DynamicClassLoader", "findClass()");
            ClassNotFoundException classNotFoundException = new ClassNotFoundException(str);
        }
    }
}
