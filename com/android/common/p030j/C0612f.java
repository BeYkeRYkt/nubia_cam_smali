package com.android.common.p030j;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.Surface;
import android.view.Surface.OutOfResourcesException;

class C0612f {
    private final int ZA;
    private final int ZB;
    private final C0611e ZC;
    private int Zy;
    private String Zz;

    public C0612f(int i, int i2, C0611e c0611e, String str, int i3) {
        this.ZB = i;
        this.ZA = i2;
        this.ZC = c0611e;
        this.Zz = str;
        this.Zy = i3;
    }

    public void ahe(Bitmap bitmap) {
        IllegalArgumentException illegalArgumentException;
        OutOfResourcesException outOfResourcesException;
        Throwable th;
        Canvas canvas = null;
        if (bitmap != null) {
            this.ZC.agP(this.ZB, this.ZA, this.Zz, this.Zy);
            Surface agX = this.ZC.agX();
            try {
                Canvas lockCanvas = agX.lockCanvas(null);
                try {
                    int width = lockCanvas.getWidth();
                    int height = lockCanvas.getHeight();
                    Paint paint = new Paint();
                    paint.setColor(-16777216);
                    lockCanvas.drawRect(0.0f, 0.0f, (float) width, (float) height, paint);
                    if (bitmap != null) {
                        int i;
                        int width2 = bitmap.getWidth();
                        int height2 = bitmap.getHeight();
                        if (width2 < width) {
                            i = (width - width2) / 2;
                        } else {
                            i = 0;
                        }
                        if (height > height2) {
                            width2 = (height - height2) / 2;
                        } else {
                            width2 = 0;
                        }
                        lockCanvas.drawBitmap(bitmap, (float) i, (float) width2, null);
                    }
                    bitmap.recycle();
                    if (lockCanvas != null) {
                        agX.unlockCanvasAndPost(lockCanvas);
                    }
                    this.ZC.agQ();
                } catch (IllegalArgumentException e) {
                    IllegalArgumentException illegalArgumentException2 = e;
                    canvas = lockCanvas;
                    illegalArgumentException = illegalArgumentException2;
                    illegalArgumentException.printStackTrace();
                    if (canvas != null) {
                        agX.unlockCanvasAndPost(canvas);
                    }
                    this.ZC.agQ();
                } catch (OutOfResourcesException e2) {
                    OutOfResourcesException outOfResourcesException2 = e2;
                    canvas = lockCanvas;
                    outOfResourcesException = outOfResourcesException2;
                    try {
                        outOfResourcesException.printStackTrace();
                        if (canvas != null) {
                            agX.unlockCanvasAndPost(canvas);
                        }
                        this.ZC.agQ();
                    } catch (Throwable th2) {
                        th = th2;
                        if (canvas != null) {
                            agX.unlockCanvasAndPost(canvas);
                        }
                        this.ZC.agQ();
                        throw th;
                    }
                } catch (Throwable th3) {
                    Throwable th4 = th3;
                    canvas = lockCanvas;
                    th = th4;
                    if (canvas != null) {
                        agX.unlockCanvasAndPost(canvas);
                    }
                    this.ZC.agQ();
                    throw th;
                }
            } catch (IllegalArgumentException e3) {
                illegalArgumentException = e3;
                illegalArgumentException.printStackTrace();
                if (canvas != null) {
                    agX.unlockCanvasAndPost(canvas);
                }
                this.ZC.agQ();
            } catch (OutOfResourcesException e4) {
                outOfResourcesException = e4;
                outOfResourcesException.printStackTrace();
                if (canvas != null) {
                    agX.unlockCanvasAndPost(canvas);
                }
                this.ZC.agQ();
            }
        }
    }
}
