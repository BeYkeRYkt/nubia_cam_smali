package com.loc;

import android.content.Context;
import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.spec.X509EncodedKeySpec;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.zip.GZIPOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.json.JSONObject;

public class bv {
    public static String m426a(long j) {
        try {
            return new SimpleDateFormat("yyyyMMdd HH:mm:ss:SSS", Locale.CHINA).format(new Date(j));
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static String m427a(Throwable th) {
        Writer stringWriter;
        PrintWriter printWriter;
        Throwable cause;
        try {
            stringWriter = new StringWriter();
            try {
                printWriter = new PrintWriter(stringWriter);
                try {
                    th.printStackTrace(printWriter);
                    for (cause = th.getCause(); cause != null; cause = cause.getCause()) {
                        cause.printStackTrace(printWriter);
                    }
                    String obj = stringWriter.toString();
                    if (stringWriter != null) {
                        try {
                            stringWriter.close();
                        } catch (Throwable th2) {
                            th2.printStackTrace();
                        }
                    }
                    if (printWriter != null) {
                        try {
                            printWriter.close();
                        } catch (Throwable th3) {
                            th3.printStackTrace();
                        }
                    }
                    return obj;
                } catch (Throwable th4) {
                    cause = th4;
                    try {
                        cause.printStackTrace();
                        if (stringWriter != null) {
                            try {
                                stringWriter.close();
                            } catch (Throwable cause2) {
                                cause2.printStackTrace();
                            }
                        }
                        if (printWriter != null) {
                            try {
                                printWriter.close();
                            } catch (Throwable cause22) {
                                cause22.printStackTrace();
                            }
                        }
                        return null;
                    } catch (Throwable th5) {
                        cause22 = th5;
                        if (stringWriter != null) {
                            try {
                                stringWriter.close();
                            } catch (Throwable th22) {
                                th22.printStackTrace();
                            }
                        }
                        if (printWriter != null) {
                            try {
                                printWriter.close();
                            } catch (Throwable th32) {
                                th32.printStackTrace();
                            }
                        }
                        throw cause22;
                    }
                }
            } catch (Throwable th6) {
                cause22 = th6;
                printWriter = null;
                if (stringWriter != null) {
                    stringWriter.close();
                }
                if (printWriter != null) {
                    printWriter.close();
                }
                throw cause22;
            }
        } catch (Throwable th7) {
            cause22 = th7;
            printWriter = null;
            stringWriter = null;
            if (stringWriter != null) {
                stringWriter.close();
            }
            if (printWriter != null) {
                printWriter.close();
            }
            throw cause22;
        }
    }

    public static String m428a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            return new String(bArr);
        }
    }

    static PublicKey m429a(Context context) {
        Throwable th;
        InputStream byteArrayInputStream;
        try {
            byteArrayInputStream = new ByteArrayInputStream(new byte[]{(byte) 48, (byte) -126, (byte) 2, (byte) -98, (byte) 48, (byte) -126, (byte) 2, (byte) 7, (byte) -96, (byte) 3, (byte) 2, (byte) 1, (byte) 2, (byte) 2, (byte) 9, (byte) 0, (byte) -99, (byte) 15, (byte) 119, (byte) 58, (byte) 44, (byte) -19, (byte) -105, (byte) -40, (byte) 48, (byte) 13, (byte) 6, (byte) 9, (byte) 42, (byte) -122, (byte) 72, (byte) -122, (byte) -9, (byte) 13, (byte) 1, (byte) 1, (byte) 5, (byte) 5, (byte) 0, (byte) 48, (byte) 104, (byte) 49, (byte) 11, (byte) 48, (byte) 9, (byte) 6, (byte) 3, (byte) 85, (byte) 4, (byte) 6, (byte) 19, (byte) 2, (byte) 67, (byte) 78, (byte) 49, (byte) 19, (byte) 48, (byte) 17, (byte) 6, (byte) 3, (byte) 85, (byte) 4, (byte) 8, (byte) 12, (byte) 10, (byte) 83, (byte) 111, (byte) 109, (byte) 101, (byte) 45, (byte) 83, (byte) 116, (byte) 97, (byte) 116, (byte) 101, (byte) 49, (byte) 16, (byte) 48, (byte) 14, (byte) 6, (byte) 3, (byte) 85, (byte) 4, (byte) 7, (byte) 12, (byte) 7, (byte) 66, (byte) 101, (byte) 105, (byte) 106, (byte) 105, (byte) 110, (byte) 103, (byte) 49, (byte) 17, (byte) 48, (byte) 15, (byte) 6, (byte) 3, (byte) 85, (byte) 4, (byte) 10, (byte) 12, (byte) 8, (byte) 65, (byte) 117, (byte) 116, (byte) 111, (byte) 110, (byte) 97, (byte) 118, (byte) 105, (byte) 49, (byte) 31, (byte) 48, (byte) 29, (byte) 6, (byte) 3, (byte) 85, (byte) 4, (byte) 3, (byte) 12, (byte) 22, (byte) 99, (byte) 111, (byte) 109, (byte) 46, (byte) 97, (byte) 117, (byte) 116, (byte) 111, (byte) 110, (byte) 97, (byte) 118, (byte) 105, (byte) 46, (byte) 97, (byte) 112, (byte) 105, (byte) 115, (byte) 101, (byte) 114, (byte) 118, (byte) 101, (byte) 114, (byte) 48, (byte) 30, (byte) 23, (byte) 13, (byte) 49, (byte) 51, (byte) 48, (byte) 56, (byte) 49, (byte) 53, (byte) 48, (byte) 55, (byte) 53, (byte) 54, (byte) 53, (byte) 53, (byte) 90, (byte) 23, (byte) 13, (byte) 50, (byte) 51, (byte) 48, (byte) 56, (byte) 49, (byte) 51, (byte) 48, (byte) 55, (byte) 53, (byte) 54, (byte) 53, (byte) 53, (byte) 90, (byte) 48, (byte) 104, (byte) 49, (byte) 11, (byte) 48, (byte) 9, (byte) 6, (byte) 3, (byte) 85, (byte) 4, (byte) 6, (byte) 19, (byte) 2, (byte) 67, (byte) 78, (byte) 49, (byte) 19, (byte) 48, (byte) 17, (byte) 6, (byte) 3, (byte) 85, (byte) 4, (byte) 8, (byte) 12, (byte) 10, (byte) 83, (byte) 111, (byte) 109, (byte) 101, (byte) 45, (byte) 83, (byte) 116, (byte) 97, (byte) 116, (byte) 101, (byte) 49, (byte) 16, (byte) 48, (byte) 14, (byte) 6, (byte) 3, (byte) 85, (byte) 4, (byte) 7, (byte) 12, (byte) 7, (byte) 66, (byte) 101, (byte) 105, (byte) 106, (byte) 105, (byte) 110, (byte) 103, (byte) 49, (byte) 17, (byte) 48, (byte) 15, (byte) 6, (byte) 3, (byte) 85, (byte) 4, (byte) 10, (byte) 12, (byte) 8, (byte) 65, (byte) 117, (byte) 116, (byte) 111, (byte) 110, (byte) 97, (byte) 118, (byte) 105, (byte) 49, (byte) 31, (byte) 48, (byte) 29, (byte) 6, (byte) 3, (byte) 85, (byte) 4, (byte) 3, (byte) 12, (byte) 22, (byte) 99, (byte) 111, (byte) 109, (byte) 46, (byte) 97, (byte) 117, (byte) 116, (byte) 111, (byte) 110, (byte) 97, (byte) 118, (byte) 105, (byte) 46, (byte) 97, (byte) 112, (byte) 105, (byte) 115, (byte) 101, (byte) 114, (byte) 118, (byte) 101, (byte) 114, (byte) 48, (byte) -127, (byte) -97, (byte) 48, (byte) 13, (byte) 6, (byte) 9, (byte) 42, (byte) -122, (byte) 72, (byte) -122, (byte) -9, (byte) 13, (byte) 1, (byte) 1, (byte) 1, (byte) 5, (byte) 0, (byte) 3, (byte) -127, (byte) -115, (byte) 0, (byte) 48, (byte) -127, (byte) -119, (byte) 2, (byte) -127, (byte) -127, (byte) 0, (byte) -15, (byte) -27, Byte.MIN_VALUE, (byte) -56, (byte) 118, (byte) -59, (byte) 62, (byte) -127, (byte) 79, (byte) 125, (byte) -36, (byte) 121, (byte) 0, (byte) 63, (byte) -125, (byte) -30, (byte) 118, (byte) 5, (byte) -85, (byte) -121, (byte) 91, (byte) 39, (byte) 90, (byte) 123, (byte) 72, (byte) -126, (byte) -83, (byte) -41, (byte) -45, (byte) -77, (byte) -42, (byte) -120, (byte) -81, (byte) 23, (byte) -2, (byte) -121, (byte) -29, (byte) 123, (byte) -7, (byte) 22, (byte) -114, (byte) -20, (byte) -25, (byte) 74, (byte) 67, (byte) -43, (byte) 65, (byte) 124, (byte) -7, (byte) 11, (byte) -72, (byte) 38, (byte) -123, (byte) 16, (byte) -58, (byte) 80, (byte) 32, (byte) 58, (byte) -33, (byte) 14, (byte) 11, (byte) 36, (byte) 60, (byte) 13, (byte) -121, (byte) 100, (byte) 105, (byte) -32, (byte) 123, (byte) -31, (byte) 114, (byte) -101, (byte) -41, (byte) 12, (byte) 100, (byte) 33, (byte) -120, (byte) 63, (byte) 126, (byte) -123, (byte) 48, (byte) 55, (byte) 80, (byte) -116, (byte) 28, (byte) -10, (byte) 125, (byte) 59, (byte) -41, (byte) -95, (byte) -126, (byte) 118, (byte) -70, (byte) 43, (byte) -127, (byte) 9, (byte) 93, (byte) -100, (byte) 81, (byte) -19, (byte) -114, (byte) -41, (byte) 85, (byte) -103, (byte) -37, (byte) -116, (byte) 118, (byte) 72, (byte) 86, (byte) 125, (byte) -43, (byte) -92, (byte) -11, (byte) 63, (byte) 69, (byte) -38, (byte) -10, (byte) -65, (byte) 126, (byte) -53, (byte) -115, (byte) 60, (byte) 62, (byte) -86, (byte) -80, (byte) 1, (byte) 39, (byte) 19, (byte) 2, (byte) 3, (byte) 1, (byte) 0, (byte) 1, (byte) -93, (byte) 80, (byte) 48, (byte) 78, (byte) 48, (byte) 29, (byte) 6, (byte) 3, (byte) 85, (byte) 29, (byte) 14, (byte) 4, (byte) 22, (byte) 4, (byte) 20, (byte) -29, (byte) 63, (byte) 48, (byte) -79, (byte) -113, (byte) -13, (byte) 26, (byte) 85, (byte) 22, (byte) -27, (byte) 93, (byte) -5, (byte) 122, (byte) -103, (byte) -109, (byte) 14, (byte) -18, (byte) 6, (byte) -13, (byte) -109, (byte) 48, (byte) 31, (byte) 6, (byte) 3, (byte) 85, (byte) 29, (byte) 35, (byte) 4, (byte) 24, (byte) 48, (byte) 22, Byte.MIN_VALUE, (byte) 20, (byte) -29, (byte) 63, (byte) 48, (byte) -79, (byte) -113, (byte) -13, (byte) 26, (byte) 85, (byte) 22, (byte) -27, (byte) 93, (byte) -5, (byte) 122, (byte) -103, (byte) -109, (byte) 14, (byte) -18, (byte) 6, (byte) -13, (byte) -109, (byte) 48, (byte) 12, (byte) 6, (byte) 3, (byte) 85, (byte) 29, (byte) 19, (byte) 4, (byte) 5, (byte) 48, (byte) 3, (byte) 1, (byte) 1, (byte) -1, (byte) 48, (byte) 13, (byte) 6, (byte) 9, (byte) 42, (byte) -122, (byte) 72, (byte) -122, (byte) -9, (byte) 13, (byte) 1, (byte) 1, (byte) 5, (byte) 5, (byte) 0, (byte) 3, (byte) -127, (byte) -127, (byte) 0, (byte) -32, (byte) -74, (byte) 55, (byte) -125, (byte) -58, Byte.MIN_VALUE, (byte) 15, (byte) -62, (byte) 100, (byte) -60, (byte) 3, (byte) -86, (byte) 81, (byte) 112, (byte) -61, (byte) -56, (byte) -69, (byte) -126, (byte) 8, (byte) 99, (byte) -100, (byte) -38, (byte) -108, (byte) -56, (byte) -122, (byte) 125, (byte) 19, (byte) -64, (byte) -61, (byte) 90, (byte) 85, (byte) -47, (byte) -8, (byte) -123, (byte) -103, (byte) 105, (byte) 77, (byte) -32, (byte) -65, (byte) -62, (byte) -28, (byte) 67, (byte) -28, (byte) -78, (byte) 116, (byte) -49, (byte) 120, (byte) -2, (byte) 33, (byte) 13, (byte) 47, (byte) 46, (byte) -5, (byte) -112, (byte) 3, (byte) -101, (byte) -125, (byte) -115, (byte) 92, (byte) -124, (byte) 58, (byte) 80, (byte) 107, (byte) -67, (byte) 82, (byte) 6, (byte) -63, (byte) 39, (byte) -90, (byte) -1, (byte) 85, (byte) -58, (byte) 82, (byte) -115, (byte) 119, (byte) 13, (byte) -4, (byte) -32, (byte) 0, (byte) -98, (byte) 100, (byte) -41, (byte) 94, (byte) -75, (byte) 75, (byte) -103, (byte) 126, (byte) -80, (byte) 85, (byte) 40, (byte) -27, (byte) 60, (byte) 105, (byte) 28, (byte) -27, (byte) -21, (byte) -15, (byte) -98, (byte) 103, (byte) -88, (byte) -109, (byte) 35, (byte) -119, (byte) -27, (byte) -26, (byte) -122, (byte) 113, (byte) 63, (byte) 35, (byte) -33, (byte) 70, (byte) 23, (byte) 33, (byte) -23, (byte) 66, (byte) 108, (byte) 56, (byte) 112, (byte) 46, (byte) -85, (byte) -123, (byte) -123, (byte) 33, (byte) 118, (byte) 27, (byte) 96, (byte) -7, (byte) -103});
            try {
                CertificateFactory instance = CertificateFactory.getInstance("X.509");
                KeyFactory instance2 = KeyFactory.getInstance("RSA");
                Certificate generateCertificate = instance.generateCertificate(byteArrayInputStream);
                if (generateCertificate == null || instance2 == null) {
                    if (byteArrayInputStream != null) {
                        try {
                            byteArrayInputStream.close();
                        } catch (Throwable th2) {
                            th2.printStackTrace();
                        }
                    }
                    return null;
                }
                PublicKey generatePublic = instance2.generatePublic(new X509EncodedKeySpec(generateCertificate.getPublicKey().getEncoded()));
                if (byteArrayInputStream != null) {
                    try {
                        byteArrayInputStream.close();
                    } catch (Throwable th3) {
                        th3.printStackTrace();
                    }
                }
                return generatePublic;
            } catch (Throwable th4) {
                th2 = th4;
                try {
                    th2.printStackTrace();
                    if (byteArrayInputStream != null) {
                        try {
                            byteArrayInputStream.close();
                        } catch (Throwable th22) {
                            th22.printStackTrace();
                        }
                    }
                    return null;
                } catch (Throwable th5) {
                    th22 = th5;
                    if (byteArrayInputStream != null) {
                        try {
                            byteArrayInputStream.close();
                        } catch (Throwable th32) {
                            th32.printStackTrace();
                        }
                    }
                    throw th22;
                }
            }
        } catch (Throwable th6) {
            th22 = th6;
            byteArrayInputStream = null;
            if (byteArrayInputStream != null) {
                byteArrayInputStream.close();
            }
            throw th22;
        }
    }

    public static byte[] m430a() {
        int i = 0;
        try {
            String[] split = new StringBuffer("16,16,18,77,15,911,121,77,121,911,38,77,911,99,86,67,611,96,48,77,84,911,38,67,021,301,86,67,611,98,48,77,511,77,48,97,511,58,48,97,511,84,501,87,511,96,48,77,221,911,38,77,121,37,86,67,25,301,86,67,021,96,86,67,021,701,86,67,35,56,86,67,611,37,221,87").reverse().toString().split(",");
            byte[] bArr = new byte[split.length];
            for (int i2 = 0; i2 < split.length; i2++) {
                bArr[i2] = (byte) Byte.parseByte(split[i2]);
            }
            String[] split2 = new StringBuffer(new String(cz.m552b(new String(bArr)))).reverse().toString().split(",");
            byte[] bArr2 = new byte[split2.length];
            while (i < split2.length) {
                bArr2[i] = (byte) Byte.parseByte(split2[i]);
                i++;
            }
            return bArr2;
        } catch (Throwable th) {
            C1259s.bwd(th, "Utils", "getIV");
            return new byte[16];
        }
    }

    public static byte[] m431a(String str) {
        if (TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            return str.getBytes();
        }
    }

    public static String m432b(String str) {
        if (str == null) {
            return null;
        }
        String b = cz.m551b(m431a(str));
        return ((char) ((b.length() % 26) + 65)) + b;
    }

    public static byte[] m433b(byte[] bArr) {
        try {
            return bBr(bArr);
        } catch (Throwable th) {
            C1259s.bwd(th, "Utils", "gZip");
            return new byte[0];
        }
    }

    public static void bBi(ByteArrayOutputStream byteArrayOutputStream, String str) {
        bBj(byteArrayOutputStream, (byte) str.length(), m431a(str));
    }

    public static void bBj(ByteArrayOutputStream byteArrayOutputStream, byte b, byte[] bArr) {
        int i = 0;
        try {
            byteArrayOutputStream.write(new byte[]{(byte) b});
            int i2 = b <= (byte) 0 ? 0 : 1;
            if ((b & 255) < 255) {
                i = 1;
            }
            if ((i & i2) != 0) {
                byteArrayOutputStream.write(bArr);
            } else if ((b & 255) == 255) {
                byteArrayOutputStream.write(bArr, 0, 255);
            }
        } catch (Throwable e) {
            C1259s.bwd(e, "Utils", "writeField");
        }
    }

    public static String bBk(String str) {
        return str.length() >= 2 ? cz.m548a(str.substring(1)) : "";
    }

    public static boolean bBl(JSONObject jSONObject, String str) {
        return jSONObject != null && jSONObject.has(str);
    }

    public static String bBm(Map map) {
        if (map == null || map.size() == 0) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        Object obj = 1;
        try {
            for (Entry entry : map.entrySet()) {
                Object obj2;
                if (obj == null) {
                    stringBuffer.append("&").append((String) entry.getKey()).append("=").append((String) entry.getValue());
                    obj2 = obj;
                } else {
                    stringBuffer.append((String) entry.getKey()).append("=").append((String) entry.getValue());
                    obj2 = null;
                }
                obj = obj2;
            }
        } catch (Throwable th) {
            C1259s.bwd(th, "Utils", "assembleParams");
        }
        return stringBuffer.toString();
    }

    public static byte[] bBn(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream;
        ZipOutputStream zipOutputStream;
        Throwable th;
        byte[] bArr2 = null;
        if (bArr == null || bArr.length == 0) {
            return bArr2;
        }
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                zipOutputStream = new ZipOutputStream(byteArrayOutputStream);
            } catch (Throwable th2) {
                th = th2;
                zipOutputStream = bArr2;
                if (zipOutputStream != null) {
                    zipOutputStream.close();
                }
                if (byteArrayOutputStream != null) {
                    byteArrayOutputStream.close();
                }
                throw th;
            }
            try {
                zipOutputStream.putNextEntry(new ZipEntry("log"));
                zipOutputStream.write(bArr);
                zipOutputStream.closeEntry();
                zipOutputStream.finish();
                bArr2 = byteArrayOutputStream.toByteArray();
                if (zipOutputStream != null) {
                    try {
                        zipOutputStream.close();
                    } catch (Throwable th3) {
                        C1259s.bwd(th3, "Utils", "zip1");
                    }
                }
                if (byteArrayOutputStream != null) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th32) {
                        C1259s.bwd(th32, "Utils", "zip2");
                    }
                }
            } catch (Throwable th4) {
                th32 = th4;
                C1259s.bwd(th32, "Utils", "zip");
                if (zipOutputStream != null) {
                    zipOutputStream.close();
                }
                if (byteArrayOutputStream != null) {
                    byteArrayOutputStream.close();
                }
                return bArr2;
            }
        } catch (Throwable th5) {
            th32 = th5;
            byteArrayOutputStream = bArr2;
            zipOutputStream = bArr2;
            if (zipOutputStream != null) {
                zipOutputStream.close();
            }
            if (byteArrayOutputStream != null) {
                byteArrayOutputStream.close();
            }
            throw th32;
        }
        return bArr2;
    }

    static String bBo(byte[] bArr) {
        try {
            return bBq(bArr);
        } catch (Throwable th) {
            C1259s.bwd(th, "Utils", "HexString");
            return null;
        }
    }

    static String bBp(byte[] bArr) {
        try {
            return bBq(bArr);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static String bBq(byte[] bArr) {
        StringBuilder stringBuilder = new StringBuilder();
        if (bArr == null) {
            return null;
        }
        for (byte b : bArr) {
            String toHexString = Integer.toHexString(b & 255);
            if (toHexString.length() == 1) {
                toHexString = '0' + toHexString;
            }
            stringBuilder.append(toHexString);
        }
        return stringBuilder.toString();
    }

    private static byte[] bBr(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream;
        GZIPOutputStream gZIPOutputStream;
        Throwable th;
        byte[] bArr2 = null;
        if (bArr == null) {
            return null;
        }
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                try {
                    gZIPOutputStream.write(bArr);
                    gZIPOutputStream.finish();
                    byte[] toByteArray = byteArrayOutputStream.toByteArray();
                    if (gZIPOutputStream != null) {
                        gZIPOutputStream.close();
                    }
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    return toByteArray;
                } catch (Throwable th2) {
                    th = th2;
                    if (gZIPOutputStream != null) {
                        gZIPOutputStream.close();
                    }
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                gZIPOutputStream = null;
                if (gZIPOutputStream != null) {
                    gZIPOutputStream.close();
                }
                if (byteArrayOutputStream != null) {
                    byteArrayOutputStream.close();
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            gZIPOutputStream = null;
            byteArrayOutputStream = null;
            if (gZIPOutputStream != null) {
                gZIPOutputStream.close();
            }
            if (byteArrayOutputStream != null) {
                byteArrayOutputStream.close();
            }
            throw th;
        }
    }
}
