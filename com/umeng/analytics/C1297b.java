package com.umeng.analytics;

import java.security.MessageDigest;
import java.util.Locale;
import java.util.Random;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import p043u.aly.C1350O;

public class C1297b {
    private static final byte[] f557a = new byte[]{(byte) 10, (byte) 1, (byte) 11, (byte) 5, (byte) 4, (byte) 15, (byte) 7, (byte) 9, (byte) 23, (byte) 3, (byte) 1, (byte) 6, (byte) 8, (byte) 12, (byte) 13, (byte) 91};

    public static byte[] m609a(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length % 2 != 0) {
            return null;
        }
        byte[] bArr = new byte[(length / 2)];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((byte) Integer.valueOf(str.substring(i, i + 2), 16).intValue());
        }
        return bArr;
    }

    public static String m608a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < bArr.length; i++) {
            stringBuffer.append(String.format("%02X", new Object[]{Byte.valueOf(bArr[i])}));
        }
        return stringBuffer.toString().toLowerCase(Locale.US);
    }

    public static byte[] m611b(byte[] bArr) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.reset();
            instance.update(bArr);
            return instance.digest();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] m610a(byte[] bArr, byte[] bArr2) {
        Cipher instance = Cipher.getInstance("AES/CBC/PKCS7Padding");
        instance.init(1, new SecretKeySpec(bArr2, "AES"), new IvParameterSpec(f557a));
        return instance.doFinal(bArr);
    }

    public static byte[] m612b(byte[] bArr, byte[] bArr2) {
        Cipher instance = Cipher.getInstance("AES/CBC/PKCS7Padding");
        instance.init(2, new SecretKeySpec(bArr2, "AES"), new IvParameterSpec(f557a));
        return instance.doFinal(bArr);
    }

    public static int m607a(int i, String str) {
        int i2;
        if (((double) new Random().nextFloat()) < 0.001d) {
            if (str == null) {
                C1350O.m787b("--->", "null signature..");
            }
            i2 = 0;
            try {
                i2 = Integer.parseInt(str.substring(9, 11), 16);
            } catch (Exception e) {
            }
            return (i2 | 128) * 1000;
        }
        i2 = new Random().nextInt(i);
        if (i2 > 255000 || i2 < 128000) {
            return i2;
        }
        return 127000;
    }
}
