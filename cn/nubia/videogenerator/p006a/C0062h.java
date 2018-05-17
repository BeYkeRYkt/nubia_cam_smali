package cn.nubia.videogenerator.p006a;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.view.Surface;
import android.view.Surface.OutOfResourcesException;

public class C0062h {
    public Surface brh;
    private int bri;
    private int brj;

    public C0062h(Surface surface, int i, int i2) {
        this.brh = surface;
        this.bri = i;
        this.brj = i2;
    }

    public void bOf(Bitmap bitmap, int i) {
        IllegalArgumentException e;
        Throwable th;
        OutOfResourcesException outOfResourcesException;
        Canvas canvas = null;
        try {
            Canvas lockCanvas = this.brh.lockCanvas(null);
            try {
                int width = lockCanvas.getWidth();
                int height = lockCanvas.getHeight();
                Paint paint = new Paint();
                paint.setColor(-16777216);
                lockCanvas.drawRect(0.0f, 0.0f, (float) width, (float) height, paint);
                if (bitmap != null) {
                    int width2 = bitmap.getWidth();
                    int height2 = bitmap.getHeight();
                    if (i % 180 != 0) {
                        int i2 = width2;
                        width2 = height2;
                        height2 = i2;
                    }
                    float f = ((float) width) / ((float) width2);
                    float f2 = ((float) height) / ((float) height2);
                    if (((float) width2) / ((float) height2) <= ((float) width) / ((float) height)) {
                        f = f2;
                    }
                    width2 = Math.round(((float) width2) * f);
                    height2 = Math.round(((float) height2) * f);
                    Matrix matrix = new Matrix();
                    matrix.preRotate((float) i);
                    matrix.preScale(f, f);
                    matrix.postTranslate((float) (((width2 * bOg((i + 90) % 360)) + width) >> 1), (float) (((height2 * bOg(i)) + height) >> 1));
                    lockCanvas.drawBitmap(bitmap, matrix, new Paint(6));
                }
                bitmap.recycle();
                if (lockCanvas != null) {
                    try {
                        this.brh.unlockCanvasAndPost(lockCanvas);
                    } catch (IllegalArgumentException e2) {
                        e2.printStackTrace();
                    }
                }
            } catch (IllegalArgumentException e3) {
                IllegalArgumentException illegalArgumentException = e3;
                canvas = lockCanvas;
                e2 = illegalArgumentException;
                try {
                    e2.printStackTrace();
                    bitmap.recycle();
                    if (canvas != null) {
                        try {
                            this.brh.unlockCanvasAndPost(canvas);
                        } catch (IllegalArgumentException e22) {
                            e22.printStackTrace();
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bitmap.recycle();
                    if (canvas != null) {
                        try {
                            this.brh.unlockCanvasAndPost(canvas);
                        } catch (IllegalArgumentException e32) {
                            e32.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (OutOfResourcesException e4) {
                OutOfResourcesException outOfResourcesException2 = e4;
                canvas = lockCanvas;
                outOfResourcesException = outOfResourcesException2;
                outOfResourcesException.printStackTrace();
                bitmap.recycle();
                if (canvas != null) {
                    try {
                        this.brh.unlockCanvasAndPost(canvas);
                    } catch (IllegalArgumentException e222) {
                        e222.printStackTrace();
                    }
                }
            } catch (Throwable th3) {
                Throwable th4 = th3;
                canvas = lockCanvas;
                th = th4;
                bitmap.recycle();
                if (canvas != null) {
                    this.brh.unlockCanvasAndPost(canvas);
                }
                throw th;
            }
        } catch (IllegalArgumentException e5) {
            e222 = e5;
            e222.printStackTrace();
            bitmap.recycle();
            if (canvas != null) {
                this.brh.unlockCanvasAndPost(canvas);
            }
        } catch (OutOfResourcesException e6) {
            outOfResourcesException = e6;
            outOfResourcesException.printStackTrace();
            bitmap.recycle();
            if (canvas != null) {
                this.brh.unlockCanvasAndPost(canvas);
            }
        }
    }

    private int bOg(int i) {
        if (i / 90 <= 1) {
            return -1;
        }
        return 1;
    }

    public void release() {
        this.brh.release();
        this.brh = null;
    }

    public int bOh() {
        return this.bri;
    }

    public int bOi() {
        return this.brj;
    }
}
