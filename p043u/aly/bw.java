package p043u.aly;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;

public class bw {
    public static String bVW(Serializable serializable) {
        if (serializable == null) {
            return "";
        }
        try {
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(serializable);
            objectOutputStream.close();
            return bw.m1129a(byteArrayOutputStream.toByteArray());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Object m1128a(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        try {
            return new ObjectInputStream(new ByteArrayInputStream(bw.m1130b(str))).readObject();
        } catch (Exception e) {
            return null;
        }
    }

    public static String m1129a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < bArr.length; i++) {
            stringBuffer.append((char) (((bArr[i] >> 4) & 15) + 97));
            stringBuffer.append((char) ((bArr[i] & 15) + 97));
        }
        return stringBuffer.toString();
    }

    public static byte[] m1130b(String str) {
        byte[] bArr = new byte[(str.length() / 2)];
        for (int i = 0; i < str.length(); i += 2) {
            bArr[i / 2] = (byte) ((byte) ((str.charAt(i) - 97) << 4));
            int i2 = i / 2;
            bArr[i2] = (byte) ((byte) ((str.charAt(i + 1) - 97) + bArr[i2]));
        }
        return bArr;
    }
}
