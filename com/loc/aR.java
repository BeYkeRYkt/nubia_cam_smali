package com.loc;

import android.content.Context;
import android.os.Looper;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public abstract class aR {
    private int f177b;
    private ag bgk;
    private bk bgl;
    private cD bgm;

    protected aR(int i) {
        this.f177b = i;
    }

    private String m200a(Context context, String str) {
        try {
            return bZ.bEf(context, bv.m431a(str));
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private boolean m201b(String str) {
        if (this.bgm == null) {
            return false;
        }
        boolean bHe;
        try {
            bHe = this.bgm.bHe(str);
        } catch (Throwable th) {
            C1259s.bwd(th, "LogUpdateProcessor", "deleteLogData");
            bHe = false;
        }
        return bHe;
    }

    private boolean bAa(Context context, String str, String str2, String str3, bn bnVar) {
        cD bGZ;
        Throwable th;
        IOException e;
        C1228A c1228a;
        cD cDVar;
        OutputStream outputStream;
        OutputStream outputStream2;
        Object obj;
        Object obj2;
        C1228A c1228a2 = null;
        try {
            File file = new File(C1231D.m82a(context, str2));
            if (!file.exists()) {
                if (!file.mkdirs()) {
                    return false;
                }
            }
            bGZ = cD.bGZ(file, 1, 1, 20480);
            try {
                bGZ.bGY(bzX(bnVar));
                C1228A a = bGZ.m458a(str);
                if (a == null) {
                    try {
                        byte[] a2 = bv.m431a(str3);
                        bV b = bGZ.m460b(str);
                        OutputStream a3 = b.m371a(0);
                        try {
                            a3.write(a2);
                            b.m372a();
                            bGZ.m461b();
                            if (a3 != null) {
                                try {
                                    a3.close();
                                } catch (Throwable th2) {
                                    th2.printStackTrace();
                                }
                            }
                            if (a != null) {
                                try {
                                    a.close();
                                } catch (Throwable th22) {
                                    th22.printStackTrace();
                                }
                            }
                            if (!(bGZ == null || bGZ.m459a())) {
                                try {
                                    bGZ.close();
                                } catch (Throwable th222) {
                                    th222.printStackTrace();
                                }
                            }
                            return true;
                        } catch (IOException e2) {
                            e = e2;
                            c1228a = a;
                            cDVar = bGZ;
                            outputStream = a3;
                            c1228a2 = c1228a;
                            try {
                                e.printStackTrace();
                                if (outputStream != null) {
                                    try {
                                        outputStream.close();
                                    } catch (Throwable th2222) {
                                        th2222.printStackTrace();
                                    }
                                }
                                if (c1228a2 != null) {
                                    try {
                                        c1228a2.close();
                                    } catch (Throwable th22222) {
                                        th22222.printStackTrace();
                                    }
                                }
                                try {
                                    cDVar.close();
                                } catch (Throwable th222222) {
                                    th222222.printStackTrace();
                                }
                                return false;
                            } catch (Throwable th3) {
                                th222222 = th3;
                                cD cDVar2 = cDVar;
                                outputStream2 = outputStream;
                                bGZ = cDVar2;
                                if (outputStream2 != null) {
                                    try {
                                        outputStream2.close();
                                    } catch (Throwable th4) {
                                        th4.printStackTrace();
                                    }
                                }
                                if (c1228a2 != null) {
                                    try {
                                        c1228a2.close();
                                    } catch (Throwable th5) {
                                        th5.printStackTrace();
                                    }
                                }
                                try {
                                    bGZ.close();
                                } catch (Throwable th52) {
                                    th52.printStackTrace();
                                }
                                throw th222222;
                            }
                        } catch (Throwable th6) {
                            th222222 = th6;
                            c1228a = a;
                            outputStream2 = a3;
                            c1228a2 = c1228a;
                            if (outputStream2 != null) {
                                outputStream2.close();
                            }
                            if (c1228a2 != null) {
                                c1228a2.close();
                            }
                            bGZ.close();
                            throw th222222;
                        }
                    } catch (IOException e3) {
                        e = e3;
                        c1228a = a;
                        cDVar = bGZ;
                        obj = c1228a2;
                        c1228a2 = c1228a;
                        e.printStackTrace();
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        if (c1228a2 != null) {
                            c1228a2.close();
                        }
                        if (!(cDVar == null || cDVar.m459a())) {
                            cDVar.close();
                        }
                        return false;
                    } catch (Throwable th7) {
                        th222222 = th7;
                        c1228a = a;
                        obj2 = c1228a2;
                        c1228a2 = c1228a;
                        if (outputStream2 != null) {
                            outputStream2.close();
                        }
                        if (c1228a2 != null) {
                            c1228a2.close();
                        }
                        if (!(bGZ == null || bGZ.m459a())) {
                            bGZ.close();
                        }
                        throw th222222;
                    }
                }
                if (a != null) {
                    try {
                        a.close();
                    } catch (Throwable th2222222) {
                        th2222222.printStackTrace();
                    }
                }
                if (!(bGZ == null || bGZ.m459a())) {
                    try {
                        bGZ.close();
                    } catch (Throwable th22222222) {
                        th22222222.printStackTrace();
                    }
                }
                return false;
            } catch (IOException e4) {
                e = e4;
                cDVar = bGZ;
                obj = c1228a2;
                e.printStackTrace();
                if (outputStream != null) {
                    outputStream.close();
                }
                if (c1228a2 != null) {
                    c1228a2.close();
                }
                cDVar.close();
                return false;
            } catch (Throwable th8) {
                th22222222 = th8;
                obj2 = c1228a2;
                if (outputStream2 != null) {
                    outputStream2.close();
                }
                if (c1228a2 != null) {
                    c1228a2.close();
                }
                bGZ.close();
                throw th22222222;
            }
        } catch (IOException e5) {
            e = e5;
            cDVar = c1228a2;
            outputStream = c1228a2;
            e.printStackTrace();
            if (outputStream != null) {
                outputStream.close();
            }
            if (c1228a2 != null) {
                c1228a2.close();
            }
            cDVar.close();
            return false;
        } catch (Throwable th9) {
            th22222222 = th9;
            bGZ = c1228a2;
            outputStream2 = c1228a2;
            if (outputStream2 != null) {
                outputStream2.close();
            }
            if (c1228a2 != null) {
                c1228a2.close();
            }
            bGZ.close();
            throw th22222222;
        }
    }

    public static boolean bAb(String[] strArr, String str) {
        if (strArr == null || str == null) {
            return false;
        }
        try {
            String[] split = str.split("<br/>");
            for (CharSequence charSequence : strArr) {
                for (String str2 : split) {
                    if (str2.contains("at") && str2.contains(charSequence)) {
                        return true;
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return false;
    }

    private void bAc(bn bnVar, int i) {
        try {
            bAe(bnVar.bAS(2, C1231D.m81a(i)), bnVar, i);
        } catch (Throwable th) {
            C1259s.bwd(th, "LogProcessor", "processDeleteFail");
        }
    }

    private int bAd(String str) {
        int i = 1;
        int i2 = 0;
        try {
            byte[] bwL = C1248T.m112a().bwL(new bF(bv.bBn(bv.m431a(str))));
            if (bwL == null) {
                return 0;
            }
            try {
                JSONObject jSONObject = new JSONObject(bv.m428a(bwL));
                String str2 = "code";
                if (jSONObject.has(str2)) {
                    i2 = jSONObject.getInt(str2);
                }
            } catch (Throwable e) {
                C1259s.bwd(e, "LogProcessor", "processUpdate");
                i2 = i;
                return i2;
            }
            return i2;
        } catch (Throwable e2) {
            if (e2.m562b() == 27) {
                i = 0;
            }
            C1259s.bwd(e2, "LogProcessor", "processUpdate");
        }
    }

    private void bAe(List list, bn bnVar, int i) {
        if (list != null && list.size() > 0) {
            for (C1236a c1236a : list) {
                if (m201b(c1236a.m89b())) {
                    bnVar.bAP(c1236a.m89b(), c1236a.getClass());
                } else {
                    c1236a.m87a(2);
                    bnVar.bAU(c1236a);
                }
            }
        }
    }

    private String bAf(List list, Context context) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("{\"pinfo\":\"").append(m205f(context)).append("\",\"els\":[");
        Object obj = 1;
        Iterator it = list.iterator();
        while (true) {
            Object obj2 = obj;
            if (!it.hasNext()) {
                break;
            }
            C1236a c1236a = (C1236a) it.next();
            String bAg = bAg(c1236a.m89b());
            if (bAg == null) {
                obj = obj2;
            } else if ("".equals(bAg)) {
                obj = obj2;
            } else {
                String str = bAg + "||" + c1236a.m91c();
                if (obj2 == null) {
                    stringBuilder.append(",");
                } else {
                    obj2 = null;
                }
                stringBuilder.append("{\"log\":\"").append(str).append("\"}");
                obj = obj2;
            }
        }
        if (obj2 != null) {
            return null;
        }
        stringBuilder.append("]}");
        return stringBuilder.toString();
    }

    private String bAg(String str) {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        InputStream a;
        try {
            if (this.bgm == null) {
                return null;
            }
            C1228A a2 = this.bgm.m458a(str);
            if (a2 == null) {
                return null;
            }
            a = a2.m79a(0);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = a.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                    String a3 = bv.m428a(byteArrayOutputStream.toByteArray());
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Throwable e) {
                            C1259s.bwd(e, "LogProcessor", "readLog1");
                        }
                    }
                    if (a != null) {
                        try {
                            a.close();
                        } catch (Throwable e2) {
                            C1259s.bwd(e2, "LogProcessor", "readLog2");
                        }
                    }
                    return a3;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        C1259s.bwd(th, "LogProcessor", "readLog");
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Throwable th3) {
                                C1259s.bwd(th3, "LogProcessor", "readLog1");
                            }
                        }
                        if (a != null) {
                            try {
                                a.close();
                            } catch (Throwable th32) {
                                C1259s.bwd(th32, "LogProcessor", "readLog2");
                            }
                        }
                        return null;
                    } catch (Throwable th4) {
                        th32 = th4;
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Throwable e22) {
                                C1259s.bwd(e22, "LogProcessor", "readLog1");
                            }
                        }
                        if (a != null) {
                            try {
                                a.close();
                            } catch (Throwable e222) {
                                C1259s.bwd(e222, "LogProcessor", "readLog2");
                            }
                        }
                        throw th32;
                    }
                }
            } catch (Throwable th5) {
                th32 = th5;
                byteArrayOutputStream = null;
                if (byteArrayOutputStream != null) {
                    byteArrayOutputStream.close();
                }
                if (a != null) {
                    a.close();
                }
                throw th32;
            }
        } catch (Throwable th6) {
            th32 = th6;
            byteArrayOutputStream = null;
            a = null;
            if (byteArrayOutputStream != null) {
                byteArrayOutputStream.close();
            }
            if (a != null) {
                a.close();
            }
            throw th32;
        }
    }

    private cD bAh(Context context, String str) {
        cD bGZ;
        try {
            File file = new File(C1231D.m82a(context, str));
            if (!file.exists() && !file.mkdirs()) {
                return null;
            }
            bGZ = cD.bGZ(file, 1, 1, 20480);
            return bGZ;
        } catch (Throwable e) {
            C1259s.bwd(e, "LogProcessor", "initDiskLru");
            bGZ = null;
            return bGZ;
        } catch (Throwable e2) {
            C1259s.bwd(e2, "LogProcessor", "initDiskLru");
            bGZ = null;
            return bGZ;
        }
    }

    public static String bAi(Throwable th) {
        String a = bv.m427a(th);
        return a == null ? null : a.replaceAll("\n", "<br/>");
    }

    private void bzW(bn bnVar, String str, String str2, int i, boolean z) {
        C1236a bwm = C1231D.bwm(i);
        bwm.m87a(0);
        bwm.m90b(str);
        bwm.m88a(str2);
        bnVar.bAT(bwm);
    }

    private String bzY(String str, String str2, String str3, int i, String str4, String str5) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str2).append(",").append("\"timestamp\":\"");
        stringBuffer.append(str3);
        stringBuffer.append("\",\"et\":\"");
        stringBuffer.append(i);
        stringBuffer.append("\",\"classname\":\"");
        stringBuffer.append(str4);
        stringBuffer.append("\",");
        stringBuffer.append("\"detail\":\"");
        stringBuffer.append(str5);
        stringBuffer.append("\"");
        return stringBuffer.toString();
    }

    private String bzZ(Throwable th) {
        return th.toString();
    }

    private String m202d() {
        return bv.m426a(new Date().getTime());
    }

    private void m203d(Context context) {
        try {
            this.bgm = bAh(context, m206a());
        } catch (Throwable th) {
            C1259s.bwd(th, "LogProcessor", "LogUpDateProcessor");
        }
    }

    private List m204e(Context context) {
        List list = null;
        try {
            synchronized (Looper.getMainLooper()) {
                list = new aY(context, false).m218a();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return list;
    }

    private String m205f(Context context) {
        String b;
        try {
            b = bZ.m395b(context);
            if ("".equals(b)) {
                return null;
            }
            b = bZ.bDY(context, bv.m431a(b));
            return b;
        } catch (Throwable th) {
            C1259s.bwd(th, "LogProcessor", "getPublicInfo");
            b = null;
        }
    }

    protected String m206a() {
        return C1231D.bwn(this.f177b);
    }

    protected String mo938a(String str) {
        return bU.bDD(str);
    }

    protected String m208a(Throwable th) {
        String str = null;
        try {
            str = bAi(th);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return str;
    }

    protected abstract String mo939a(List list);

    protected abstract boolean mo940a(Context context);

    protected int m211b() {
        return this.f177b;
    }

    void m212b(Context context) {
        List e = m204e(context);
        if (e != null && e.size() != 0) {
            String a = mo939a(e);
            if (a != null && !"".equals(a)) {
                String d = m202d();
                String bEg = bZ.bEg(context, this.bgk);
                int b = m211b();
                String bzY = bzY(C1241M.m94a(context), bEg, d, b, "ANR", a);
                if (bzY != null && !"".equals(bzY)) {
                    String a2 = mo938a(a);
                    String a3 = m200a(context, bzY);
                    String a4 = m206a();
                    synchronized (Looper.getMainLooper()) {
                        bn bnVar = new bn(context);
                        bzW(bnVar, this.bgk.m239a(), a2, b, bAa(context, a2, a4, a3, bnVar));
                    }
                }
            }
        }
    }

    void bzT(ag agVar, Context context, Throwable th, String str, String str2, String str3) {
        bzV(agVar);
        String d = m202d();
        String bEg = bZ.bEg(context, agVar);
        String a = C1241M.m94a(context);
        String bzZ = bzZ(th);
        if (bzZ != null && !"".equals(bzZ)) {
            int b = m211b();
            StringBuilder stringBuilder = new StringBuilder();
            if (str2 != null) {
                stringBuilder.append("class:").append(str2);
            }
            if (str3 != null) {
                stringBuilder.append(" method:").append(str3).append("$").append("<br/>");
            }
            stringBuilder.append(str);
            String a2 = mo938a(str);
            String bzY = bzY(a, bEg, d, b, bzZ, stringBuilder.toString());
            if (bzY != null && !"".equals(bzY)) {
                String a3 = m200a(context, bzY);
                String a4 = m206a();
                synchronized (Looper.getMainLooper()) {
                    bn bnVar = new bn(context);
                    bzW(bnVar, agVar.m239a(), a2, b, bAa(context, a2, a4, a3, bnVar));
                }
            }
        }
    }

    void bzU(Context context, Throwable th, String str, String str2) {
        List<ag> e = m204e(context);
        if (e != null && e.size() != 0) {
            String a = m208a(th);
            if (a != null && !"".equals(a)) {
                for (ag agVar : e) {
                    if (bAb(agVar.m244e(), a)) {
                        bzT(agVar, context, th, a, str, str2);
                        return;
                    }
                }
                if (a.contains("com.amap.api.col")) {
                    try {
                        bzT(new cx("collection", "1.0", "AMap_collection_1.0").bGL(new String[]{"com.amap.api.collection"}).m546a(), context, th, a, str, str2);
                    } catch (C1264i e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
    }

    protected void bzV(ag agVar) {
        this.bgk = agVar;
    }

    protected bk bzX(bn bnVar) {
        try {
            if (this.bgl == null) {
                this.bgl = new C1260c(this, bnVar);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return this.bgl;
    }

    void m213c() {
        try {
            if (this.bgm != null && !this.bgm.m459a()) {
                this.bgm.close();
            }
        } catch (Throwable e) {
            C1259s.bwd(e, "LogProcessor", "closeDiskLru");
        } catch (Throwable e2) {
            C1259s.bwd(e2, "LogProcessor", "closeDiskLru");
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void m214c(android.content.Context r6) {
        /*
        r5 = this;
        r5.m203d(r6);	 Catch:{ Throwable -> 0x004e }
        r0 = r5.mo940a(r6);	 Catch:{ Throwable -> 0x004e }
        if (r0 == 0) goto L_0x002b;
    L_0x0009:
        r1 = android.os.Looper.getMainLooper();	 Catch:{ Throwable -> 0x004e }
        monitor-enter(r1);	 Catch:{ Throwable -> 0x004e }
        r0 = new com.loc.bn;	 Catch:{ all -> 0x004b }
        r0.<init>(r6);	 Catch:{ all -> 0x004b }
        r2 = r5.m211b();	 Catch:{ all -> 0x004b }
        r5.bAc(r0, r2);	 Catch:{ all -> 0x004b }
        r2 = 0;
        r3 = r5.m211b();	 Catch:{ all -> 0x004b }
        r3 = com.loc.C1231D.m81a(r3);	 Catch:{ all -> 0x004b }
        r2 = r0.bAS(r2, r3);	 Catch:{ all -> 0x004b }
        if (r2 != 0) goto L_0x002c;
    L_0x0029:
        monitor-exit(r1);	 Catch:{ all -> 0x004b }
        return;
    L_0x002b:
        return;
    L_0x002c:
        r3 = r2.size();	 Catch:{ all -> 0x004b }
        if (r3 == 0) goto L_0x0029;
    L_0x0032:
        r3 = r5.bAf(r2, r6);	 Catch:{ all -> 0x004b }
        if (r3 == 0) goto L_0x0041;
    L_0x0038:
        r3 = r5.bAd(r3);	 Catch:{ all -> 0x004b }
        r4 = 1;
        if (r3 == r4) goto L_0x0043;
    L_0x003f:
        monitor-exit(r1);	 Catch:{ all -> 0x004b }
    L_0x0040:
        return;
    L_0x0041:
        monitor-exit(r1);	 Catch:{ all -> 0x004b }
        return;
    L_0x0043:
        r3 = r5.m211b();	 Catch:{ all -> 0x004b }
        r5.bAe(r2, r0, r3);	 Catch:{ all -> 0x004b }
        goto L_0x003f;
    L_0x004b:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x004b }
        throw r0;	 Catch:{ Throwable -> 0x004e }
    L_0x004e:
        r0 = move-exception;
        r1 = "LogProcessor";
        r2 = "processUpdateLog";
        com.loc.C1259s.bwd(r0, r1, r2);
        goto L_0x0040;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.aR.c(android.content.Context):void");
    }
}
