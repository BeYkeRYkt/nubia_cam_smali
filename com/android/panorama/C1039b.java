package com.android.panorama;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Color;
import android.os.AsyncTask.Status;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.p029i.C0564c;
import com.morpho.core.MorphoPanoramaGP;
import com.morpho.core.MorphoPanoramaGP.InitParam;
import com.p010a.C0090a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;

public class C1039b {
    private static final int aTv = Color.argb(56, 0, 0, 0);
    private String aTA;
    private ArrayList aTB;
    private int aTC;
    private int aTD;
    private ContentResolver aTE;
    private int[] aTF;
    private Bitmap aTG;
    private float aTH;
    private float aTI;
    private final C1040c aTJ;
    private int[] aTK;
    private InitParam aTL;
    private boolean aTM;
    private boolean aTN;
    private C0564c aTO;
    private MorphoPanoramaGP aTP;
    private byte[] aTQ;
    private C1046l aTR;
    private int aTS;
    private int aTT;
    private int aTU;
    private int aTV;
    private int aTW;
    private int aTX;
    private int aTY;
    private final int aTZ;
    private int aTw;
    private int aTx;
    private int aTy;
    private int aTz;
    private final int aUa;
    private Bitmap aUb;
    private boolean aUc;
    private C1043f aUd;
    private int[] aUe;
    ArrayList aUf;
    C1044g aUg;
    private long aUh;
    private boolean aUi;
    private int aUj;
    private int aUk;
    private int aUl;
    private int mPreviewWidth;
    private int use_threshold;

    public void bko(C1046l c1046l) {
        this.aTR = c1046l;
    }

    public void bkn(String str) {
        this.aTA = str;
    }

    public void bkp(int i) {
        this.aTS = i;
    }

    public void bkj(C0329e c0329e) {
        this.aTE = c0329e.TF();
        this.aTI = c0329e.Tn().Gd();
        this.aTH = c0329e.UU();
        this.aTx = C0616j.aoS(0, c0329e.SQ());
        this.aTO = c0329e.Tq();
    }

    public C1039b(int i, int i2, int i3, int i4) {
        this(i, i2, i3, i4, 1080, 1440);
    }

    public C1039b(int i, int i2, int i3, int i4, int i5, int i6) {
        this.aUi = true;
        this.aTS = 0;
        this.aTU = 0;
        this.aTy = 0;
        this.aTz = 0;
        this.aTP = null;
        this.aTL = null;
        this.aTK = new int[1];
        this.aTQ = new byte[256];
        this.aUe = new int[1];
        this.aTF = new int[1];
        this.aTD = 0;
        this.aTC = 0;
        this.aUf = new ArrayList();
        this.aUg = null;
        this.aTB = new ArrayList();
        this.aUa = 0;
        this.aTZ = 0;
        this.use_threshold = 10;
        this.aUl = 32768;
        this.aTO = null;
        this.aTE = null;
        this.aTx = 0;
        this.aTM = false;
        this.aTN = false;
        this.aTA = null;
        this.aTJ = new C1040c();
        this.aTw = 0;
        this.mPreviewWidth = i;
        this.aTW = i2;
        this.aTV = i3;
        this.aTT = i4;
        this.aUk = i5;
        this.aUj = i6;
    }

    private void bkm() {
        this.aTL = new InitParam();
        this.aTL.format = "YVU420_SEMIPLANAR";
        this.aTL.use_threshold = this.use_threshold;
        this.aTL.preview_width = this.mPreviewWidth;
        this.aTL.preview_height = this.aTW;
        if (this.aUi) {
            this.aTL.still_width = this.mPreviewWidth;
            this.aTL.still_height = this.aTW;
        } else {
            this.aTL.still_width = this.aTV;
            this.aTL.still_height = this.aTT;
        }
        this.aTL.angle_of_view_degree = 60.0d;
        this.aTL.draw_cur_image = 0;
        int i = this.aUk;
        int i2 = this.aUj;
        int i3 = this.aTx;
        switch (this.aTy + this.aTz) {
            case 0:
                this.aTL.direction = 1;
                this.aTL.dst_img_width = this.aTL.still_height * 10;
                this.aTL.dst_img_height = this.aTL.still_width;
                this.aTL.preview_img_width = this.aTL.preview_height * 10;
                this.aTL.preview_img_height = this.aTL.preview_width;
                switch (i3) {
                    case 270:
                        this.aTL.output_rotation = 270;
                        this.aUc = true;
                        break;
                    default:
                        this.aTL.output_rotation = 90;
                        this.aUc = false;
                        break;
                }
                i = Math.max((this.aTL.preview_img_width / i) - 1, 1);
                break;
            case 1:
                this.aTL.direction = 0;
                this.aTL.dst_img_width = this.aTL.still_height;
                this.aTL.dst_img_height = this.aTL.still_width * 10;
                this.aTL.preview_img_width = this.aTL.preview_height;
                this.aTL.preview_img_height = this.aTL.preview_width * 10;
                switch (i3) {
                    case 270:
                        this.aTL.output_rotation = 270;
                        this.aUc = true;
                        break;
                    default:
                        this.aTL.output_rotation = 90;
                        this.aUc = false;
                        break;
                }
                i = Math.max((this.aTL.preview_img_height / i2) - 1, 1);
                break;
            default:
                throw new IllegalArgumentException("Direction wrong");
        }
        this.aTL.preview_shrink_ratio = i;
        MorphoPanoramaGP.bud(this.aTL, 180.0d);
        if (30000 < this.aTL.dst_img_width) {
            float f = 30000.0f / ((float) this.aTL.dst_img_width);
            this.aTL.dst_img_width = 30000;
            InitParam initParam = this.aTL;
            initParam.preview_img_width = (int) (f * ((float) initParam.preview_img_width));
        }
        if (30000 < this.aTL.dst_img_height) {
            f = 30000.0f / ((float) this.aTL.dst_img_height);
            this.aTL.dst_img_height = 30000;
            initParam = this.aTL;
            initParam.preview_img_height = (int) (f * ((float) initParam.preview_img_height));
        }
        InitParam initParam2 = this.aTL;
        initParam2.preview_img_width &= -2;
        initParam2 = this.aTL;
        initParam2.preview_img_height &= -2;
        this.aTM = false;
    }

    public void bkr() {
        if (this.aTP != null) {
            C0090a.bvo("MorphoPanoramaAdapter", "start panorama capture failed, morphor core is not null");
            if (this.aTR != null) {
                this.aTR.ble(0);
            }
            return;
        }
        this.aTw = 0;
        this.aUh = System.currentTimeMillis();
        bkm();
        int[] iArr = new int[1];
        this.aTP = new MorphoPanoramaGP();
        int bue = this.aTP.bue(this.aTL, iArr);
        if (bue != 0) {
            C0090a.m1e("MorphoPanoramaAdapter", "initialize the MorphoPanoramaGP failed : " + bue);
        }
        this.aTP.buf(this.aUl);
        this.aTP.bug(0);
        bke(this.aTy + this.aTz);
        bue = this.aTP.buh(0, 0);
        if (bue != 0) {
            C0090a.m1e("MorphoPanoramaAdapter", "setUseSensorAsisst failed: " + bue);
        }
        bue = this.aTP.start();
        if (bue != 0) {
            C0090a.m1e("MorphoPanoramaAdapter", "morpho panorama gp start failed: " + bue);
        }
        this.aTF[0] = this.aTL.direction;
        this.aTX = this.aTL.direction;
        this.aTY = -1;
        this.aTD = 0;
        this.aTC = 0;
        this.aTM = true;
        this.aTN = false;
        this.aTB.clear();
        this.aTU = this.aTS;
        if (this.aTR != null) {
            this.aTR.bld();
        }
    }

    public void bks(int i) {
        if (this.aTP != null && !bkk()) {
            if (this.aTX == 0 || this.aTX == 1) {
                bkh(7);
                return;
            }
            this.aUd = new C1043f(this, true, i);
            this.aUd.execute(new Void[0]);
        }
    }

    private void bkh(int i) {
        if (this.aTP != null && !bkk()) {
            this.aUd = new C1043f(this, false, i);
            this.aUd.execute(new Void[0]);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void bkf(byte[] r12) {
        /*
        r11 = this;
        r10 = 2;
        r9 = 9;
        r8 = 0;
        r7 = 6;
        r2 = 0;
        r0 = r11.aTP;
        if (r0 == 0) goto L_0x0014;
    L_0x000a:
        r0 = r11.bkk();
        if (r0 != 0) goto L_0x0014;
    L_0x0010:
        r0 = r11.aTN;
        if (r0 == 0) goto L_0x0015;
    L_0x0014:
        return;
    L_0x0015:
        r0 = r11.aTY;
        r0 = r0 + 1;
        r11.aTY = r0;
        r0 = r11.aTP;
        r3 = r11.aTK;
        r4 = r11.aTQ;
        r5 = r11.aUe;
        r6 = r11.aUb;
        r1 = r12;
        r0 = r0.bui(r1, r2, r3, r4, r5, r6);
        if (r0 == 0) goto L_0x0046;
    L_0x002c:
        r1 = "MorphoPanoramaAdapter";
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "attachPreview data failed: ";
        r3 = r3.append(r4);
        r0 = r3.append(r0);
        r0 = r0.toString();
        com.p010a.C0090a.m1e(r1, r0);
    L_0x0046:
        r0 = r11.aUe;
        r0 = r0[r2];
        if (r0 == 0) goto L_0x009d;
    L_0x004c:
        r0 = "MorphoPanoramaAdapter";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r3 = "attachPreview Status : ";
        r1 = r1.append(r3);
        r3 = r11.aUe;
        r3 = r3[r2];
        r1 = r1.append(r3);
        r1 = r1.toString();
        com.p010a.C0090a.bvj(r0, r1);
        r0 = r11.aUe;
        r0 = r0[r2];
        r1 = 8;
        if (r0 == r1) goto L_0x0078;
    L_0x0072:
        r0 = r11.aUe;
        r0 = r0[r2];
        if (r0 != r9) goto L_0x0080;
    L_0x0078:
        r0 = r11.aUe;
        r0 = r0[r2];
        r11.bks(r0);
        return;
    L_0x0080:
        r0 = r11.aUe;
        r0 = r0[r2];
        if (r0 == r7) goto L_0x0078;
    L_0x0086:
        r0 = r11.aUe;
        r0 = r0[r2];
        r1 = 10;
        if (r0 != r1) goto L_0x0096;
    L_0x008e:
        r0 = r11.aUe;
        r0 = r0[r2];
        r11.bks(r0);
        return;
    L_0x0096:
        r0 = r11.aUe;
        r0 = r0[r2];
        switch(r0) {
            case 4: goto L_0x009d;
            case 5: goto L_0x016a;
            default: goto L_0x009d;
        };
    L_0x009d:
        r0 = r11.aTP;
        r1 = r11.aTF;
        r0 = r0.buj(r1);
        if (r0 == 0) goto L_0x00c1;
    L_0x00a7:
        r1 = "MorphoPanoramaAdapter";
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "getCurrentDirection  failed: ";
        r3 = r3.append(r4);
        r0 = r3.append(r0);
        r0 = r0.toString();
        com.p010a.C0090a.m1e(r1, r0);
    L_0x00c1:
        r0 = r11.aTX;
        if (r0 == 0) goto L_0x017e;
    L_0x00c5:
        r0 = r11.aTX;
        r1 = 1;
        if (r0 == r1) goto L_0x017e;
    L_0x00ca:
        r0 = r11.aTX;
        if (r0 == r7) goto L_0x017e;
    L_0x00ce:
        r0 = r11.aUb;
        r0 = r0.getWidth();
        r1 = r11.aUb;
        r1 = r1.getHeight();
        r3 = r11.aTG;
        r3 = r3.getWidth();
        r4 = r11.aTG;
        r4 = r4.getHeight();
        r5 = new android.graphics.Canvas;
        r6 = r11.aTG;
        r5.<init>(r6);
        r6 = android.graphics.PorterDuff.Mode.SRC;
        r5.drawColor(r2, r6);
        r6 = new android.graphics.Rect;
        r6.<init>(r2, r2, r3, r4);
        r7 = r11.aUb;
        r5.drawBitmap(r7, r8, r6, r8);
        r5 = new android.graphics.Point;
        r5.<init>();
        r6 = new android.graphics.Point;
        r6.<init>();
        r7 = r11.aTP;
        r7.buk(r5, r6);
        if (r3 >= r4) goto L_0x0179;
    L_0x010d:
        r0 = (float) r4;
        r1 = (float) r1;
        r0 = r0 / r1;
    L_0x0110:
        r1 = r5.x;
        r1 = (float) r1;
        r1 = r1 * r0;
        r1 = (int) r1;
        r5.x = r1;
        r1 = r5.y;
        r1 = (float) r1;
        r1 = r1 * r0;
        r1 = (int) r1;
        r5.y = r1;
        r1 = r6.x;
        r1 = (float) r1;
        r1 = r1 * r0;
        r1 = (int) r1;
        r6.x = r1;
        r1 = r6.y;
        r1 = (float) r1;
        r0 = r0 * r1;
        r0 = (int) r0;
        r6.y = r0;
        r0 = r11.aTR;
        if (r0 == 0) goto L_0x013b;
    L_0x0130:
        r0 = r11.aTR;
        r1 = r11.aTG;
        r3 = r11.aTF;
        r3 = r3[r2];
        r0.blf(r1, r5, r3);
    L_0x013b:
        r0 = r11.aTK;
        r0 = r0[r2];
        if (r0 < 0) goto L_0x0163;
    L_0x0141:
        r0 = 1;
        r11.aTN = r0;
        r0 = r11.aTB;
        r1 = new com.android.panorama.e;
        r3 = r11.aTK;
        r3 = r3[r2];
        r4 = r11.aUe;
        r4 = r4[r2];
        r1.<init>(r11, r3, r4);
        r0.add(r1);
        r0 = r11.aUi;
        if (r0 == 0) goto L_0x01ed;
    L_0x015a:
        r11.bkl(r12);
    L_0x015d:
        r0 = r11.aTD;
        r0 = r0 + 1;
        r11.aTD = r0;
    L_0x0163:
        r0 = r11.aTF;
        r0 = r0[r2];
        r11.aTX = r0;
        return;
    L_0x016a:
        r0 = r11.aTR;
        if (r0 == 0) goto L_0x009d;
    L_0x016e:
        r0 = r11.aTR;
        r1 = r11.aTF;
        r1 = r1[r2];
        r0.bla(r1);
        goto L_0x009d;
    L_0x0179:
        r1 = (float) r3;
        r0 = (float) r0;
        r0 = r1 / r0;
        goto L_0x0110;
    L_0x017e:
        r0 = new android.graphics.Canvas;
        r1 = r11.aTG;
        r0.<init>(r1);
        r1 = aTv;
        r3 = android.graphics.PorterDuff.Mode.SRC;
        r0.drawColor(r1, r3);
        r0 = r11.aTR;
        if (r0 == 0) goto L_0x0195;
    L_0x0190:
        r0 = r11.aTR;
        r0.blb(r12);
    L_0x0195:
        r0 = r11.aTF;
        r0 = r0[r2];
        if (r0 == 0) goto L_0x013b;
    L_0x019b:
        r0 = r11.aTF;
        r0 = r0[r2];
        r1 = 1;
        if (r0 == r1) goto L_0x013b;
    L_0x01a2:
        r0 = r11.aTF;
        r0 = r0[r2];
        if (r0 == r7) goto L_0x013b;
    L_0x01a8:
        r0 = r11.aTy;
        r1 = r11.aTz;
        r0 = r0 + r1;
        switch(r0) {
            case 1: goto L_0x01c4;
            case 2: goto L_0x01b0;
            case 3: goto L_0x01b0;
            case 4: goto L_0x01d1;
            case 5: goto L_0x01de;
            default: goto L_0x01b0;
        };
    L_0x01b0:
        r0 = r11.aTF;
        r0 = r0[r2];
        r1 = 5;
        if (r0 != r1) goto L_0x01b7;
    L_0x01b7:
        r0 = r11.aTF;
        r0 = r0[r2];
        r1 = 5;
        if (r0 != r1) goto L_0x01be;
    L_0x01be:
        r0 = r11.aUc;
        if (r0 != 0) goto L_0x013b;
    L_0x01c2:
        goto L_0x013b;
    L_0x01c4:
        r0 = r11.aTF;
        r0 = r0[r2];
        if (r0 != r10) goto L_0x01ca;
    L_0x01ca:
        r0 = r11.aTF;
        r0 = r0[r2];
        if (r0 != r10) goto L_0x01be;
    L_0x01d0:
        goto L_0x01be;
    L_0x01d1:
        r0 = r11.aTF;
        r0 = r0[r2];
        if (r0 != r10) goto L_0x01d7;
    L_0x01d7:
        r0 = r11.aTF;
        r0 = r0[r2];
        if (r0 != r10) goto L_0x01be;
    L_0x01dd:
        goto L_0x01be;
    L_0x01de:
        r0 = r11.aTF;
        r0 = r0[r2];
        r1 = 4;
        if (r0 != r1) goto L_0x01e5;
    L_0x01e5:
        r0 = r11.aTF;
        r0 = r0[r2];
        r1 = 4;
        if (r0 != r1) goto L_0x01be;
    L_0x01ec:
        goto L_0x01be;
    L_0x01ed:
        r0 = r11.aTR;
        if (r0 == 0) goto L_0x015d;
    L_0x01f1:
        r0 = r11.aTR;
        r0.bll();
        goto L_0x015d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.panorama.b.bkf(byte[]):void");
    }

    public void bkg(byte[] bArr) {
        if (this.aTP != null && this.aTB.size() != 0) {
            C1042e c1042e = (C1042e) this.aTB.remove(0);
            bkd(new C1041d(this, c1042e.aUs, this.aTY, bArr, this.aTQ));
            switch (c1042e.aUt) {
                case 1:
                case 3:
                case 11:
                    bks(c1042e.aUt);
                    break;
            }
        }
    }

    public void bkq(boolean z) {
        this.aUi = !z;
    }

    private void bkl(byte[] bArr) {
        if (this.aTP != null) {
            C1042e c1042e = (C1042e) this.aTB.remove(0);
            bkd(new C1041d(this, c1042e.aUs, this.aTY, bArr, this.aTQ));
            switch (c1042e.aUt) {
                case 1:
                case 3:
                case 11:
                    bks(c1042e.aUt);
                    break;
                default:
                    if (this.aTM) {
                    }
            }
        }
    }

    public boolean bkk() {
        if (this.aUd == null || this.aUd.getStatus() == Status.FINISHED) {
            return false;
        }
        return true;
    }

    private void bke(int i) {
        int i2 = this.aUk;
        int i3 = this.aUj;
        if (this.aUb != null) {
            this.aUb.recycle();
            this.aUb = null;
            this.aTG.recycle();
            this.aTG = null;
        }
        if (this.aUb == null) {
            switch (i) {
                case 0:
                    this.aUb = Bitmap.createBitmap(this.aTL.preview_img_width, this.aTL.preview_img_height, Config.ARGB_8888);
                    this.aTG = Bitmap.createBitmap(i2, (((int) ((((float) this.aTL.preview_img_height) / ((float) this.aTL.preview_img_width)) * ((float) i2))) * 100) / 100, Config.ARGB_8888);
                    break;
                case 1:
                    this.aUb = Bitmap.createBitmap(this.aTL.preview_img_width, this.aTL.preview_img_height, Config.ARGB_8888);
                    this.aTG = Bitmap.createBitmap((((int) ((((float) (this.aTL.preview_img_width + 0)) / ((float) this.aTL.preview_img_height)) * ((float) i3))) * 100) / 100, i3, Config.ARGB_8888);
                    break;
                default:
                    throw new IllegalArgumentException("Direction wrong");
            }
        }
        C0090a.bvo("MorphoPanoramaAdapter", " init InitParam " + this.aTL.toString());
        C0090a.bvo("MorphoPanoramaAdapter", " mPreviewImage w " + this.aUb.getWidth() + " h " + this.aUb.getHeight());
        C0090a.bvo("MorphoPanoramaAdapter", " mDispPreviewImage w " + this.aTG.getWidth() + " h " + this.aTG.getHeight());
    }

    private ByteBuffer bki(byte[] bArr) {
        ByteBuffer allocateBuffer = PanoramaJni.allocateBuffer(bArr.length);
        allocateBuffer.order(ByteOrder.nativeOrder());
        allocateBuffer.position(0);
        allocateBuffer.put(bArr);
        allocateBuffer.position(0);
        return allocateBuffer;
    }

    private void bkd(C1041d c1041d) {
        this.aUf.add(c1041d);
        this.aTN = false;
        if (this.aUg == null) {
            this.aUg = new C1044g(this);
            this.aUg.start();
        }
    }

    private void bkt() {
        C0090a.bvo("MorphoPanoramaAdapter", "waitAttachStillImageTaskDone E");
        if (this.aTN) {
            this.aTD--;
        }
        while (this.aTD > this.aTC) {
            C0090a.m1e("MorphoPanoramaAdapter", "SaveOutputImageTask mispictake " + this.aTN + " req " + this.aTD + " proc " + this.aTC);
            try {
                Thread.sleep(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        C0090a.bvo("MorphoPanoramaAdapter", "waitAttachStillImageTaskDone X");
        this.aUg = null;
    }
}
