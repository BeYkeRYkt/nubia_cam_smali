package com.loc;

import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;

public class bU {
    public static String m367a(String str) {
        FileInputStream fileInputStream;
        Throwable th;
        FileInputStream fileInputStream2 = null;
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            File file = new File(str);
            if (!file.isFile() || !file.exists()) {
                return null;
            }
            byte[] bArr = new byte[2048];
            MessageDigest instance = MessageDigest.getInstance("MD5");
            fileInputStream = new FileInputStream(file);
            while (true) {
                try {
                    int read = fileInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    instance.update(bArr, 0, read);
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            String bBo = bv.bBo(instance.digest());
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (Throwable e) {
                    C1259s.bwd(e, "MD5", "getMd5FromFile");
                }
            }
            return bBo;
        } catch (Throwable th3) {
            th = th3;
            if (fileInputStream2 != null) {
                fileInputStream2.close();
            }
            throw th;
        }
    }

    public static String m368a(byte[] bArr) {
        return bv.bBo(m370b(bArr));
    }

    public static String m369b(String str) {
        return str != null ? bv.bBo(bDF(str)) : null;
    }

    private static byte[] m370b(byte[] bArr) {
        return bDE(bArr, "MD5");
    }

    public static String bDD(String str) {
        return bv.bBp(bDG(str));
    }

    public static byte[] bDE(byte[] bArr, String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance(str);
            instance.update(bArr);
            return instance.digest();
        } catch (Throwable th) {
            C1259s.bwd(th, "MD5", "getMd5Bytes1");
            return null;
        }
    }

    public static byte[] bDF(String str) {
        try {
            return bDH(str);
        } catch (Throwable th) {
            C1259s.bwd(th, "MD5", "getMd5Bytes");
            return new byte[0];
        }
    }

    private static byte[] bDG(String str) {
        try {
            return bDH(str);
        } catch (Throwable th) {
            th.printStackTrace();
            return new byte[0];
        }
    }

    private static byte[] bDH(String str) {
        if (str == null) {
            return null;
        }
        MessageDigest instance = MessageDigest.getInstance("MD5");
        instance.update(bv.m431a(str));
        return instance.digest();
    }
}
