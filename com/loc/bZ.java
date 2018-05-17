package com.loc;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.security.Key;
import javax.crypto.KeyGenerator;

public class bZ {
    public static String m392a() {
        String str = null;
        try {
            str = String.valueOf(System.currentTimeMillis());
            int length = str.length();
            str = str.substring(0, length - 2) + "1" + str.substring(length - 1);
        } catch (Throwable th) {
            C1259s.bwd(th, "CInfo", "getTS");
        }
        return str;
    }

    public static String m393a(Context context) {
        try {
            cj cjVar = new cj();
            cjVar.f374a = cn.bFT(context);
            String f = cn.m526f(context);
            if (f == null) {
                f = "";
            }
            cjVar.f376c = f;
            cjVar.f377d = C1241M.m98c(context);
            cjVar.f381h = C1241M.m96b(context);
            cjVar.f382i = C1241M.m99d(context);
            cjVar.f383j = String.valueOf(VERSION.SDK_INT);
            cjVar.f386m = cn.bFP(context) + "";
            cjVar.f387n = cn.bFO(context) + "";
            cjVar.f389p = cn.bFN(context);
            return bEa(context, cjVar);
        } catch (Throwable th) {
            C1259s.bwd(th, "CInfo", "InitXInfo");
            return null;
        }
    }

    public static String m394a(Context context, String str, String str2) {
        try {
            return bU.m369b(C1241M.m100e(context) + ":" + str.substring(0, str.length() - 3) + ":" + str2);
        } catch (Throwable th) {
            C1259s.bwd(th, "CInfo", "Scode");
            return null;
        }
    }

    public static String m395b(Context context) {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            stringBuilder.append("\"key\":\"").append(C1241M.m101f(context)).append("\",\"platform\":\"android\",\"diu\":\"").append(cn.bFT(context)).append("\",\"pkg\":\"").append(C1241M.m98c(context)).append("\",\"model\":\"").append(Build.MODEL).append("\",\"appname\":\"").append(C1241M.m96b(context)).append("\",\"appversion\":\"").append(C1241M.m99d(context)).append("\",\"sysversion\":\"").append(VERSION.RELEASE).append("\",");
        } catch (Throwable th) {
            C1259s.bwd(th, "CInfo", "getPublicJSONInfo");
        }
        return stringBuilder.toString();
    }

    public static byte[] bDW(Context context, byte[] bArr) {
        KeyGenerator instance = KeyGenerator.getInstance("AES");
        if (instance == null) {
            return null;
        }
        instance.init(256);
        byte[] encoded = instance.generateKey().getEncoded();
        Key a = bv.m429a(context);
        if (a == null) {
            return null;
        }
        Object bGV = cz.bGV(encoded, a);
        Object a2 = cz.m550a(encoded, bArr);
        Object obj = new byte[(bGV.length + a2.length)];
        System.arraycopy(bGV, 0, obj, 0, bGV.length);
        System.arraycopy(a2, 0, obj, bGV.length, a2.length);
        return obj;
    }

    public static byte[] bDX(Context context, boolean z) {
        try {
            return bEb(context, bEh(context, z));
        } catch (Throwable th) {
            C1259s.bwd(th, "CInfo", "getGZipXInfo");
            return null;
        }
    }

    public static String bDY(Context context, byte[] bArr) {
        try {
            return bEd(context, bArr);
        } catch (Throwable th) {
            C1259s.bwd(th, "CInfo", "AESData");
            return "";
        }
    }

    public static byte[] bDZ(Context context, byte[] bArr) {
        Key a = bv.m429a(context);
        if (bArr.length <= 117) {
            return cz.bGV(bArr, a);
        }
        Object obj = new byte[117];
        System.arraycopy(bArr, 0, obj, 0, 117);
        obj = cz.bGV(obj, a);
        Object obj2 = new byte[((bArr.length + 128) - 117)];
        System.arraycopy(obj, 0, obj2, 0, 128);
        System.arraycopy(bArr, 117, obj2, 128, bArr.length - 117);
        return obj2;
    }

    private static String bEa(Context context, cj cjVar) {
        return cz.m549a(bEb(context, cjVar));
    }

    private static byte[] bEb(Context context, cj cjVar) {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                bEe(byteArrayOutputStream, cjVar.f374a);
                bEe(byteArrayOutputStream, cjVar.f375b);
                bEe(byteArrayOutputStream, cjVar.f376c);
                bEe(byteArrayOutputStream, cjVar.f377d);
                bEe(byteArrayOutputStream, cjVar.f378e);
                bEe(byteArrayOutputStream, cjVar.f379f);
                bEe(byteArrayOutputStream, cjVar.f380g);
                bEe(byteArrayOutputStream, cjVar.f381h);
                bEe(byteArrayOutputStream, cjVar.f382i);
                bEe(byteArrayOutputStream, cjVar.f383j);
                bEe(byteArrayOutputStream, cjVar.f384k);
                bEe(byteArrayOutputStream, cjVar.f385l);
                bEe(byteArrayOutputStream, cjVar.f386m);
                bEe(byteArrayOutputStream, cjVar.f387n);
                bEe(byteArrayOutputStream, cjVar.f388o);
                bEe(byteArrayOutputStream, cjVar.f389p);
                bEe(byteArrayOutputStream, cjVar.f390q);
                bEe(byteArrayOutputStream, cjVar.f391r);
                bEe(byteArrayOutputStream, cjVar.f392s);
                bEe(byteArrayOutputStream, cjVar.f393t);
                byte[] bEc = bEc(context, byteArrayOutputStream);
                if (byteArrayOutputStream != null) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                }
                return bEc;
            } catch (Throwable th3) {
                th = th3;
                try {
                    C1259s.bwd(th, "CInfo", "InitXInfo");
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Throwable th4) {
                            th4.printStackTrace();
                        }
                    }
                    return null;
                } catch (Throwable th5) {
                    th4 = th5;
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Throwable th22) {
                            th22.printStackTrace();
                        }
                    }
                    throw th4;
                }
            }
        } catch (Throwable th6) {
            th4 = th6;
            byteArrayOutputStream = null;
            if (byteArrayOutputStream != null) {
                byteArrayOutputStream.close();
            }
            throw th4;
        }
    }

    private static byte[] bEc(Context context, ByteArrayOutputStream byteArrayOutputStream) {
        return bDZ(context, bv.m433b(byteArrayOutputStream.toByteArray()));
    }

    static String bEd(Context context, byte[] bArr) {
        byte[] b = bv.m433b(bDW(context, bArr));
        return b == null ? "" : cz.m549a(b);
    }

    public static void bEe(ByteArrayOutputStream byteArrayOutputStream, String str) {
        if (TextUtils.isEmpty(str)) {
            bv.bBj(byteArrayOutputStream, (byte) 0, new byte[0]);
        } else {
            bv.bBj(byteArrayOutputStream, str.getBytes().length <= 255 ? (byte) str.getBytes().length : (byte) -1, bv.m431a(str));
        }
    }

    public static String bEf(Context context, byte[] bArr) {
        try {
            return bEd(context, bArr);
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static String bEg(Context context, ag agVar) {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            stringBuilder.append("\"sim\":\"").append(cn.m525e(context)).append("\",\"sdkversion\":\"").append(agVar.m241b()).append("\",\"product\":\"").append(agVar.m239a()).append("\",\"ed\":\"").append(agVar.m242c()).append("\",\"nt\":\"").append(cn.m523c(context)).append("\",\"np\":\"").append(cn.m515a(context)).append("\",\"mnc\":\"").append(cn.m521b(context)).append("\",\"ant\":\"").append(cn.m524d(context)).append("\"");
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return stringBuilder.toString();
    }

    private static cj bEh(Context context, boolean z) {
        cj cjVar = new cj();
        cjVar.f374a = cn.bFT(context);
        cjVar.f375b = cn.bFL(context);
        String f = cn.m526f(context);
        if (f == null) {
            f = "";
        }
        cjVar.f376c = f;
        cjVar.f377d = C1241M.m98c(context);
        cjVar.f378e = Build.MODEL;
        cjVar.f379f = Build.MANUFACTURER;
        cjVar.f380g = Build.DEVICE;
        cjVar.f381h = C1241M.m96b(context);
        cjVar.f382i = C1241M.m99d(context);
        cjVar.f383j = String.valueOf(VERSION.SDK_INT);
        cjVar.f384k = cn.bFU(context);
        cjVar.f385l = cn.bFS(context);
        cjVar.f386m = cn.bFP(context) + "";
        cjVar.f387n = cn.bFO(context) + "";
        cjVar.f388o = cn.bFV(context);
        cjVar.f389p = cn.bFN(context);
        cjVar.f390q = !z ? cn.bFK(context) : "";
        cjVar.f391r = !z ? cn.m527g(context) : "";
        if (z) {
            cjVar.f392s = "";
            f = "";
        } else {
            String[] bFM = cn.bFM(context);
            cjVar.f392s = bFM[0];
            f = bFM[1];
        }
        cjVar.f393t = f;
        return cjVar;
    }
}
