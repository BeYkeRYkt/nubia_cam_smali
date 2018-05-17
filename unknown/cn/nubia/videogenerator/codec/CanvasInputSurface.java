package cn.nubia.videogenerator.codec;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.view.Surface;
import android.view.Surface.OutOfResourcesException;

public class CanvasInputSurface  {

    private static final String TAG = "CanvasInputSurface";
    public Surface mSurface;
    private int mWidth;
    private int mHeight;
    public CanvasInputSurface(Surface surface, int width, int height) {
    	this.mSurface = surface;
        mWidth = width;
        mHeight = height;
    }
    
    void drawBitmap(Bitmap bitmap,int alpha, int degree){
    	 Canvas canvas = null;
         Bitmap bmp = bitmap;
         try {
             canvas = mSurface.lockCanvas(null);
             int outWidth = canvas.getWidth();
             int outHeight = canvas.getHeight();
             Paint paint = new Paint();
             int color = 0xff000000;// black
             paint.setColor(color);
             canvas.drawRect(0, 0, outWidth, outHeight, paint);
             if (bmp != null) {
                 int bmpWidth = bmp.getWidth();
                 int bmpHeight = bmp.getHeight();
                 if(degree % 180 != 0){
                     int temp = bmpWidth;
                     bmpWidth = bmpHeight;
                     bmpHeight = temp;
                 }
                 int width = 0;
                 int height = 0;
                 float scaleW = (float)outWidth / bmpWidth;
                 float scaleH = (float)outHeight / bmpHeight;
                 float aspect = (float)outWidth / outHeight;
                 float bmpAspect = (float)bmpWidth/bmpHeight;
                 float scale = (bmpAspect > aspect) ? scaleW : scaleH;
                 width = Math.round(scale * bmpWidth);
                 height = Math.round(scale * bmpHeight);
                 Matrix matrix = new Matrix();
                 matrix.preRotate(degree);
                 matrix.preScale(scale, scale);
                 int ratioX = calculateRatio((degree + 90)%360);
                 int ratioY = calculateRatio(degree);
                 matrix.postTranslate((outWidth + ratioX * width) >> 1, (outHeight + ratioY * height) >> 1);
                 paint = new Paint(Paint.FILTER_BITMAP_FLAG | Paint.DITHER_FLAG);
                 paint.setAlpha(alpha);
                 canvas.drawBitmap(bitmap, matrix, paint);
             }
         } catch (IllegalArgumentException e) {
             e.printStackTrace();
         } catch (OutOfResourcesException e) {
             e.printStackTrace();
         } finally {
            // bitmap.recycle();
             bmp = null;
             try{
                 if (canvas != null) {
                     mSurface.unlockCanvasAndPost(canvas);
                 }
             }catch(IllegalArgumentException e) {
                 e.printStackTrace();
             }
         }       
    }
    
    public void drawBitmap(Bitmap bitmap, int degree){
        Canvas canvas = null;
        Bitmap bmp = bitmap;
        try {
            canvas = mSurface.lockCanvas(null);
            int outWidth = canvas.getWidth();
            int outHeight = canvas.getHeight();
            Paint paint = new Paint();
            int color = 0xff000000;// black
            paint.setColor(color);
            canvas.drawRect(0, 0, outWidth, outHeight, paint);
            if (bmp != null) {
                int bmpWidth = bmp.getWidth();
                int bmpHeight = bmp.getHeight();
                if(degree % 180 != 0){
                    int temp = bmpWidth;
                    bmpWidth = bmpHeight;
                    bmpHeight = temp;
                }
                int width = 0;
                int height = 0;
                float scaleW = (float)outWidth / bmpWidth;
                float scaleH = (float)outHeight / bmpHeight;
                float aspect = (float)outWidth / outHeight;
                float bmpAspect = (float)bmpWidth/bmpHeight;
                float scale = (bmpAspect > aspect) ? scaleW : scaleH;
                width = Math.round(scale * bmpWidth);
                height = Math.round(scale * bmpHeight);
                Matrix matrix = new Matrix();
                matrix.preRotate(degree);
                matrix.preScale(scale, scale);
                int ratioX = calculateRatio((degree + 90)%360);
                int ratioY = calculateRatio(degree);
                matrix.postTranslate((outWidth + ratioX * width) >> 1, (outHeight + ratioY * height) >> 1);
                paint = new Paint(Paint.FILTER_BITMAP_FLAG | Paint.DITHER_FLAG);
                canvas.drawBitmap(bitmap, matrix, paint);
            }
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        } catch (OutOfResourcesException e) {
            e.printStackTrace();
        } finally {
            bitmap.recycle();
            bmp = null;
            try{
                if (canvas != null) {
                    mSurface.unlockCanvasAndPost(canvas);
                }
            }catch(IllegalArgumentException e) {
                e.printStackTrace();
            }
        }
    }
    private int calculateRatio(int degree){
        int ratio = -1;
        if((degree / 90) > 1){
            ratio = 1;
        }
        return ratio;
    }
    
    public void release(){
        mSurface.release();
        mSurface = null;
    }

    public int getWidth() {
        return mWidth;
    }

    public int getHeight() {
        return mHeight;
    }
}
