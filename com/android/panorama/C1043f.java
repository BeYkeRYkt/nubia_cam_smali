package com.android.panorama;

import android.content.ContentValues;
import android.graphics.Rect;
import android.location.Location;
import android.net.Uri;
import android.os.AsyncTask;
import android.provider.MediaStore.Images.Media;
import android.util.SparseArray;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.appService.CameraMember;
import com.android.common.custom.C0421M;
import com.android.common.exif.C0513e;
import com.android.common.exif.C0523o;
import com.android.common.p028h.C0562f;
import com.p010a.C0090a;

class C1043f extends AsyncTask {
    final /* synthetic */ C1039b aUA;
    Location aUv;
    boolean aUw;
    int aUx = 0;
    long aUy;
    C0562f aUz = null;

    C1043f(C1039b c1039b, boolean z, int i) {
        this.aUA = c1039b;
        C0090a.m1e("MorphoPanoramaAdapter", "SaveOutputImageTask save image? : " + z + " ,result " + i);
        if (c1039b.aTN) {
            C0090a.m1e("MorphoPanoramaAdapter", "SaveOutputImageTask pic taking");
        }
        this.aUw = z;
        this.aUx = i;
        this.aUv = c1039b.aTO.age();
    }

    protected /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        return bkP((Void[]) objArr);
    }

    protected Integer bkP(Void... voidArr) {
        this.aUA.bkt();
        int btX = this.aUA.aTP.btX();
        if (this.aUw) {
            if (btX != 0) {
                C0090a.m1e("MorphoPanoramaAdapter", "morhpo panorama gp end failed: " + btX);
            }
            Rect rect = new Rect();
            int btY = this.aUA.aTP.btY(rect);
            if (btY != 0) {
                C0090a.m1e("MorphoPanoramaAdapter", "morhpo panorama gp getClippingRect failed: " + btY);
            }
            this.aUz = bkR(rect);
        }
        return null;
    }

    protected void onPreExecute() {
        C0090a.m1e("MorphoPanoramaAdapter", "SaveOutputImageTask onPreExecute");
        this.aUy = System.currentTimeMillis();
        if (this.aUA.aTR != null) {
            this.aUA.aTR.ble(this.aUx);
        }
    }

    protected /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        bkQ((Integer) obj);
    }

    protected void bkQ(Integer num) {
        this.aUA.aTP.btZ();
        this.aUA.aTP = null;
        C0090a.m1e("MorphoPanoramaAdapter", "SaveOutputImageTask onPostExecute");
        this.aUA.aTM = false;
        if (this.aUA.aTR != null) {
            this.aUA.aTR.blc(this.aUz, null);
        }
        C0090a.m0d("MorphoPanoramaAdapter", "[MORTIME] PanoramaFinish time = " + (System.currentTimeMillis() - this.aUy));
    }

    private C0562f bkR(Rect rect) {
        String aoP = C0616j.aoP(this.aUA.aUh);
        String arc = C0701s.arc(aoP, CameraMember.PANORAMA.aan());
        int bua = this.aUA.aTP.bua(arc, rect, 1, new int[1]);
        if (bua != 0) {
            C0090a.bvo("MorphoPanoramaAdapter", "mMorphoPanoramaGP saveOutputJpeg failed: " + bua);
            return null;
        }
        bkT(arc, rect.width(), rect.height());
        if (this.aUA.aTE == null) {
            return null;
        }
        return C0562f.afX(this.aUA.aTE, bkS(aoP, arc, rect));
    }

    private Uri bkS(String str, String str2, Rect rect) {
        try {
            ContentValues contentValues = new ContentValues(9);
            contentValues.put("title", str);
            contentValues.put("_display_name", str + ".jpg");
            contentValues.put("datetaken", Long.valueOf(System.currentTimeMillis()));
            contentValues.put("mime_type", "image/jpeg");
            contentValues.put("orientation", Integer.valueOf(this.aUA.aTU));
            contentValues.put("_data", str2);
            contentValues.put("width", Integer.valueOf(rect.width()));
            contentValues.put("height", Integer.valueOf(rect.height()));
            if (this.aUv != null) {
                contentValues.put("latitude", Double.valueOf(this.aUv.getLatitude()));
                contentValues.put("longitude", Double.valueOf(this.aUv.getLongitude()));
            }
            return this.aUA.aTE.insert(Media.EXTERNAL_CONTENT_URI, contentValues);
        } catch (Throwable e) {
            C0090a.bvi("MorphoPanoramaAdapter", "updateDataRes fail", e);
            e.printStackTrace();
            return null;
        }
    }

    private void bkT(String str, int i, int i2) {
        SparseArray sparseArray = new SparseArray();
        int i3 = 1;
        switch (this.aUA.aTU) {
            case 90:
                i3 = 6;
                break;
            case 180:
                i3 = 3;
                break;
            case 270:
                i3 = 8;
                break;
        }
        sparseArray.put(C0523o.BW, Integer.valueOf(i3));
        sparseArray.put(C0523o.BY, C0421M.dC().dD().br());
        sparseArray.put(C0523o.BZ, C0421M.dC().dD().bs());
        sparseArray.put(C0523o.Cc, new C0513e(this.aUA.aTH, 0.01f));
        sparseArray.put(C0523o.Cs, new C0513e(this.aUA.aTI, 0.01f));
        sparseArray.put(C0523o.Cp, Integer.valueOf(i));
        sparseArray.put(C0523o.Cq, Integer.valueOf(i2));
        if (this.aUA.aTA != null) {
            sparseArray.put(C0523o.Cr, this.aUA.aTA);
        }
        if (this.aUv != null) {
            C0616j.apc(this.aUv.getLatitude(), this.aUv.getLongitude(), sparseArray);
        }
        C0616j.app(str, sparseArray);
    }
}
