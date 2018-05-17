package com.android.common.cameradevice;

import android.media.CamcorderProfile;
import android.util.SparseArray;
import java.util.ArrayList;

public abstract class C0081r {
    public static final CamcorderProfileEx$DefaultHashMap HU = new CamcorderProfileEx$DefaultHashMap();
    public static final CamcorderProfileEx$DefaultHashMap HV = new CamcorderProfileEx$DefaultHashMap();
    protected int[] HW = new int[CamcorderProfileEx$INDEX_QUALITY.values().length];
    protected int[] HX = new int[CamcorderProfileEx$INDEX_SLOMO_QUALITY.values().length];
    protected SparseArray HY = new SparseArray();

    public abstract ArrayList JM(int i, C0086j c0086j, String str);

    protected abstract void JO();

    public abstract CamcorderProfile JP(int i, int i2);

    static {
        HV.put("h263", Integer.valueOf(1));
        HV.put("h264", Integer.valueOf(2));
        HV.put("m4v", Integer.valueOf(3));
        HV.JR(Integer.valueOf(0));
        HU.put("amrnb", Integer.valueOf(1));
        HU.put("amrwb", Integer.valueOf(2));
        HU.put("aac", Integer.valueOf(3));
        HU.JR(Integer.valueOf(0));
    }

    public C0081r() {
        JO();
    }

    public ArrayList JL(int i) {
        ArrayList arrayList = (ArrayList) this.HY.get(i);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < this.HW.length; i2++) {
            if (CamcorderProfile.hasProfile(i, this.HW[i2])) {
                arrayList2.add(Integer.toString(this.HW[i2]));
            }
        }
        this.HY.put(i, arrayList2);
        return arrayList2;
    }

    public int JN(CamcorderProfileEx$INDEX_QUALITY camcorderProfileEx$INDEX_QUALITY) {
        return this.HW[camcorderProfileEx$INDEX_QUALITY.ordinal()];
    }

    public int JQ(CamcorderProfileEx$INDEX_SLOMO_QUALITY camcorderProfileEx$INDEX_SLOMO_QUALITY) {
        return this.HX[camcorderProfileEx$INDEX_SLOMO_QUALITY.ordinal()];
    }
}
