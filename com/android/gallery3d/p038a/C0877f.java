package com.android.gallery3d.p038a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.provider.MediaStore.Images.Media;
import android.widget.ImageView;
import com.p010a.C0090a;
import java.util.Date;

public final class C0877f extends C0876e {
    private static final byte[] apA = new byte[32768];
    static final Uri apy = Media.EXTERNAL_CONTENT_URI;
    static final String[] apz = new String[]{"_id", "title", "mime_type", "datetaken", "date_modified", "_data", "orientation", "width", "height", "_size", "latitude", "longitude"};
    private final int apB;

    public C0877f(long j, String str, String str2, long j2, long j3, String str3, int i, int i2, int i3, long j4, double d, double d2) {
        super(j, str, str2, j2, j3, str3, i2, i3, j4, d, d2);
        this.apB = i;
    }

    static C0877f aBo(Cursor cursor) {
        long j = cursor.getLong(0);
        String string = cursor.getString(1);
        String string2 = cursor.getString(2);
        long j2 = cursor.getLong(3);
        long j3 = cursor.getLong(4);
        String string3 = cursor.getString(5);
        int i = cursor.getInt(6);
        int i2 = cursor.getInt(7);
        int i3 = cursor.getInt(8);
        if (i2 <= 0 || i3 <= 0) {
            C0090a.bvj("CAM_PhotoData", "Zero dimension in ContentResolver for " + string3 + ":" + i2 + "x" + i3);
            Options options = new Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(string3, options);
            if (options.outWidth <= 0 || options.outHeight <= 0) {
                C0090a.bvj("CAM_PhotoData", "Dimension decode failed for " + string3);
                Bitmap decodeFile = BitmapFactory.decodeFile(string3);
                if (decodeFile == null) {
                    C0090a.bvj("CAM_PhotoData", "PhotoData skipped. Decoding " + string3 + "failed.");
                    return null;
                }
                i2 = decodeFile.getWidth();
                i3 = decodeFile.getHeight();
                if (i2 == 0 || i3 == 0) {
                    C0090a.bvj("CAM_PhotoData", "PhotoData skipped. Bitmap size 0 for " + string3);
                    return null;
                }
            }
            i2 = options.outWidth;
            i3 = options.outHeight;
        }
        return new C0877f(j, string, string2, j2, j3, string3, i, i2, i3, cursor.getLong(9), cursor.getDouble(10), cursor.getDouble(11));
    }

    public int aAX() {
        return this.apB;
    }

    public String toString() {
        return "Photo:,data=" + this.apt + ",mimeType=" + this.aps + "," + this.apx + "x" + this.app + ",orientation=" + this.apB + ",date=" + new Date(this.apo);
    }

    public int aAY() {
        return 2;
    }

    public boolean aBa(int i) {
        return (i & 7) == i;
    }

    public boolean aBm(int i) {
        return (i & 2) == i;
    }

    public boolean aBe(Context context) {
        context.getContentResolver().delete(apy, "_id=" + this.apm, null);
        return super.aBe(context);
    }

    public Uri aAV() {
        return apy.buildUpon().appendPath(String.valueOf(this.apm)).build();
    }

    public C0875o aBp(ContentResolver contentResolver) {
        Cursor query = contentResolver.query(aAV(), apz, null, null, null);
        if (query == null || !query.moveToFirst()) {
            return null;
        }
        return C0877f.aBo(query);
    }

    protected C0878j aBg(ImageView imageView, int i, int i2, ContentResolver contentResolver, C0870n c0870n) {
        return new C0879g(this, imageView, i, i2, contentResolver, c0870n);
    }
}
