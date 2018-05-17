package com.android.gallery3d.p038a;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.provider.MediaStore.Video.Media;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.android.camera.R;
import com.p010a.C0090a;
import java.util.Date;

public final class C0880h extends C0876e {
    static final Uri apI = Media.EXTERNAL_CONTENT_URI;
    static final String[] apJ = new String[]{"_id", "title", "mime_type", "datetaken", "date_modified", "_data", "width", "height", "resolution", "_size", "latitude", "longitude", "duration"};
    private long apK;

    public C0880h(long j, String str, String str2, long j2, long j3, String str3, int i, int i2, long j4, double d, double d2, long j5) {
        super(j, str, str2, j2, j3, str3, i, i2, j4, d, d2);
        this.apK = j5;
    }

    static C0880h aBv(Cursor cursor) {
        long j = cursor.getLong(0);
        String string = cursor.getString(1);
        String string2 = cursor.getString(2);
        long j2 = cursor.getLong(3);
        long j3 = cursor.getLong(4);
        String string3 = cursor.getString(5);
        int i = cursor.getInt(6);
        int i2 = cursor.getInt(7);
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            mediaMetadataRetriever.setDataSource(string3);
            String extractMetadata = mediaMetadataRetriever.extractMetadata(24);
            if (i == 0 || i2 == 0) {
                String extractMetadata2 = mediaMetadataRetriever.extractMetadata(18);
                i2 = extractMetadata2 == null ? 0 : Integer.parseInt(extractMetadata2);
                String extractMetadata3 = mediaMetadataRetriever.extractMetadata(19);
                if (extractMetadata3 == null) {
                    i = i2;
                    i2 = 0;
                } else {
                    int parseInt = Integer.parseInt(extractMetadata3);
                    i = i2;
                    i2 = parseInt;
                }
            }
            mediaMetadataRetriever.release();
            if (i == 0 || i2 == 0) {
                C0090a.m1e("CAM_LocalData", "Unable to retrieve dimension of video:" + string3);
                return null;
            }
            int i3;
            if (extractMetadata == null) {
                i3 = i2;
            } else if (extractMetadata.equals("90") || extractMetadata.equals("270")) {
                i3 = i;
                i = i2;
            } else {
                i3 = i2;
            }
            return new C0880h(j, string, string2, j2, j3, string3, i, i3, cursor.getLong(9), cursor.getDouble(10), cursor.getDouble(11), cursor.getLong(12) / 1000);
        } catch (RuntimeException e) {
            mediaMetadataRetriever.release();
            C0090a.m1e("CAM_LocalData", "MediaMetadataRetriever.setDataSource() fail:" + e.getMessage());
            return null;
        }
    }

    public String toString() {
        return "Video:,data=" + this.apt + ",mimeType=" + this.aps + "," + this.apx + "x" + this.app + ",date=" + new Date(this.apo);
    }

    public int aAY() {
        return 2;
    }

    public boolean aBa(int i) {
        return (i & 3) == i;
    }

    public boolean aBm(int i) {
        return (i & 3) == i;
    }

    public boolean aBe(Context context) {
        context.getContentResolver().delete(apI, "_id=" + this.apm, null);
        return super.aBe(context);
    }

    public Uri aAV() {
        return apI.buildUpon().appendPath(String.valueOf(this.apm)).build();
    }

    public C0875o aBp(ContentResolver contentResolver) {
        Cursor query = contentResolver.query(aAV(), apJ, null, null, null);
        if (query == null || !query.moveToFirst()) {
            return null;
        }
        return C0880h.aBv(query);
    }

    public View aBl(Activity activity, int i, int i2, Drawable drawable, C0870n c0870n) {
        View imageView = new ImageView(activity);
        imageView.setLayoutParams(new LayoutParams(-1, -1, 17));
        aBf(activity, imageView, i, i2, drawable, c0870n);
        View imageView2 = new ImageView(activity);
        imageView2.setImageResource(R.drawable.ic_control_play);
        imageView2.setScaleType(ScaleType.CENTER);
        imageView2.setLayoutParams(new LayoutParams(-2, -2, 17));
        imageView2.setOnClickListener(new C0888t(this, activity));
        View frameLayout = new FrameLayout(activity);
        frameLayout.addView(imageView);
        frameLayout.addView(imageView2);
        return frameLayout;
    }

    protected C0878j aBg(ImageView imageView, int i, int i2, ContentResolver contentResolver, C0870n c0870n) {
        return new C0881i(this, imageView);
    }
}
