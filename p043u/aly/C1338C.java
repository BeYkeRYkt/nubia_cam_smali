package p043u.aly;

import com.umeng.analytics.C1315h.C1314b;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

class C1338C implements C1314b {
    final /* synthetic */ bR buP;

    C1338C(bR bRVar) {
        this.buP = bRVar;
    }

    public void mo965a(File file) {
    }

    public boolean mo966b(File file) {
        Throwable th;
        InputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                byte[] bVP = bu.bVP(fileInputStream);
                try {
                    int bXF;
                    bu.bVS(fileInputStream);
                    bVP = this.buP.byx.m851a(bVP);
                    if (bVP != null) {
                        bXF = this.buP.m959a(bVP);
                    } else {
                        bXF = 1;
                    }
                    if (bXF == 2 && this.buP.byw.m826m()) {
                        this.buP.byw.m825l();
                    }
                    return this.buP.byz || bXF != 1;
                } catch (Exception e) {
                    return false;
                }
            } catch (Throwable th2) {
                th = th2;
                bu.bVS(fileInputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
            bu.bVS(fileInputStream);
            throw th;
        }
    }

    public void mo967c(File file) {
        this.buP.byw.m824k();
    }
}
