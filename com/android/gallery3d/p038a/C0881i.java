package com.android.gallery3d.p038a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaMetadataRetriever;
import android.widget.ImageView;
import com.p010a.C0090a;

final class C0881i extends C0878j {
    final /* synthetic */ C0880h apL;

    public C0881i(C0880h c0880h, ImageView imageView) {
        this.apL = c0880h;
        super(c0880h, imageView);
    }

    protected /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        return aBw((Void[]) objArr);
    }

    protected Bitmap aBw(Void... voidArr) {
        IllegalArgumentException illegalArgumentException;
        Bitmap bitmap;
        IllegalArgumentException illegalArgumentException2;
        Bitmap bitmap2 = null;
        if (isCancelled() || !this.apL.aBn()) {
            return null;
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            mediaMetadataRetriever.setDataSource(this.apL.apt);
            byte[] embeddedPicture = mediaMetadataRetriever.getEmbeddedPicture();
            if (!isCancelled() && this.apL.aBn()) {
                if (embeddedPicture != null) {
                    bitmap2 = BitmapFactory.decodeByteArray(embeddedPicture, 0, embeddedPicture.length);
                }
                if (bitmap2 == null) {
                    try {
                        bitmap2 = mediaMetadataRetriever.getFrameAtTime();
                    } catch (IllegalArgumentException e) {
                        illegalArgumentException = e;
                        bitmap = bitmap2;
                        illegalArgumentException2 = illegalArgumentException;
                        C0090a.m1e("CAM_LocalData", "MediaMetadataRetriever.setDataSource() fail:" + illegalArgumentException2.getMessage());
                        bitmap2 = bitmap;
                        mediaMetadataRetriever.release();
                        return bitmap2;
                    }
                }
            }
        } catch (IllegalArgumentException e2) {
            illegalArgumentException = e2;
            bitmap = null;
            illegalArgumentException2 = illegalArgumentException;
            C0090a.m1e("CAM_LocalData", "MediaMetadataRetriever.setDataSource() fail:" + illegalArgumentException2.getMessage());
            bitmap2 = bitmap;
            mediaMetadataRetriever.release();
            return bitmap2;
        }
        mediaMetadataRetriever.release();
        return bitmap2;
    }
}
