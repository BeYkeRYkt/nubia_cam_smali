package p043u.aly;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.C1296a;
import java.util.HashMap;
import java.util.Map;

public class C1340E implements C1335A {
    private static C1340E bvc = null;
    private boolean f649a = false;
    private int f650b;
    private float buZ = 0.0f;
    private float bva = 0.0f;
    private Context bvb = null;
    private int f651c;
    private int f652d;

    public static synchronized C1340E m734a(Context context) {
        C1340E c1340e;
        synchronized (C1340E.class) {
            if (bvc == null) {
                cm b = C1413z.m1279a(context).m1282b();
                bvc = new C1340E(context, b.m1195a(null), b.bYB(0));
            }
            c1340e = bvc;
        }
        return c1340e;
    }

    private C1340E(Context context, String str, int i) {
        this.bvb = context;
        bSq(str, i);
    }

    private float bSp(String str, int i) {
        int i2 = i * 2;
        return str != null ? ((float) Integer.valueOf(str.substring(i2, i2 + 5), 16).intValue()) / 1048576.0f : 0.0f;
    }

    public void bSq(String str, int i) {
        this.f651c = i;
        String a = ce.m1173a(this.bvb);
        if (TextUtils.isEmpty(a) || TextUtils.isEmpty(str)) {
            this.f649a = false;
            return;
        }
        try {
            this.buZ = bSp(a, 12);
            this.bva = bSp(a, 6);
            if (str.startsWith("SIG7")) {
                m736b(str);
            } else if (str.startsWith("FIXED")) {
                bSr(str);
            }
        } catch (Exception e) {
            this.f649a = false;
            C1350O.m788b(C1296a.f549e, "v:" + str, e);
        }
    }

    public static boolean m735a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String[] split = str.split("\\|");
        if (split.length != 6) {
            return false;
        }
        if (split[0].startsWith("SIG7") && split[1].split(",").length == split[5].split(",").length) {
            return true;
        }
        if (split[0].startsWith("FIXED")) {
            int length = split[5].split(",").length;
            int parseInt = Integer.parseInt(split[1]);
            return length >= parseInt && parseInt >= 1;
        }
    }

    private void m736b(String str) {
        int[] iArr = null;
        if (str != null) {
            float floatValue;
            String[] split = str.split("\\|");
            if (split[2].equals("SIG13")) {
                floatValue = Float.valueOf(split[3]).floatValue();
            } else {
                floatValue = 0.0f;
            }
            if (this.buZ > floatValue) {
                this.f649a = false;
                return;
            }
            float[] fArr;
            if (split[0].equals("SIG7")) {
                String[] split2 = split[1].split(",");
                float[] fArr2 = new float[split2.length];
                for (int i = 0; i < split2.length; i++) {
                    fArr2[i] = Float.valueOf(split2[i]).floatValue();
                }
                fArr = fArr2;
            } else {
                fArr = null;
            }
            if (split[4].equals("RPT")) {
                split = split[5].split(",");
                int[] iArr2 = new int[split.length];
                for (int i2 = 0; i2 < split.length; i2++) {
                    iArr2[i2] = Integer.valueOf(split[i2]).intValue();
                }
                iArr = iArr2;
            }
            float f = 0.0f;
            int i3 = 0;
            while (i3 < fArr.length) {
                f += fArr[i3];
                if (this.bva < f) {
                    break;
                }
                i3++;
            }
            i3 = -1;
            if (i3 == -1) {
                this.f649a = false;
            } else {
                this.f649a = true;
                this.f652d = i3 + 1;
                this.f650b = iArr[i3];
            }
        }
    }

    private void bSr(String str) {
        int[] iArr = null;
        if (str != null) {
            String[] split = str.split("\\|");
            float f = 0.0f;
            if (split[2].equals("SIG13")) {
                f = Float.valueOf(split[3]).floatValue();
            }
            if (this.buZ > f) {
                this.f649a = false;
                return;
            }
            int intValue;
            if (split[0].equals("FIXED")) {
                intValue = Integer.valueOf(split[1]).intValue();
            } else {
                intValue = -1;
            }
            if (split[4].equals("RPT")) {
                String[] split2 = split[5].split(",");
                int[] iArr2 = new int[split2.length];
                for (int i = 0; i < split2.length; i++) {
                    iArr2[i] = Integer.valueOf(split2[i]).intValue();
                }
                iArr = iArr2;
            }
            if (intValue == -1) {
                this.f649a = false;
            } else {
                this.f649a = true;
                this.f652d = intValue;
                this.f650b = iArr[intValue - 1];
            }
        }
    }

    public boolean m737a() {
        return this.f649a;
    }

    public int m738b() {
        return this.f650b;
    }

    public Map m739e() {
        if (!this.f649a) {
            return null;
        }
        Map hashMap = new HashMap();
        hashMap.put("client_test", Integer.valueOf(this.f652d));
        return hashMap;
    }

    public void bSj(cm cmVar) {
        bSq(cmVar.m1195a(null), cmVar.bYB(0));
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(" p13:");
        stringBuilder.append(this.buZ);
        stringBuilder.append(" p07:");
        stringBuilder.append(this.bva);
        stringBuilder.append(" policy:");
        stringBuilder.append(this.f650b);
        stringBuilder.append(" interval:");
        stringBuilder.append(this.f651c);
        return stringBuilder.toString();
    }
}
