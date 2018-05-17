package com.android.pretty;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import com.android.camera.R;
import com.android.common.C0616j;
import com.p010a.C0090a;
import java.util.List;

public class GalleryFlow extends View {
    private double atD = 0.0d;
    private int atE;
    private int atF;
    private int atG;
    private int atH;
    private Bitmap atI = null;
    private int atJ = 0;
    private List atK = null;
    private int atL = 540;
    private int atM = 0;
    private boolean atN = false;
    private List atO = null;
    private boolean atP = true;
    private int atQ = getResources().getDimensionPixelSize(R.dimen.dimens_15);
    private int atR = 0;
    private Bitmap atS = null;
    private C1067j atT = null;
    private Paint atU = new Paint(1);
    private PaintFlagsDrawFilter atV = new PaintFlagsDrawFilter(0, 3);
    private int atW = getResources().getDimensionPixelSize(R.dimen.dimens_15);
    private Bitmap atX = null;
    private boolean[] atY;
    private int atZ;
    private float aua = 1.0f;
    private int aub = 0;
    private boolean auc = true;
    private int aud;

    public GalleryFlow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.atU.setAntiAlias(true);
    }

    protected void onMeasure(int i, int i2) {
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(i2, 1073741824);
        if (this.atK.size() > 0) {
            int abs = (int) (850.0d - Math.abs(Math.cos((double) ((float) Math.asin((double) (((float) (this.atL - (this.atG / 2))) / 850.0f)))) * 850.0d));
            makeMeasureSpec = (((((int) ((((float) this.atF) * 1.3f) + 0.5f)) - this.atF) + this.atF) + abs) + 40;
        }
        super.onMeasure(i, MeasureSpec.makeMeasureSpec(makeMeasureSpec, 1073741824));
    }

    public void aHP(C1067j c1067j) {
        this.atT = c1067j;
    }

    private boolean aHM() {
        boolean z = false;
        int i;
        if (this.auc) {
            i = 0;
            while (i < this.atM) {
                if (!this.atY[i] && this.atY[i + 1]) {
                    this.atY[i] = true;
                    z = true;
                    break;
                }
                i++;
            }
            i = this.atM + 1;
            while (i < this.atK.size()) {
                if (this.atY[i - 1] && !this.atY[i]) {
                    this.atY[i] = true;
                    z = true;
                }
                i++;
            }
            return z;
        }
        boolean z2;
        i = 0;
        while (i < this.atM) {
            if (!this.atY[i] || i != 0) {
                if (i > 0 && !this.atY[i - 1] && this.atY[i]) {
                    this.atY[i] = false;
                    z2 = true;
                    break;
                }
                i++;
            } else {
                this.atY[i] = false;
                z2 = true;
                break;
            }
        }
        z2 = false;
        int i2 = this.atM + 1;
        while (i2 < this.atK.size()) {
            if (!this.atY[i2] || this.atK.size() - 1 != i2) {
                if (i2 < this.atK.size() - 1 && !this.atY[i2 + 1] && this.atY[i2]) {
                    this.atY[i2] = false;
                    z2 = true;
                    break;
                }
                i2++;
            } else {
                this.atY[i2] = false;
                z2 = true;
                break;
            }
        }
        if (z2) {
            return z2;
        }
        if (!this.atY[this.atM]) {
            return z2;
        }
        this.atY[this.atM] = false;
        return true;
    }

    public void aHO(List list, List list2, int i) {
        this.atK = list;
        this.atO = list2;
        this.atG = ((Bitmap) this.atO.get(0)).getWidth();
        this.atF = ((Bitmap) this.atO.get(0)).getHeight();
        this.atH = (int) ((((float) this.atG) * 1.3f) / 1.0f);
        this.atE = (int) ((((float) this.atF) * 1.3f) / 1.0f);
        float f = ((float) this.atF) / ((float) this.atG);
        if (Math.abs(((double) f) - 1.3333333333333333d) < Math.abs(((double) f) - 1.7777777777777777d)) {
            this.atQ = getResources().getDimensionPixelSize(R.dimen.dimens_25);
            this.atW = getResources().getDimensionPixelSize(R.dimen.dimens_25);
        } else {
            this.atQ = getResources().getDimensionPixelSize(R.dimen.dimens_30);
            this.atW = getResources().getDimensionPixelSize(R.dimen.dimens_30);
        }
        this.aud = (((C0616j.apG() - this.atQ) - this.atW) - (this.atG * this.atK.size())) / (this.atK.size() - 1);
        if (this.atX != null) {
            this.atX.recycle();
        }
        if (this.atS != null) {
            this.atS.recycle();
        }
        if (this.atI != null) {
            this.atI.recycle();
        }
        this.atX = C1088u.aJy(this.atG, this.atF, Color.argb(255, 0, 183, 247));
        this.atS = C1088u.aJy(this.atG, this.atF, Color.argb(255, 204, 204, 204));
        this.atI = C1088u.aJy(this.atG, this.atF, Color.argb(255, 255, 0, 0));
        this.atY = new boolean[this.atK.size()];
        this.atM = i;
        this.atJ = i;
        for (int i2 = 0; i2 < this.atK.size(); i2++) {
            if (i2 == this.atM) {
                this.atY[i2] = true;
            } else {
                this.atY[i2] = false;
            }
        }
        setVisibility(0);
        invalidate();
    }

    private Matrix aHK(float f, Bitmap bitmap) {
        Matrix matrix = new Matrix();
        matrix.postRotate(360.0f - f, ((float) bitmap.getWidth()) / 2.0f, ((float) bitmap.getHeight()) / 2.0f);
        return matrix;
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.atK != null && getVisibility() == 0) {
            aHN();
            for (int i = 0; i < this.atK.size(); i++) {
                aHC(canvas, aHD(this.atK.size(), i), false);
            }
            aHC(canvas, this.atM, true);
            if (aHM()) {
                invalidate();
            } else if (!this.auc) {
                setVisibility(8);
            }
        }
    }

    private int aHI(int i) {
        return ((this.atG * i) + (this.aud * i)) + this.atQ;
    }

    private int aHJ(int i) {
        int size = this.atK.size();
        return (C0616j.apG() - (((((size - 1) - i) * this.aud) + (((size - 1) - i) * this.atG)) + this.atG)) - this.atW;
    }

    private void aHN() {
        if ((this.atM != 0 || this.aub >= 0) && (this.atM != this.atK.size() - 1 || this.aub <= 0)) {
            int aHI = aHI(this.atM - 1);
            int aHJ = aHJ(this.atM + 1);
            int aHE = aHE(this.atM);
            int i = this.atM;
            if (this.aub + aHE >= aHJ) {
                this.atM += (((this.aub + aHE) - aHJ) / (this.atG + this.aud)) + 1;
                this.aub -= (aHJ - aHE) + ((this.atG + this.aud) * ((this.atM - i) - 1));
            } else if (this.aub + aHE <= aHI) {
                this.atM -= ((aHI - (this.aub + aHE)) / (this.atG + this.aud)) + 1;
                this.aub += (aHE - aHI) + ((this.atG + this.aud) * ((i - this.atM) - 1));
            }
            if (this.atN && this.aub != 0) {
                if (this.aub < 0 && Math.abs(this.aub) > (aHE - aHI) / 2) {
                    this.atM--;
                } else if (this.aub > 0 && Math.abs(this.aub) > (aHJ - aHE) / 2) {
                    this.atM++;
                }
                this.aub = 0;
            }
            if (this.atM > this.atK.size() - 1) {
                this.atM = this.atK.size() - 1;
                this.aub = 0;
            } else if (this.atM < 0) {
                this.atM = 0;
                this.aub = 0;
            }
            if (this.atN || this.aub == 0) {
                this.atR = 0;
            } else if (this.atM > i) {
                this.atR = 2;
            } else if (this.atM < i) {
                this.atR = 1;
            } else if (this.aub == 0) {
                this.atR = 0;
            } else if (this.aub < 0) {
                this.atR = 1;
            } else {
                this.atR = 2;
            }
            if (this.aub == 0) {
                this.aua = 0.0f;
            } else if (this.aub > 0) {
                this.aua = ((float) this.aub) / ((float) (aHE(this.atM + 1) - aHE));
                this.aua = ((float) Math.round(this.aua * 100.0f)) / 100.0f;
            } else {
                this.aua = ((float) this.aub) / ((float) (aHE(this.atM - 1) - aHE));
                this.aua = ((float) Math.round(this.aua * 100.0f)) / 100.0f;
            }
            if (this.atM != i) {
                aHL(this.atM, 0, 0);
            }
            return;
        }
        this.aub = 0;
    }

    private void aHL(int i, int i2, int i3) {
        if (this.atT != null) {
            this.atT.aHQ(i);
        }
    }

    private float aHH(int i, boolean z) {
        return (aHG(i, z) * ((float) this.atG)) / 1.0f;
    }

    private float aHF(int i, boolean z) {
        return (aHG(i, z) * ((float) this.atF)) / 1.0f;
    }

    private float aHG(int i, boolean z) {
        if (i == this.atM && z) {
            return 1.3f;
        }
        if (this.aub > 0) {
            if (i - this.atM == -1) {
                return 1.15f - (this.aua * 0.049999952f);
            }
            if (i - this.atM == -2) {
                return 1.1f - (this.aua * 0.100000024f);
            }
            if (i - this.atM == 1) {
                return (this.aua * 0.14999998f) + 1.15f;
            }
            if (i - this.atM == 2) {
                return (this.aua * 0.049999952f) + 1.1f;
            }
            if (i - this.atM == 3) {
                return 1.0f + (this.aua * 0.100000024f);
            }
            if (i == this.atM) {
                return 1.2f - (this.aua * 0.05000007f);
            }
            return 1.0f;
        } else if (this.aub < 0) {
            if (i - this.atM == -1) {
                return (this.aua * 0.14999998f) + 1.15f;
            }
            if (i - this.atM == -2) {
                return (this.aua * 0.049999952f) + 1.1f;
            }
            if (i - this.atM == 1) {
                return 1.15f - (this.aua * 0.049999952f);
            }
            if (i - this.atM == 2) {
                return 1.1f - (this.aua * 0.100000024f);
            }
            if (i - this.atM == -3) {
                return 1.0f + (this.aua * 0.100000024f);
            }
            if (i == this.atM) {
                return 1.2f - (this.aua * 0.05000007f);
            }
            return 1.0f;
        } else if (Math.abs(i - this.atM) == 1) {
            return 1.15f;
        } else {
            if (Math.abs(i - this.atM) == 2) {
                return 1.1f;
            }
            if (i == this.atM) {
                return 1.2f;
            }
            return 1.0f;
        }
    }

    private void aHC(Canvas canvas, int i, boolean z) {
        float aHJ;
        this.atK.size();
        if (i > this.atM) {
            aHJ = (float) aHJ(i);
        } else if (i < this.atM) {
            aHJ = (float) aHI(i);
        } else if (z) {
            if (this.atR == 1) {
                aHJ = (float) aHJ(this.atM);
            } else if (this.atR == 2) {
                aHJ = (float) aHI(this.atM);
            } else {
                aHJ = (float) aHE(this.atM);
            }
            if (z) {
                aHJ += (float) this.aub;
            }
        } else if (this.aub > 0) {
            aHJ = (float) aHI(i);
        } else if (this.aub < 0) {
            aHJ = (float) aHJ(i);
        } else {
            aHJ = (float) aHE(this.atM);
        }
        aHJ += ((float) this.atG) / 2.0f;
        float aHH = aHJ - (aHH(i, z) / 2.0f);
        aHJ = (float) Math.asin((double) ((((float) this.atL) - aHJ) / 850.0f));
        float f = (float) (((double) (180.0f * aHJ)) / 3.141592653589793d);
        aHJ = (float) (850.0d - Math.abs(Math.cos((double) aHJ) * 850.0d));
        float aHF = (((float) (this.atE / 2)) - (aHF(i, z) / 2.0f)) + 10.0f;
        canvas.save();
        canvas.translate(aHH, aHJ + aHF);
        canvas.scale(aHG(i, z), aHG(i, z));
        canvas.setDrawFilter(this.atV);
        if (this.atK.get(i) == null) {
            C0090a.bvo("GalleryFlow", "bitmapPosition = " + i);
        }
        canvas.drawBitmap((Bitmap) this.atK.get(i), aHK(f, (Bitmap) this.atK.get(i)), this.atU);
        if (z) {
            canvas.setDrawFilter(this.atV);
            canvas.drawBitmap(this.atX, aHK(f, this.atX), this.atU);
        } else {
            canvas.setDrawFilter(this.atV);
            canvas.drawBitmap(i == this.atJ ? this.atI : this.atS, aHK(f, i == this.atJ ? this.atI : this.atS), this.atU);
        }
        canvas.restore();
    }

    private int aHD(int i, int i2) {
        if (i2 < this.atM) {
            return i2;
        }
        if (i2 > this.atM) {
            return ((i - 1) - i2) + this.atM;
        }
        return i - 1;
    }

    private int aHE(int i) {
        if (i == 0) {
            return aHJ(i);
        }
        if (i == this.atK.size() - 1) {
            return aHI(i);
        }
        return (((aHI(i - 1) + aHJ(i + 1)) + this.atG) / 2) - (this.atG / 2);
    }

    public boolean aHB(MotionEvent motionEvent) {
        if (this.atK == null || this.atK.isEmpty()) {
            return false;
        }
        int x = (int) motionEvent.getX();
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.atP = true;
                this.atN = false;
                if (this.atP) {
                    this.aub = (x - aHE(this.atM)) - (this.atG / 2);
                    this.atZ = x;
                    break;
                }
                break;
            case 1:
            case 3:
                if (this.atP) {
                    this.aub += x - this.atZ;
                    this.atZ = x;
                    this.atN = true;
                    break;
                }
                break;
            case 2:
                this.atN = false;
                if (this.atP) {
                    this.aub += x - this.atZ;
                    this.atZ = x;
                    break;
                }
                break;
        }
        invalidate();
        return true;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (aHB(motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }
}
