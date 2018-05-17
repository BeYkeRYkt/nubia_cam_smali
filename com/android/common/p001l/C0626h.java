package com.android.common.p001l;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore.Video.Media;
import com.android.common.appService.C0329e;
import com.android.common.p025c.C0374d;
import com.android.common.p028h.C0557a;
import com.android.common.storagemanager.C0718a;
import com.p010a.C0090a;

public class C0626h extends C0621f {
    private ContentResolver aaI = null;
    private String aaJ;
    private ContentValues aaK;
    private int aaL;
    private C0557a aaM;
    private int aaN;

    public C0626h(C0329e c0329e, ContentValues contentValues, String str, int i, C0010g c0010g) {
        super(c0329e, null);
        this.aaM = c0329e.Th();
        this.aaN = c0329e.Vg();
        this.aaI = c0329e.TF();
        this.aaK = contentValues;
        this.aaJ = str;
        this.aaG.aeu = c0010g;
        this.aaL = i;
    }

    public C0718a ahi() {
        this.aaG.aet = aho();
        if (this.aaG.aet != null) {
            this.aaI.update(this.aaG.aet, this.aaK, null, null);
        } else {
            this.aaG.aet = this.aaI.insert(Media.EXTERNAL_CONTENT_URI, this.aaK);
        }
        C0090a.bvm("VideoUpdateDatabaseRequest", "addVideoToMediaStore mCurrentVideoUri=" + this.aaG.aet);
        return this.aaG;
    }

    private Uri aho() {
        Uri parse;
        Throwable e;
        Cursor cursor = null;
        Cursor query;
        try {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("(").append("_data").append("=").append("'" + this.aaJ + "'").append(")");
            query = this.aaI.query(Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, stringBuffer.toString(), null, null);
            if (query != null) {
                try {
                    if (query.getCount() > 0) {
                        query.moveToFirst();
                        parse = Uri.parse(Media.EXTERNAL_CONTENT_URI + "/" + query.getInt(query.getColumnIndex("_id")));
                    }
                } catch (Exception e2) {
                    e = e2;
                    try {
                        C0090a.bvi("VideoUpdateDatabaseRequest", "getUriFromFile failed!", e);
                        if (query != null) {
                            query.close();
                        }
                        return parse;
                    } catch (Throwable th) {
                        e = th;
                        cursor = query;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw e;
                    }
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Exception e3) {
            e = e3;
            query = null;
            C0090a.bvi("VideoUpdateDatabaseRequest", "getUriFromFile failed!", e);
            if (query != null) {
                query.close();
            }
            return parse;
        } catch (Throwable th2) {
            e = th2;
            if (cursor != null) {
                cursor.close();
            }
            throw e;
        }
        return parse;
    }

    public void ahj(C0718a c0718a) {
        this.aaM.afj(new C0374d(this.aaG.aet, this.aaJ, this.aaN, this.aaL));
    }
}
