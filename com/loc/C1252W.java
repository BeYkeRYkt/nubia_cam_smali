package com.loc;

import android.content.Context;
import android.text.TextUtils;
import dalvik.system.DexFile;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

abstract class C1252W extends ClassLoader {
    protected final Context f148a;
    protected final Map f149b = new HashMap();
    protected DexFile ber = null;
    protected ag bes;
    volatile boolean f150d = true;
    protected String f151f;

    public C1252W(Context context, ag agVar, boolean z) {
        super(context.getClassLoader());
        this.f148a = context;
        this.bes = agVar;
    }

    public boolean m122a() {
        return this.ber != null;
    }

    protected void m123b() {
        try {
            this.f149b.clear();
            if (this.ber != null) {
                this.ber.close();
            }
        } catch (Throwable th) {
            C1259s.bwd(th, "DynamicClassLoader", "preReleaseDexFile()");
        }
    }

    protected void bwQ(Context context, ag agVar) {
        String b = cl.m511b(context, agVar.m239a(), agVar.m241b());
        Object a = cl.m505a(context);
        if (!TextUtils.isEmpty(b) && !TextUtils.isEmpty(a)) {
            cB.bGX(context, agVar);
            try {
                File file = new File(b);
                File parentFile = file.getParentFile();
                if (file.exists()) {
                    String str = a + File.separator + cl.m508a(file.getName());
                    DexFile loadDex = DexFile.loadDex(b, str, 0);
                    if (loadDex != null) {
                        loadDex.close();
                        bwR(new File(str), str, this.f151f, new C1268m(context, bX.m387c()));
                    }
                    return;
                }
                if (parentFile != null && parentFile.exists()) {
                    cl.m512c(context, agVar.m239a(), agVar.m241b());
                }
            } catch (Throwable th) {
                C1259s.bwd(th, "DynamicClassLoader", "getInstanceByThread()");
            }
        }
    }

    abstract void bwR(File file, String str, String str2, C1268m c1268m);
}
