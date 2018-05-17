package com.loc;

import java.io.ByteArrayOutputStream;
import java.security.Key;
import java.security.KeyFactory;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.PKCS8EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class ak {
    private static final byte[] f218b = new byte[]{(byte) 0, (byte) 1, (byte) 1, (byte) 2, (byte) 3, (byte) 5, (byte) 8, (byte) 13, (byte) 8, (byte) 7, (byte) 6, (byte) 5, (byte) 4, (byte) 3, (byte) 2, (byte) 1};
    private static final char[] bfh = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final IvParameterSpec bfi = new IvParameterSpec(f218b);

    public static String m247a(String str) {
        if (str != null) {
            try {
                if (str.length() != 0) {
                    return m248a("MD5", m248a("SHA1", str) + str);
                }
            } catch (Throwable th) {
                bx.bBw(th, "Encrypt", "generatorKey");
                return null;
            }
        }
        return null;
    }

    public static String m248a(String str, String str2) {
        if (str2 == null) {
            return null;
        }
        try {
            return m252b(bU.bDE(str2.getBytes("UTF-8"), str));
        } catch (Throwable th) {
            bx.bBw(th, "Encrypt", "encode");
            return null;
        }
    }

    public static String m249a(byte[] bArr) {
        try {
            Object obj = new byte[16];
            Object obj2 = new byte[(bArr.length - 16)];
            System.arraycopy(bArr, 0, obj, 0, 16);
            System.arraycopy(bArr, 16, obj2, 0, bArr.length - 16);
            Key secretKeySpec = new SecretKeySpec(obj, "AES");
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
            instance.init(2, secretKeySpec, new IvParameterSpec(bv.m430a()));
            return new String(instance.doFinal(obj2), "UTF-8");
        } catch (Throwable th) {
            bx.bBw(th, "Encrypt", "decryptRsponse");
            return null;
        }
    }

    private static byte[] m250a() {
        return bv.m430a();
    }

    public static byte[] m251a(byte[] bArr, byte[] bArr2) {
        Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
        instance.init(2, new SecretKeySpec(bArr, "AES"), bfi);
        return instance.doFinal(bArr2);
    }

    private static String m252b(byte[] bArr) {
        int length = bArr.length;
        StringBuilder stringBuilder = new StringBuilder(length * 2);
        for (int i = 0; i < length; i++) {
            stringBuilder.append(bfh[(bArr[i] >> 4) & 15]);
            stringBuilder.append(bfh[bArr[i] & 15]);
        }
        return stringBuilder.toString();
    }

    private static SecretKeySpec m253b(String str) {
        byte[] bytes;
        if (str == null) {
            str = "";
        }
        StringBuffer stringBuffer = new StringBuffer(16);
        stringBuffer.append(str);
        while (stringBuffer.length() < 16) {
            stringBuffer.append("0");
        }
        if (stringBuffer.length() > 16) {
            stringBuffer.setLength(16);
        }
        try {
            bytes = stringBuffer.toString().getBytes("UTF-8");
        } catch (Throwable th) {
            bx.bBw(th, "Encrypt", "createKey");
            bytes = null;
        }
        return new SecretKeySpec(bytes, "AES");
    }

    public static synchronized byte[] bya(byte[] bArr, String str) {
        byte[] doFinal;
        int i = 0;
        synchronized (ak.class) {
            Key generatePrivate = KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(cz.m552b(str)));
            Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            instance.init(1, generatePrivate);
            int length = bArr.length;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            int i2 = 0;
            while (length - i > 0) {
                doFinal = length - i <= 245 ? instance.doFinal(bArr, i, length - i) : instance.doFinal(bArr, i, 245);
                byteArrayOutputStream.write(doFinal, 0, doFinal.length);
                i = i2 + 1;
                int i3 = i;
                i *= 245;
                i2 = i3;
            }
            doFinal = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
        }
        return doFinal;
    }

    public static synchronized byte[] byb(byte[] bArr, String str) {
        byte[] doFinal;
        int i = 0;
        synchronized (ak.class) {
            Key generatePrivate = KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(cz.m552b(str)));
            Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            instance.init(2, generatePrivate);
            int length = bArr.length;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            int i2 = 0;
            while (length - i > 0) {
                doFinal = length - i <= 256 ? instance.doFinal(bArr, i, length - i) : instance.doFinal(bArr, i, 256);
                byteArrayOutputStream.write(doFinal, 0, doFinal.length);
                i = i2 + 1;
                int i3 = i;
                i *= 256;
                i2 = i3;
            }
            doFinal = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
        }
        return doFinal;
    }

    public static byte[] byc(byte[] bArr, String str) {
        Cipher instance;
        try {
            Key b = m253b(str);
            AlgorithmParameterSpec ivParameterSpec = new IvParameterSpec(m250a());
            instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
            instance.init(1, b, ivParameterSpec);
        } catch (Throwable e) {
            bx.bBw(e, "Encrypt", "aesEncrypt1");
        } catch (Throwable e2) {
            bx.bBw(e2, "Encrypt", "aesEncrypt");
            return null;
        }
        return instance.doFinal(bArr);
    }

    public static byte[] byd(byte[] bArr, String str) {
        Cipher instance;
        try {
            Key b = m253b(str);
            AlgorithmParameterSpec ivParameterSpec = new IvParameterSpec(m250a());
            instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
            instance.init(2, b, ivParameterSpec);
        } catch (Throwable e) {
            bx.bBw(e, "Encrypt", "aesDecrypt1");
        } catch (Throwable e2) {
            bx.bBw(e2, "Encrypt", "aesDecrypt");
            return null;
        }
        return instance.doFinal(bArr);
    }
}
