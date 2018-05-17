package com.loc;

import android.content.Context;
import android.os.Build.VERSION;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.List;

public class bh extends Thread implements C1250f {
    private ch bgS;
    private aM bgT;
    private ag bgU;
    private RandomAccessFile bgV;
    private Context bgW;
    private int bgX;
    private String f310d;
    private String f311f;
    private String f312h;
    private String f313i;
    private String f314j;
    private String f315k;
    private int f316l;

    public bh(Context context, ch chVar, ag agVar) {
        try {
            this.bgW = context.getApplicationContext();
            this.bgU = agVar;
            if (chVar != null) {
                this.bgS = chVar;
                this.bgT = new aM(new C1266k(this.bgS));
                String[] split = this.bgS.m502a().split("/");
                this.f311f = split[split.length - 1];
                split = this.f311f.split("_");
                this.f312h = split[0];
                this.f313i = split[2];
                this.f314j = split[1];
                this.f316l = Integer.parseInt(split[3]);
                this.bgX = Integer.parseInt(split[4].split("\\.")[0]);
                this.f315k = chVar.m503b();
                this.f310d = cl.m506a(context, this.f311f);
            }
        } catch (Throwable th) {
            C1259s.bwd(th, "DexDownLoad", "DexDownLoad");
        }
    }

    private void m402a(String str) {
        C1268m c1268m = new C1268m(this.bgW, bX.m387c());
        List bBO = bz.bBO(c1268m, str, "copy");
        cl.m509a(bBO);
        if (bBO != null && bBO.size() > 1) {
            int size = bBO.size();
            for (int i = 1; i < size; i++) {
                cl.bFz(this.bgW, c1268m, ((bC) bBO.get(i)).m296a());
            }
        }
    }

    private boolean m403a(Context context) {
        return cn.bFP(context) == 1;
    }

    private boolean bAD(C1268m c1268m, bC bCVar, String str, String str2, String str3, String str4) {
        if ("errorstatus".equals(bCVar.m300e())) {
            if (!new File(cl.m511b(this.bgW, this.bgU.m239a(), this.bgU.m241b())).exists()) {
                cl.bFE(this.bgW, c1268m, this.bgU);
                try {
                    bE.m303a().bCg(this.bgW, this.bgU);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return true;
        } else if (!new File(this.f310d).exists()) {
            return false;
        } else {
            List bvL = c1268m.bvL(bC.bBZ(cl.m507a(this.bgW, str, str2), str, str2, str3), bC.class);
            if (bvL != null && bvL.size() > 0) {
                return true;
            }
            try {
                cl.bFB(this.bgW, c1268m, this.bgU, new bY(cl.m507a(this.bgW, str, this.bgU.m241b()), str4, str, str2, str3).m391a("usedex").m390a(), this.f310d);
                bE.m303a().bCg(this.bgW, this.bgU);
            } catch (Throwable e2) {
                C1259s.bwd(e2, "DexDownLoad", "processDownloadedFile()");
            } catch (Throwable e22) {
                C1259s.bwd(e22, "DexDownLoad", "processDownloadedFile()");
            } catch (Throwable e222) {
                C1259s.bwd(e222, "DexDownLoad", "processDownloadedFile()");
            }
            return true;
        }
    }

    private boolean m404d() {
        C1268m c1268m = new C1268m(this.bgW, bX.m387c());
        try {
            List bBO = bz.bBO(c1268m, this.f312h, "usedex");
            if (bBO != null) {
                if (bBO.size() > 0 && ai.m246a(((bC) bBO.get(0)).m299d(), this.f314j) > 0) {
                    return true;
                }
            }
        } catch (Throwable th) {
            C1259s.bwd(th, "DexDownLoad", "isDownloaded()");
        }
        bC bBN = bz.bBN(c1268m, this.f311f);
        return bBN == null ? false : bAD(c1268m, bBN, this.f312h, this.f313i, this.f314j, this.f315k);
    }

    private boolean m405e() {
        boolean z = false;
        if (this.bgU == null) {
            return false;
        }
        if (this.bgU.m239a().equals(this.f312h) && this.bgU.m241b().equals(this.f313i)) {
            z = true;
        }
        return z;
    }

    private boolean m406f() {
        return VERSION.SDK_INT >= this.bgX && VERSION.SDK_INT <= this.f316l;
    }

    private boolean m407g() {
        try {
            if (!m405e() || m404d() || !m406f() || !m403a(this.bgW)) {
                return false;
            }
            m402a(this.bgU.m239a());
            return true;
        } catch (Throwable th) {
            C1259s.bwd(th, "DexDownLoad", "isNeedDownload()");
            return false;
        }
    }

    public void m408a() {
        try {
            start();
        } catch (Throwable th) {
            C1259s.bwd(th, "DexDownLoad", "startDownload");
        }
    }

    public void mo923a(Throwable th) {
        try {
            if (this.bgV != null) {
                this.bgV.close();
            }
        } catch (Throwable e) {
            C1259s.bwd(e, "DexDownLoad", "onException()");
        } catch (Throwable e2) {
            C1259s.bwd(e2, "DexDownLoad", "onException()");
        }
    }

    public void mo924b() {
    }

    public void bvy(byte[] bArr, long j) {
        try {
            if (this.bgV == null) {
                File file = new File(this.f310d);
                File parentFile = file.getParentFile();
                if (!parentFile.exists()) {
                    parentFile.mkdirs();
                }
                this.bgV = new RandomAccessFile(file, "rw");
            }
        } catch (Throwable e) {
            C1259s.bwd(e, "DexDownLoad", "onDownload()");
        } catch (Throwable e2) {
            C1259s.bwd(e2, "DexDownLoad", "onDownload()");
            return;
        }
        try {
            this.bgV.seek(j);
            this.bgV.write(bArr);
        } catch (Throwable e22) {
            C1259s.bwd(e22, "DexDownLoad", "onDownload()");
        }
    }

    public void mo926c() {
        try {
            if (this.bgV != null) {
                this.bgV.close();
                String b = this.bgS.m503b();
                if (cl.m510a(this.f310d, b)) {
                    String c = this.bgS.m504c();
                    C1268m c1268m = new C1268m(this.bgW, bX.m387c());
                    bz.bBM(c1268m, new bY(this.f311f, b, this.f312h, c, this.f314j).m391a("copy").m390a(), bC.bBZ(this.f311f, this.f312h, c, this.f314j));
                    try {
                        cl.bFB(this.bgW, c1268m, this.bgU, new bY(cl.m507a(this.bgW, this.f312h, this.bgU.m241b()), b, this.f312h, c, this.f314j).m391a("usedex").m390a(), this.f310d);
                        bE.m303a().bCg(this.bgW, this.bgU);
                    } catch (Throwable e) {
                        C1259s.bwd(e, "DexDownLoad", "onFinish()");
                    } catch (Throwable e2) {
                        C1259s.bwd(e2, "DexDownLoad", "onFinish()");
                    } catch (Throwable e22) {
                        C1259s.bwd(e22, "DexDownLoad", "onFinish()");
                    }
                }
                try {
                    new File(this.f310d).delete();
                } catch (Throwable e222) {
                    C1259s.bwd(e222, "DexDownLoad", "onFinish()");
                }
            }
        } catch (Throwable e2222) {
            C1259s.bwd(e2222, "DexDownLoad", "onFinish()");
        } catch (Throwable e22222) {
            C1259s.bwd(e22222, "DexDownLoad", "onFinish()");
        }
    }

    public void run() {
        try {
            if (m407g()) {
                this.bgT.bzO(this);
            }
        } catch (Throwable th) {
            C1259s.bwd(th, "DexDownLoad", "run");
        }
    }
}
