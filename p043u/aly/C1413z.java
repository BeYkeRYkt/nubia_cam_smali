package p043u.aly;

import android.content.Context;
import com.umeng.analytics.C1297b;
import java.io.File;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;

public class C1413z {
    private static final byte[] f1001b = "pbl0".getBytes();
    private static C1413z buL;
    private C1335A buI;
    private cm buJ = new cm();
    private bc buK = null;
    private Context buM;

    C1413z(Context context) {
        this.buM = context;
    }

    public static synchronized C1413z m1279a(Context context) {
        C1413z c1413z;
        synchronized (C1413z.class) {
            if (buL == null) {
                buL = new C1413z(context);
                buL.m1283c();
            }
            c1413z = buL;
        }
        return c1413z;
    }

    public void bSc(C1335A c1335a) {
        this.buI = c1335a;
    }

    public String bSd(bc bcVar) {
        StringBuilder stringBuilder = new StringBuilder();
        for (Entry entry : new TreeMap(bcVar.m1010d()).entrySet()) {
            stringBuilder.append((String) entry.getKey());
            if (((bd) entry.getValue()).m1021e()) {
                stringBuilder.append(((bd) entry.getValue()).m1020c());
            }
            stringBuilder.append(((bd) entry.getValue()).m1022f());
            stringBuilder.append(((bd) entry.getValue()).m1024j());
        }
        stringBuilder.append(bcVar.f828b);
        return bu.m1124a(stringBuilder.toString()).toLowerCase(Locale.US);
    }

    private boolean bSe(bc bcVar) {
        if (!bcVar.m1014k().equals(bSd(bcVar))) {
            return false;
        }
        for (bd bdVar : bcVar.m1010d().values()) {
            byte[] a = C1297b.m609a(bdVar.m1024j());
            byte[] bSf = bSf(bdVar);
            for (int i = 0; i < 4; i++) {
                if (a[i] != bSf[i]) {
                    return false;
                }
            }
        }
        return true;
    }

    public byte[] bSf(bd bdVar) {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(null);
        allocate.putLong(bdVar.m1022f());
        byte[] array = allocate.array();
        byte[] bArr = f1001b;
        byte[] bArr2 = new byte[4];
        for (int i = 0; i < 4; i++) {
            bArr2[i] = (byte) ((byte) (array[i] ^ bArr[i]));
        }
        return bArr2;
    }

    public void bSg(bc bcVar) {
        String str = null;
        if (bcVar != null && bSe(bcVar)) {
            synchronized (this) {
                bc bcVar2 = this.buK;
                String k = bcVar2 != null ? bcVar2.m1014k() : null;
                if (bcVar2 != null) {
                    bcVar2 = bSh(bcVar2, bcVar);
                } else {
                    bcVar2 = bSi(bcVar);
                }
                this.buK = bcVar2;
                if (bcVar2 != null) {
                    str = bcVar2.m1014k();
                }
                Object obj;
                if (m1280a(k, str)) {
                    obj = null;
                } else {
                    obj = 1;
                }
            }
            if (!(this.buK == null || r0 == null)) {
                this.buJ.bYx(this.buK);
                if (this.buI != null) {
                    this.buI.bSj(this.buJ);
                }
            }
        }
    }

    private boolean m1280a(String str, String str2) {
        if (str != null) {
            return str.equals(str2);
        }
        if (str2 == null) {
            return true;
        }
        return false;
    }

    private bc bSh(bc bcVar, bc bcVar2) {
        if (bcVar2 == null) {
            return bcVar;
        }
        Map d = bcVar.m1010d();
        for (Entry entry : bcVar2.m1010d().entrySet()) {
            if (((bd) entry.getValue()).m1021e()) {
                d.put(entry.getKey(), entry.getValue());
            } else {
                d.remove(entry.getKey());
            }
        }
        bcVar.m1007a(bcVar2.m1012h());
        bcVar.m1008a(bSd(bcVar));
        return bcVar;
    }

    private bc bSi(bc bcVar) {
        Map d = bcVar.m1010d();
        List<String> arrayList = new ArrayList(d.size() / 2);
        for (Entry entry : d.entrySet()) {
            if (!((bd) entry.getValue()).m1021e()) {
                arrayList.add(entry.getKey());
            }
        }
        for (String remove : arrayList) {
            d.remove(remove);
        }
        return bcVar;
    }

    public synchronized bc m1281a() {
        return this.buK;
    }

    public cm m1282b() {
        return this.buJ;
    }

    public void m1283c() {
        InputStream openFileInput;
        byte[] bVP;
        Exception e;
        bc bcVar;
        Throwable th;
        InputStream inputStream = null;
        if (new File(this.buM.getFilesDir(), ".imprint").exists()) {
            try {
                openFileInput = this.buM.openFileInput(".imprint");
                try {
                    bVP = bu.bVP(openFileInput);
                    bu.bVS(openFileInput);
                } catch (Exception e2) {
                    e = e2;
                    try {
                        e.printStackTrace();
                        bu.bVS(openFileInput);
                        if (bVP != null) {
                            try {
                                bcVar = new bc();
                                new bT().bXK(bcVar, bVP);
                                this.buK = bcVar;
                                this.buJ.bYx(bcVar);
                            } catch (Exception e3) {
                                e3.printStackTrace();
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream = openFileInput;
                        bu.bVS(inputStream);
                        throw th;
                    }
                }
            } catch (Exception e4) {
                e3 = e4;
                openFileInput = inputStream;
                e3.printStackTrace();
                bu.bVS(openFileInput);
                if (bVP != null) {
                    bcVar = new bc();
                    new bT().bXK(bcVar, bVP);
                    this.buK = bcVar;
                    this.buJ.bYx(bcVar);
                }
            } catch (Throwable th3) {
                th = th3;
                bu.bVS(inputStream);
                throw th;
            }
            if (bVP != null) {
                bcVar = new bc();
                new bT().bXK(bcVar, bVP);
                this.buK = bcVar;
                this.buJ.bYx(bcVar);
            }
        }
    }

    public void m1284d() {
        if (this.buK != null) {
            try {
                bu.bVQ(new File(this.buM.getFilesDir(), ".imprint"), new bG().bWg(this.buK));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
