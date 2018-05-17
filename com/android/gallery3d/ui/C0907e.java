package com.android.gallery3d.ui;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import com.android.gallery3d.p038a.C0874d;
import com.p010a.C0090a;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

class C0907e extends AsyncTask {
    final /* synthetic */ C0906d aqH;

    private C0907e(C0906d c0906d) {
        this.aqH = c0906d;
    }

    protected /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        return aEz((C0905c[]) objArr);
    }

    protected Void aEz(C0905c... c0905cArr) {
        if (isCancelled()) {
            return null;
        }
        C0905c c0905c = c0905cArr[0];
        C0874d aAE = this.aqH.aqG.aqb.aAE(c0905c.aDr());
        Uri aAV = aAE.aAV();
        int aAX = aAE.aAX();
        ContentResolver contentResolver = this.aqH.aqG.apV.getContentResolver();
        RectF aDy = c0905c.aDy();
        try {
            Bitmap createBitmap;
            InputStream openInputStream = contentResolver.openInputStream(aAV);
            Options options = new Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(openInputStream, null, options);
            int i = options.outWidth;
            int i2 = options.outHeight;
            if (aAX == 90 || aAX == 270) {
                i = options.outHeight;
                i2 = options.outWidth;
            }
            openInputStream.close();
            RectF rectF = new RectF(0.0f, 0.0f, Math.min((float) this.aqH.aqG.getWidth(), aDy.width()), Math.min((float) this.aqH.aqG.getHeight(), aDy.height()));
            Matrix matrix = new Matrix();
            matrix.setTranslate(Math.max(-aDy.left, 0.0f), Math.max(-aDy.top, 0.0f));
            matrix.postScale(((float) i) / aDy.width(), ((float) i2) / aDy.height(), 0.0f, 0.0f);
            matrix.postTranslate(((float) (-i)) / 2.0f, ((float) (-i2)) / 2.0f);
            matrix.postRotate((float) ((360 - aAX) % 360), 0.0f, 0.0f);
            matrix.postTranslate(((float) options.outWidth) / 2.0f, ((float) options.outHeight) / 2.0f);
            matrix.mapRect(rectF);
            BitmapRegionDecoder newInstance = BitmapRegionDecoder.newInstance(contentResolver.openInputStream(aAV), false);
            options.inJustDecodeBounds = false;
            options.inSampleSize = (int) (((float) i) / aDy.width());
            Bitmap decodeRegion = newInstance.decodeRegion(aEy(rectF), options);
            newInstance.recycle();
            if (aAX != 0) {
                matrix.setRotate((float) aAX);
                createBitmap = Bitmap.createBitmap(decodeRegion, 0, 0, decodeRegion.getWidth(), decodeRegion.getHeight(), matrix, true);
            } else {
                createBitmap = decodeRegion;
            }
            RectF rectF2 = new RectF(0.0f, 0.0f, Math.min((float) this.aqH.aqG.getWidth(), aDy.width()), Math.min((float) this.aqH.aqG.getHeight(), aDy.height()));
            matrix.setTranslate(Math.max(-aDy.left, 0.0f), Math.max(-aDy.top, 0.0f));
            matrix.postScale(((float) c0905c.aqx.getWidth()) / aDy.width(), ((float) c0905c.aqx.getHeight()) / aDy.height(), 0.0f, 0.0f);
            matrix.mapRect(rectF2);
            ((C0912i) c0905c.aqx).aEU(createBitmap, rectF2);
        } catch (FileNotFoundException e) {
            C0090a.m1e("FilmStripView", "FileNotFoundException " + e.getMessage());
        } catch (IOException e2) {
            C0090a.m1e("FilmStripView", "IOException " + e2.getMessage());
        }
        return null;
    }

    private Rect aEy(RectF rectF) {
        return new Rect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }
}
