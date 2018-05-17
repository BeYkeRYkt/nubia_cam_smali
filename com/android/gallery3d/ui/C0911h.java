package com.android.gallery3d.ui;

import android.graphics.Rect;
import cn.nubia.p005e.C0049a;
import com.android.camera.R;
import com.android.common.C0259A;
import com.android.gallery3d.p038a.C0874d;
import com.p010a.C0090a;

class C0911h implements C0910k {
    private float aqP;
    private float aqQ;
    final /* synthetic */ FilmStripView aqR;

    private C0911h(FilmStripView filmStripView) {
        this.aqR = filmStripView;
    }

    public boolean aES(float f, float f2) {
        C0905c c0905c = this.aqR.aqr[2];
        if (this.aqR.aCb()) {
            if (c0905c != null && c0905c.aDo(f, f2)) {
                this.aqR.apZ.aDm();
                return true;
            }
        } else if (this.aqR.aCc()) {
            int i = -1;
            if (c0905c != null) {
                i = c0905c.aDr();
            }
            this.aqR.aqk.aDj(i);
            return true;
        }
        return false;
    }

    public boolean aEK(float f, float f2) {
        C0905c c0905c = this.aqR.aqr[2];
        if (this.aqR.aCb() && c0905c != null) {
            this.aqR.apZ.aDm();
            return true;
        } else if (this.aqR.aqn < 1.0f || c0905c == null || !this.aqR.apZ.aEj(false)) {
            return false;
        } else {
            this.aqR.aqk.aDk(false);
            this.aqR.apZ.aEk(c0905c, f, f2);
            return true;
        }
    }

    public boolean aEN(float f, float f2) {
        if (this.aqR.aCc()) {
            C0905c c0905c = this.aqR.aqr[2];
            if (c0905c != null && c0905c.aDy().contains(f, f2) && C0049a.bPY(this.aqR.aqb.aAF(c0905c.aDr()).aBj())) {
                C0259A.avE(this.aqR.apV, R.string.can_not_play_livephoto_in_visitor_mode);
            }
        }
        return false;
    }

    public boolean aEL(float f, float f2) {
        this.aqR.apZ.aDN();
        if (!this.aqR.apZ.aEj(false)) {
            return false;
        }
        if (this.aqR.apZ.aEb()) {
            this.aqR.apZ.aDO();
            this.aqR.aqt.setVisibility(8);
        }
        return true;
    }

    public boolean aET(float f, float f2) {
        C0905c c0905c = this.aqR.aqr[2];
        if (c0905c == null || this.aqR.apZ.aEa() || this.aqR.apZ.aDX()) {
            return false;
        }
        if (this.aqR.apZ.aEb()) {
            this.aqR.apZ.aEd();
            return true;
        }
        int i;
        float height = (float) (this.aqR.getHeight() / 2);
        this.aqR.aqh = false;
        for (i = 0; i < 5; i++) {
            if (this.aqR.aqr[i] != null) {
                float aDu = this.aqR.aqr[i].aDu(this.aqR.aqn);
                if (aDu != 0.0f) {
                    int aDr = this.aqR.aqr[i].aDr();
                    if (this.aqR.aqb.aAE(aDr).aBa(2) && aDu > height) {
                        C0090a.m0d("FilmStripView", "demoteData");
                        this.aqR.aBU(i, aDr);
                    } else if (!this.aqR.aqb.aAE(aDr).aBa(1) || aDu >= (-height)) {
                        C0090a.m0d("FilmStripView", "put the view back");
                        this.aqR.aqr[i].aDx().animate().translationY(0.0f).alpha(1.0f).setDuration(400).start();
                    } else {
                        C0090a.m0d("FilmStripView", "promoteData");
                        this.aqR.aCi(i, aDr);
                    }
                }
            }
        }
        i = c0905c.aDr();
        if (this.aqR.apX > c0905c.aDq() + 300 && i == 0 && this.aqR.aCa() == 1 && this.aqR.aqc == 0) {
            this.aqR.apZ.aDl();
            if (this.aqR.aqr[3] != null) {
                this.aqR.apZ.aEg(this.aqR.aqr[3].aDq(), 400, false);
            } else {
                this.aqR.aCq();
            }
        }
        if (this.aqR.apX == c0905c.aDq() && i == 0 && this.aqR.aCa() == 1) {
            this.aqR.apZ.aDm();
        } else if (this.aqR.aqb.aAG() > 0) {
            this.aqR.aCq();
        }
        return false;
    }

    public boolean aER(float f, float f2, float f3, float f4) {
        if (this.aqR.aqr[2] == null) {
            return false;
        }
        if (this.aqR.apZ.aEb()) {
            this.aqR.apZ.aDO();
            C0905c c0905c = this.aqR.aqr[2];
            c0905c.aDL(c0905c.aDv() - f3, c0905c.aDw() - f4, this.aqR.aqn, this.aqR.aqn, this.aqR.aqe.width(), this.aqR.aqe.height());
            return true;
        }
        int aCG = (int) (f3 / this.aqR.aqn);
        this.aqR.apZ.aEj(true);
        if (!this.aqR.aqh) {
            this.aqR.aqh = true;
            this.aqR.aqc = this.aqR.aqr[2].aDr();
        }
        if (this.aqR.aCb()) {
            if (Math.abs(f3) > Math.abs(f4)) {
                this.aqR.apZ.aEf((float) aCG);
            } else {
                Rect rect = new Rect();
                aCG = 0;
                while (aCG < 5) {
                    if (this.aqR.aqr[aCG] != null) {
                        this.aqR.aqr[aCG].aDx().getHitRect(rect);
                        if (rect.contains((int) f, (int) f2)) {
                            break;
                        }
                    }
                    aCG++;
                }
                if (aCG == 5) {
                    return false;
                }
                C0874d aAE = this.aqR.aqb.aAE(this.aqR.aqr[aCG].aDr());
                float aDu = this.aqR.aqr[aCG].aDu(this.aqR.aqn) - (f4 / this.aqR.aqn);
                if (!aAE.aBa(2) && aDu > 0.0f) {
                    aDu = 0.0f;
                }
                if (!aAE.aBa(1) && r0 < 0.0f) {
                    aDu = 0.0f;
                }
                this.aqR.aqr[aCG].aDJ(aDu, this.aqR.aqn);
                if (this.aqR.aqk != null) {
                    this.aqR.aqk.aDh();
                }
            }
        } else if (this.aqR.aCc()) {
            this.aqR.apZ.aEf((float) ((int) (((double) aCG) * 1.2d)));
        }
        this.aqR.invalidate();
        return true;
    }

    public boolean aEM(float f, float f2) {
        C0905c c0905c = this.aqR.aqr[2];
        if (c0905c == null) {
            return false;
        }
        if (this.aqR.apZ.aEb()) {
            this.aqR.apZ.aDU(f, f2);
            return true;
        } else if (Math.abs(f) < Math.abs(f2)) {
            return true;
        } else {
            if (this.aqR.aqn == 1.0f) {
                int aDq = c0905c.aDq();
                if (f > 0.0f) {
                    if (this.aqR.apX > aDq) {
                        this.aqR.apZ.aEg(aDq, 400, true);
                        return true;
                    }
                    c0905c = this.aqR.aqr[1];
                    if (c0905c == null) {
                        return false;
                    }
                    this.aqR.apZ.aEg(c0905c.aDq(), 400, true);
                } else if (this.aqR.apZ.aEj(false)) {
                    if (this.aqR.apX < aDq) {
                        this.aqR.apZ.aEg(aDq, 400, true);
                        return true;
                    }
                    c0905c = this.aqR.aqr[3];
                    if (c0905c == null) {
                        return false;
                    }
                    this.aqR.apZ.aEg(c0905c.aDq(), 400, true);
                    if (this.aqR.aCa() == 1) {
                        this.aqR.apZ.aDl();
                    }
                }
            }
            if (this.aqR.aqn == 0.5f) {
                this.aqR.apZ.aDT(f);
            }
            return true;
        }
    }

    public boolean aEP(float f, float f2) {
        this.aqQ = 1.0f;
        this.aqP = Math.max(this.aqR.apZ.aDW(true), 1.0f);
        return true;
    }

    public boolean aEO(float f, float f2, float f3) {
        this.aqQ = (this.aqQ * 0.3f) + (0.7f * f3);
        float aCG = this.aqR.aqn * f3;
        if (this.aqR.aqn < 1.0f && aCG < 1.0f) {
            this.aqR.aqn = aCG;
            if (this.aqR.aqn <= 0.5f) {
                this.aqR.aqn = 0.5f;
            }
            this.aqR.invalidate();
        } else if (this.aqR.aqn < 1.0f && aCG >= 1.0f) {
            this.aqR.aqn = 1.0f;
            this.aqR.apZ.aDQ();
            this.aqR.invalidate();
            this.aqR.apZ.aEh(false);
        } else if (this.aqR.aqn < 1.0f || aCG >= 1.0f) {
            if (!this.aqR.apZ.aEb()) {
                this.aqR.apZ.aEh(false);
            }
            C0905c c0905c = this.aqR.aqr[2];
            float min = Math.min(aCG, this.aqP);
            if (min == this.aqR.aqn) {
                return true;
            }
            c0905c.aDE(f, f2, min / this.aqR.aqn, this.aqR.aqe.width(), this.aqR.aqe.height());
            this.aqR.aqn = min;
        } else {
            this.aqR.aqn = aCG;
            this.aqR.apZ.aEc();
            this.aqR.invalidate();
            this.aqR.apZ.aEh(true);
        }
        return true;
    }

    public void aEQ() {
        if (this.aqR.aqn <= 1.1f) {
            this.aqR.apZ.aEh(true);
            if (this.aqR.aqn <= 0.6f) {
                this.aqR.apZ.aDl();
            } else if (this.aqQ > 1.0f || this.aqR.aqn > 0.9f) {
                if (this.aqR.apZ.aEb()) {
                    this.aqR.aqn = 1.0f;
                    this.aqR.aCl();
                }
                this.aqR.apZ.aDm();
            } else {
                this.aqR.apZ.aDl();
            }
            this.aqQ = 1.0f;
        }
    }
}
