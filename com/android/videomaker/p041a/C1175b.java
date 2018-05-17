package com.android.videomaker.p041a;

import android.content.Context;
import com.umeng.analytics.C1296a;
import java.util.Random;

public class C1175b {
    private static char[] awI = "0123456789".toCharArray();
    private static char[] awJ = "0123456789abcdefghijklmnopqrstuvwxyz0123456789".toCharArray();
    private static Random awK = new Random();

    private C1175b() {
    }

    public static String aKz(int i) {
        if (i < 1) {
            return null;
        }
        char[] cArr = new char[i];
        for (int i2 = 0; i2 < cArr.length; i2++) {
            cArr[i2] = awJ[awK.nextInt(awJ.length - 1)];
        }
        return new String(cArr);
    }

    public static String aKy(Context context, long j) {
        long j2 = j / C1296a.f552h;
        j2 = j % C1296a.f552h;
        long j3 = j2 / 60000;
        j2 %= 60000;
        j3 = j2 / 1000;
        j2 = (j2 % 1000) / 100;
        return String.format("%d.%01d", new Object[]{Long.valueOf(j3), Long.valueOf(j2)});
    }
}
