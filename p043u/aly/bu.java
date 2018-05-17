package p043u.aly;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.StringWriter;
import java.security.MessageDigest;
import org.apache.http.Header;

public class bu {
    public static final String f933a = System.getProperty("line.separator");

    public static String m1124a(String str) {
        if (str == null) {
            return null;
        }
        try {
            byte[] bytes = str.getBytes();
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.reset();
            instance.update(bytes);
            bytes = instance.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < bytes.length; i++) {
                stringBuffer.append(String.format("%02X", new Object[]{Byte.valueOf(bytes[i])}));
            }
            return stringBuffer.toString();
        } catch (Exception e) {
            return str.replaceAll("[^[a-z][A-Z][0-9][.][_]]", "");
        }
    }

    public static String m1125b(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b : digest) {
                stringBuffer.append(Integer.toHexString(b & 255));
            }
            return stringBuffer.toString();
        } catch (Exception e) {
            C1350O.m786a("helper", "getMD5 error", e);
            return "";
        }
    }

    public static String m1123a(InputStream inputStream) {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
        char[] cArr = new char[1024];
        StringWriter stringWriter = new StringWriter();
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (-1 == read) {
                return stringWriter.toString();
            }
            stringWriter.write(cArr, 0, read);
        }
    }

    public static byte[] bVP(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 == read) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    public static void bVQ(File file, byte[] bArr) {
        OutputStream fileOutputStream = new FileOutputStream(file);
        try {
            fileOutputStream.write(bArr);
            fileOutputStream.flush();
        } finally {
            bu.bVT(fileOutputStream);
        }
    }

    public static void bVR(File file, String str) {
        bu.bVQ(file, str.getBytes());
    }

    public static void bVS(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception e) {
            }
        }
    }

    public static void bVT(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (Exception e) {
            }
        }
    }

    public static boolean bVU(Header header, String str) {
        if (header == null || header.getValue() == null) {
            return false;
        }
        for (String equalsIgnoreCase : header.getValue().split(";")) {
            if (str.equalsIgnoreCase(equalsIgnoreCase)) {
                return true;
            }
        }
        return false;
    }
}
