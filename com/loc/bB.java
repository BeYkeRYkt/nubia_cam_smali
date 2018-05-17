package com.loc;

import android.text.TextUtils;
import java.util.Hashtable;
import java.util.Locale;

public class bB {
    private static final char[] bhF = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'j', 'k', 'm', 'n', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    private static final int[] bhG = new int[]{16, 8, 4, 2, 1};

    private static final String m290a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        Object obj;
        String toLowerCase = str.toLowerCase(Locale.US);
        char charAt = toLowerCase.charAt(toLowerCase.length() - 1);
        if (toLowerCase.length() % 2 != 0) {
            obj = "even";
        } else {
            String str3 = "odd";
        }
        toLowerCase = toLowerCase.substring(0, toLowerCase.length() - 1);
        if (!(((String) ((Hashtable) bJ.bhL.get(str2)).get(obj)).indexOf(charAt) == -1 || TextUtils.isEmpty(toLowerCase))) {
            toLowerCase = m290a(toLowerCase, str2);
        }
        return toLowerCase + bhF[((String) ((Hashtable) C1232E.bdU.get(str2)).get(obj)).indexOf(charAt)];
    }

    public static final String[] m291a(String str) {
        return new String[]{m290a(str, "right"), m290a(str, "btm"), m290a(str, "left"), m290a(str, "top"), m290a(r0[0], "top"), m290a(r0[0], "btm"), m290a(r0[2], "top"), m290a(r0[2], "btm"), m290a(r0[0], "right"), m290a(r0[8], "top"), m290a(r0[9], "top"), m290a(r0[10], "left"), m290a(r0[11], "left"), m290a(r0[12], "left"), m290a(r0[13], "left"), m290a(r0[14], "btm"), m290a(r0[15], "btm"), m290a(r0[16], "btm"), m290a(r0[17], "btm"), m290a(r0[18], "right"), m290a(r0[19], "right"), m290a(r0[20], "right"), m290a(r0[21], "right"), m290a(r0[22], "top")};
    }

    public static final String bBX(double d, double d2) {
        return bBY(d, d2, 6);
    }

    public static final String bBY(double d, double d2, int i) {
        StringBuilder stringBuilder = new StringBuilder();
        Object obj = 1;
        int i2 = 0;
        int i3 = 0;
        double[] dArr = new double[]{-90.0d, 90.0d};
        double[] dArr2 = new double[]{-180.0d, 180.0d};
        while (stringBuilder.length() < i) {
            double d3;
            if (obj == null) {
                d3 = (dArr[0] + dArr[1]) / 2.0d;
                if (d > d3) {
                    i3 |= bhG[i2];
                    dArr[0] = d3;
                } else {
                    dArr[1] = d3;
                }
            } else {
                d3 = (dArr2[0] + dArr2[1]) / 2.0d;
                if (d2 > d3) {
                    i3 |= bhG[i2];
                    dArr2[0] = d3;
                } else {
                    dArr2[1] = d3;
                }
            }
            obj = obj != null ? null : 1;
            if (i2 >= 4) {
                stringBuilder.append(bhF[i3]);
                i2 = 0;
                i3 = 0;
            } else {
                i2++;
            }
        }
        return stringBuilder.toString();
    }
}
