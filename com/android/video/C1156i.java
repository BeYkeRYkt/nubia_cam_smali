package com.android.video;

import android.content.ContentValues;
import android.graphics.Matrix;
import android.location.Location;
import com.android.common.C0616j;
import com.android.common.p001l.C0625d;
import com.android.common.p016a.C0291h;
import com.p010a.C0090a;
import java.nio.ByteBuffer;

final class C1156i implements C0291h {
    final /* synthetic */ C1152e aQA;

    private C1156i(C1152e c1152e) {
        this.aQA = c1152e;
    }

    public void aM(ByteBuffer byteBuffer, int i, int i2, Matrix matrix) {
        int i3;
        C0090a.bvo("VideoRecordManager", "onPreviewDataCopy");
        if (this.aQA.aPZ != null) {
            this.aQA.aPZ.bgW();
        }
        this.aQA.mState = 1;
        long currentTimeMillis = System.currentTimeMillis();
        String bgO = this.aQA.bge();
        String aoP = C0616j.aoP(currentTimeMillis);
        float bgJ = ((float) this.aQA.aQu) / ((float) i);
        float bgI = ((float) this.aQA.aQt) / ((float) i2);
        matrix.postScale(bgJ, bgI, (float) (i / 2), (float) (i2 / 2));
        int To = this.aQA.aPR.To();
        matrix.postRotate((float) To);
        if (this.aQA.bgl() && !this.aQA.bgm()) {
            matrix.postScale(-1.0f, 1.0f);
        }
        if (To % 180 == 0) {
            To = (int) (bgJ * ((float) i));
            i3 = (int) (((float) i2) * bgI);
        } else {
            To = (int) (bgI * ((float) i2));
            i3 = (int) (bgJ * ((float) i));
        }
        ContentValues bha = bha(bgO, aoP, currentTimeMillis, To, i3);
        this.aQA.aPR.Ti().alX(new C0625d(this.aQA.aPR, byteBuffer, i, i2, matrix, 60, bgO + "/", aoP + ".jpg", this.aQA.bgd(To, i3), bha, null));
    }

    private ContentValues bha(String str, String str2, long j, int i, int i2) {
        ContentValues contentValues = new ContentValues(9);
        contentValues.put("title", str2);
        contentValues.put("_display_name", str2 + ".jpg");
        contentValues.put("datetaken", Long.valueOf(j));
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put("_data", str + "/" + str2 + ".jpg");
        contentValues.put("width", Integer.valueOf(i));
        contentValues.put("height", Integer.valueOf(i2));
        Location age = this.aQA.aPR.Tq().age();
        if (age != null) {
            contentValues.put("latitude", Double.valueOf(age.getLatitude()));
            contentValues.put("longitude", Double.valueOf(age.getLongitude()));
        }
        return contentValues;
    }
}
