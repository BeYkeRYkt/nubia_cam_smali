package p043u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.analytics.C1297b;
import java.io.File;
import org.json.JSONObject;

public class ce {
    private final byte[] f943a = new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0};
    private final int f944b = 1;
    private byte[] byX = null;
    private byte[] byY = null;
    private int byZ = 0;
    private byte[] bza = null;
    private byte[] bzb = null;
    private boolean bzc = false;
    private final int f945c = 0;
    private String f946d = "1.0";
    private String f947e = null;
    private byte[] f948h = null;
    private int f949j = 0;
    private int f950k = 0;

    private ce(byte[] bArr, String str, byte[] bArr2) {
        if (bArr == null || bArr.length == 0) {
            throw new Exception("entity is null or empty");
        }
        this.f947e = str;
        this.f950k = bArr.length;
        this.bza = C1397h.m1266a(bArr);
        this.f949j = (int) (System.currentTimeMillis() / 1000);
        this.bzb = bArr2;
    }

    public static String m1173a(Context context) {
        SharedPreferences a = cr.m1203a(context);
        if (a != null) {
            return a.getString("signature", null);
        }
        return null;
    }

    public void m1178a(String str) {
        this.byX = C1297b.m609a(str);
    }

    public String m1176a() {
        return C1297b.m608a(this.byX);
    }

    public void m1177a(int i) {
        this.byZ = i;
    }

    public void m1179a(boolean z) {
        this.bzc = z;
    }

    public static ce bXY(Context context, String str, byte[] bArr) {
        try {
            String bQu = C1394e.bQu(context);
            String f = C1394e.m1248f(context);
            SharedPreferences a = cr.m1203a(context);
            String string = a.getString("signature", null);
            int i = a.getInt("serial", 1);
            ce ceVar = new ce(bArr, str, (f + bQu).getBytes());
            ceVar.m1178a(string);
            ceVar.m1177a(i);
            ceVar.m1180b();
            a.edit().putInt("serial", i + 1).putString("signature", ceVar.m1176a()).commit();
            ceVar.m1181b(context);
            return ceVar;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static ce bXZ(Context context, String str, byte[] bArr) {
        try {
            String bQu = C1394e.bQu(context);
            String f = C1394e.m1248f(context);
            SharedPreferences a = cr.m1203a(context);
            String string = a.getString("signature", null);
            int i = a.getInt("serial", 1);
            ce ceVar = new ce(bArr, str, (f + bQu).getBytes());
            ceVar.m1179a(true);
            ceVar.m1178a(string);
            ceVar.m1177a(i);
            ceVar.m1180b();
            a.edit().putInt("serial", i + 1).putString("signature", ceVar.m1176a()).commit();
            ceVar.m1181b(context);
            return ceVar;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void m1180b() {
        if (this.byX == null) {
            this.byX = m1174d();
        }
        if (this.bzc) {
            byte[] bArr = new byte[16];
            try {
                System.arraycopy(this.byX, 1, bArr, 0, 16);
                this.bza = C1297b.m610a(this.bza, bArr);
            } catch (Exception e) {
            }
        }
        this.byY = bYa(this.byX, this.f949j);
        this.f948h = m1175e();
    }

    private byte[] bYa(byte[] bArr, int i) {
        int i2;
        int i3 = 0;
        byte[] b = C1297b.m611b(this.bzb);
        byte[] b2 = C1297b.m611b(this.bza);
        int length = b.length;
        byte[] bArr2 = new byte[(length * 2)];
        for (i2 = 0; i2 < length; i2++) {
            bArr2[i2 * 2] = (byte) b2[i2];
            bArr2[(i2 * 2) + 1] = (byte) b[i2];
        }
        for (i2 = 0; i2 < 2; i2++) {
            bArr2[i2] = (byte) bArr[i2];
            bArr2[(bArr2.length - i2) - 1] = (byte) bArr[(bArr.length - i2) - 1];
        }
        byte[] bArr3 = new byte[]{(byte) ((byte) (i & 255)), (byte) ((byte) ((i >> 8) & 255)), (byte) ((byte) ((i >> 16) & 255)), (byte) ((byte) (i >>> 24))};
        while (i3 < bArr2.length) {
            bArr2[i3] = (byte) ((byte) (bArr2[i3] ^ bArr3[i3 % 4]));
            i3++;
        }
        return bArr2;
    }

    private byte[] m1174d() {
        return bYa(this.f943a, (int) (System.currentTimeMillis() / 1000));
    }

    private byte[] m1175e() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(C1297b.m608a(this.byX));
        stringBuilder.append(this.byZ);
        stringBuilder.append(this.f949j);
        stringBuilder.append(this.f950k);
        stringBuilder.append(C1297b.m608a(this.byY));
        return C1297b.m611b(stringBuilder.toString().getBytes());
    }

    public byte[] m1182c() {
        int i = 0;
        cj brVar = new br();
        brVar.m1119a(this.f946d);
        brVar.m1122b(this.f947e);
        brVar.caZ(C1297b.m608a(this.byX));
        brVar.m1118a(this.byZ);
        brVar.cbd(this.f949j);
        brVar.cbg(this.f950k);
        brVar.m1120a(this.bza);
        if (this.bzc) {
            i = 1;
        }
        brVar.cbp(i);
        brVar.cbl(C1297b.m608a(this.byY));
        brVar.cbn(C1297b.m608a(this.f948h));
        try {
            return new bG().bWg(brVar);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void m1181b(Context context) {
        String str = this.f947e;
        String b = C1413z.m1279a(context).m1282b().m1197b(null);
        String a = C1297b.m608a(this.byX);
        Object obj = new byte[16];
        System.arraycopy(this.byX, 2, obj, 0, 16);
        String a2 = C1297b.m608a(C1297b.m611b(obj));
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("appkey", str);
            if (b != null) {
                jSONObject.put("umid", b);
            }
            jSONObject.put("signature", a);
            jSONObject.put("checksum", a2);
            str = jSONObject.toString();
            File file = new File(context.getFilesDir(), ".umeng");
            if (!file.exists()) {
                file.mkdir();
            }
            bu.bVR(new File(file, "exchangeIdentity.json"), str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String toString() {
        int i = 1;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(String.format("version : %s\n", new Object[]{this.f946d}));
        stringBuilder.append(String.format("address : %s\n", new Object[]{this.f947e}));
        stringBuilder.append(String.format("signature : %s\n", new Object[]{C1297b.m608a(this.byX)}));
        stringBuilder.append(String.format("serial : %s\n", new Object[]{Integer.valueOf(this.byZ)}));
        stringBuilder.append(String.format("timestamp : %d\n", new Object[]{Integer.valueOf(this.f949j)}));
        stringBuilder.append(String.format("length : %d\n", new Object[]{Integer.valueOf(this.f950k)}));
        stringBuilder.append(String.format("guid : %s\n", new Object[]{C1297b.m608a(this.byY)}));
        stringBuilder.append(String.format("checksum : %s ", new Object[]{C1297b.m608a(this.f948h)}));
        String str = "codex : %d";
        Object[] objArr = new Object[1];
        if (!this.bzc) {
            i = 0;
        }
        objArr[0] = Integer.valueOf(i);
        stringBuilder.append(String.format(str, objArr));
        return stringBuilder.toString();
    }
}
