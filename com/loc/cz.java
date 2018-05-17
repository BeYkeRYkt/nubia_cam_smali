package com.loc;

import java.io.ByteArrayOutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class cz {
    private static final byte[] f429b = new byte[128];
    private static final char[] blx = new char[]{'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

    static {
        int i = 0;
        int i2 = 48;
        while (i < 128) {
            f429b[i] = (byte) -1;
            i++;
        }
        for (i = 65; i <= 90; i++) {
            f429b[i] = (byte) ((byte) (i - 65));
        }
        for (i = 97; i <= 122; i++) {
            f429b[i] = (byte) ((byte) ((i - 97) + 26));
        }
        while (i2 <= 57) {
            f429b[i2] = (byte) ((byte) ((i2 - 48) + 52));
            i2++;
        }
        f429b[43] = (byte) 62;
        f429b[47] = (byte) 63;
    }

    public static String m548a(String str) {
        return bv.m428a(m552b(str));
    }

    public static String m549a(byte[] bArr) {
        try {
            return bGW(bArr);
        } catch (Throwable th) {
            C1259s.bwd(th, "Encrypt", "encodeBase64");
            return null;
        }
    }

    static byte[] m550a(byte[] bArr, byte[] bArr2) {
        try {
            return m553b(bArr, bArr2);
        } catch (Throwable th) {
            C1259s.bwd(th, "Encrypt", "aesEncrypt");
            return null;
        }
    }

    public static String m551b(byte[] bArr) {
        try {
            return bGW(bArr);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static byte[] m552b(String str) {
        int i = 0;
        if (str == null) {
            return new byte[0];
        }
        byte[] a = bv.m431a(str);
        int length = a.length;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(length);
        while (i < length) {
            while (true) {
                int i2 = i + 1;
                byte b = f429b[a[i]];
                if (i2 < length && b == (byte) -1) {
                    i = i2;
                }
            }
            if (b == (byte) -1) {
                break;
            }
            while (true) {
                i = i2 + 1;
                byte b2 = f429b[a[i2]];
                if (i < length && b2 == (byte) -1) {
                    i2 = i;
                }
            }
            if (b2 == (byte) -1) {
                break;
            }
            byteArrayOutputStream.write((b << 2) | ((b2 & 48) >>> 4));
            while (true) {
                i2 = i + 1;
                byte b3 = a[i];
                if (b3 == (byte) 61) {
                    return byteArrayOutputStream.toByteArray();
                }
                b = f429b[b3];
                if (i2 < length && b == (byte) -1) {
                    i = i2;
                }
            }
            if (b == (byte) -1) {
                break;
            }
            byteArrayOutputStream.write(((b2 & 15) << 4) | ((b & 60) >>> 2));
            while (true) {
                i = i2 + 1;
                byte b4 = a[i2];
                if (b4 == (byte) 61) {
                    return byteArrayOutputStream.toByteArray();
                }
                b4 = f429b[b4];
                if (i < length && b4 == (byte) -1) {
                    i2 = i;
                }
            }
            if (b4 == (byte) -1) {
                break;
            }
            byteArrayOutputStream.write(b4 | ((b & 3) << 6));
        }
        return byteArrayOutputStream.toByteArray();
    }

    private static byte[] m553b(byte[] bArr, byte[] bArr2) {
        AlgorithmParameterSpec ivParameterSpec = new IvParameterSpec(bv.m430a());
        Key secretKeySpec = new SecretKeySpec(bArr, "AES");
        Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
        try {
            instance.init(1, secretKeySpec, ivParameterSpec);
        } catch (InvalidAlgorithmParameterException e) {
            e.printStackTrace();
        }
        return instance.doFinal(bArr2);
    }

    static byte[] bGV(byte[] bArr, Key key) {
        Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        instance.init(1, key);
        return instance.doFinal(bArr);
    }

    private static String bGW(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            int i3 = bArr[i] & 255;
            if (i2 == length) {
                stringBuffer.append(blx[i3 >>> 2]);
                stringBuffer.append(blx[(i3 & 3) << 4]);
                stringBuffer.append("==");
                break;
            }
            int i4 = i2 + 1;
            i2 = bArr[i2] & 255;
            if (i4 == length) {
                stringBuffer.append(blx[i3 >>> 2]);
                stringBuffer.append(blx[((i3 & 3) << 4) | ((i2 & 240) >>> 4)]);
                stringBuffer.append(blx[(i2 & 15) << 2]);
                stringBuffer.append("=");
                break;
            }
            i = i4 + 1;
            i4 = bArr[i4] & 255;
            stringBuffer.append(blx[i3 >>> 2]);
            stringBuffer.append(blx[((i3 & 3) << 4) | ((i2 & 240) >>> 4)]);
            stringBuffer.append(blx[((i2 & 15) << 2) | ((i4 & 192) >>> 6)]);
            stringBuffer.append(blx[i4 & 63]);
        }
        return stringBuffer.toString();
    }
}
