package com.loc;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

final class C1243O {
    private final String f138b;
    private final long[] bed;
    private bV bee;
    final /* synthetic */ cD bef;
    private boolean f139d;
    private long f140f;

    private C1243O(cD cDVar, String str) {
        this.bef = cDVar;
        this.f138b = str;
        this.bed = new long[cDVar.blI];
    }

    private void bwx(String[] strArr) {
        if (strArr.length == this.bef.blI) {
            int i = 0;
            while (i < strArr.length) {
                try {
                    this.bed[i] = Long.parseLong(strArr[i]);
                    i++;
                } catch (NumberFormatException e) {
                    throw bwy(strArr);
                }
            }
            return;
        }
        throw bwy(strArr);
    }

    private IOException bwy(String[] strArr) {
        throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
    }

    public File m110a(int i) {
        return new File(this.bef.blE, this.f138b + "." + i);
    }

    public String m111a() {
        StringBuilder stringBuilder = new StringBuilder();
        for (long append : this.bed) {
            stringBuilder.append(' ').append(append);
        }
        return stringBuilder.toString();
    }

    public File bwz(int i) {
        return new File(this.bef.blE, this.f138b + "." + i + ".tmp");
    }
}
