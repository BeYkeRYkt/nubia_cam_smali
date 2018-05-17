package com.android.gallery3d.p038a;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.p010a.C0090a;

abstract class C0878j extends AsyncTask {
    protected ImageView apM;
    final /* synthetic */ C0876e apN;

    protected C0878j(C0876e c0876e, ImageView imageView) {
        this.apN = c0876e;
        this.apM = imageView;
    }

    protected /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        aBu((Bitmap) obj);
    }

    protected void aBu(Bitmap bitmap) {
        if (!this.apN.aBn()) {
            C0090a.m1e("CAM_LocalData", "isUsing " + this.apN.aBn());
        } else if (bitmap == null) {
            C0090a.m1e("CAM_LocalData", "Failed decoding bitmap for file:" + this.apN.apt);
        } else {
            Drawable bitmapDrawable = new BitmapDrawable(bitmap);
            this.apM.setScaleType(ScaleType.FIT_XY);
            this.apM.setImageDrawable(bitmapDrawable);
        }
    }
}
