package com.android.gallery3d.p038a;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.widget.ImageView;
import com.p010a.C0090a;

final class C0879g extends C0878j {
    private final C0870n apC;
    private final int apD;
    private final int apE;
    private boolean apF;
    private final ContentResolver apG;
    final /* synthetic */ C0877f apH;

    public C0879g(C0877f c0877f, ImageView imageView, int i, int i2, ContentResolver contentResolver, C0870n c0870n) {
        this.apH = c0877f;
        super(c0877f, imageView);
        this.apE = i;
        this.apD = i2;
        this.apG = contentResolver;
        this.apC = c0870n;
    }

    protected /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        return aBs((Void[]) objArr);
    }

    protected Bitmap aBs(Void... voidArr) {
        int max;
        int i;
        int i2;
        if (this.apH.apx > this.apE || this.apH.app > this.apD) {
            max = Math.max(Math.round(((float) this.apH.app) / ((float) this.apD)), Math.round(((float) this.apH.apx) / ((float) this.apE)));
        } else {
            max = 1;
        }
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(this.apH.apt, options);
        if (options.outWidth <= 0 || options.outHeight <= 0) {
            i = 0;
            i2 = 0;
        } else {
            i2 = options.outWidth;
            i = options.outHeight;
        }
        if (i2 <= 0 || i <= 0 || (i2 == this.apH.apx && i == this.apH.app)) {
            Options options2 = new Options();
            options2.inSampleSize = max;
            options2.inTempStorage = C0877f.apA;
            if (isCancelled() || !this.apH.aBn()) {
                return null;
            }
            Bitmap decodeFile = BitmapFactory.decodeFile(this.apH.apt, options2);
            if (!(this.apH.apB == 0 || decodeFile == null)) {
                if (isCancelled() || !this.apH.aBn()) {
                    return null;
                }
                Matrix matrix = new Matrix();
                matrix.setRotate((float) this.apH.apB);
                decodeFile = Bitmap.createBitmap(decodeFile, 0, 0, decodeFile.getWidth(), decodeFile.getHeight(), matrix, false);
            }
            return decodeFile;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("width", Integer.valueOf(i2));
        contentValues.put("height", Integer.valueOf(i));
        this.apG.update(this.apH.aAV(), contentValues, null, null);
        this.apF = true;
        C0090a.bvj("CAM_PhotoData", "Uri " + this.apH.aAV() + " has been updated with" + " correct size!");
        return null;
    }

    protected void aBu(Bitmap bitmap) {
        super.aBu(bitmap);
        if (this.apF && this.apC != null) {
            this.apC.aAJ(this.apG, this.apH.aAV());
        }
    }

    protected /* bridge */ /* synthetic */ void onCancelled(Object obj) {
        aBt((Bitmap) obj);
    }

    protected void aBt(Bitmap bitmap) {
        C0090a.m0d("CAM_PhotoData", "onCancelled " + this.apH.apt);
        super.onCancelled(bitmap);
    }
}
