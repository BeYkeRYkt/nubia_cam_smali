package com.android.funeffect;

import android.content.ContentValues;
import android.graphics.Matrix;
import android.location.Location;
import android.util.SparseArray;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.appService.CameraMember;
import com.android.common.custom.C0421M;
import com.android.common.exif.C0523o;
import com.android.common.p001l.C0625d;
import com.android.common.p016a.C0291h;
import java.io.File;
import java.nio.ByteBuffer;

class C0867f implements C0291h {
    final /* synthetic */ C0865d aZP;

    C0867f(C0865d c0865d) {
        this.aZP = c0865d;
    }

    public void aM(ByteBuffer byteBuffer, int i, int i2, Matrix matrix) {
        if (!this.aZP.adC) {
            int i3;
            int i4;
            this.aZP.adA.Wb(0);
            long currentTimeMillis = System.currentTimeMillis();
            String aoP = C0616j.aoP(currentTimeMillis);
            String bqR = bqR(this.aZP.adA.UW());
            int To = this.aZP.adA.To();
            matrix.postRotate((float) To);
            if (To % 180 == 0) {
                i3 = i2;
                i4 = i;
            } else {
                i3 = i;
                i4 = i2;
            }
            this.aZP.adA.Ti().alX(new C0625d(this.aZP.adA, byteBuffer, i, i2, matrix, 60, bqR + "/", aoP + ".jpg", bqQ(0), bqP(aoP, bqR, currentTimeMillis, i4, i3, 0), null));
            this.aZP.adA.Tz().sendEmptyMessage(19);
        }
    }

    private String bqR(int i) {
        String str = C0701s.aqX() + CameraMember.aar(i);
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    private SparseArray bqQ(int i) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(C0523o.BW, Short.valueOf(C0523o.BW(i)));
        sparseArray.put(C0523o.BY, C0421M.dC().dD().br());
        sparseArray.put(C0523o.BZ, C0421M.dC().dD().bs());
        return sparseArray;
    }

    private ContentValues bqP(String str, String str2, long j, int i, int i2, int i3) {
        ContentValues contentValues = new ContentValues(9);
        contentValues.put("title", str);
        contentValues.put("_display_name", str + ".jpg");
        contentValues.put("datetaken", Long.valueOf(j));
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put("orientation", Integer.valueOf(i3));
        contentValues.put("_data", str2 + "/" + str + ".jpg");
        contentValues.put("width", Integer.valueOf(i));
        contentValues.put("height", Integer.valueOf(i2));
        Location age = this.aZP.adA.Tq().age();
        if (age != null) {
            contentValues.put("latitude", Double.valueOf(age.getLatitude()));
            contentValues.put("longitude", Double.valueOf(age.getLongitude()));
        }
        return contentValues;
    }
}
