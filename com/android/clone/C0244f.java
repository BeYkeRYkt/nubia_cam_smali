package com.android.clone;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.C0472e;
import com.android.common.C0616j;
import com.android.common.ui.C0366P;
import com.android.common.ui.C0474A;
import com.android.common.ui.MultiFunctionImageView;
import com.android.common.ui.MultiFunctionImageView.Function;
import com.android.common.ui.RotateImageView;
import com.android.common.ui.RotateTextImageView;
import com.android.common.ui.ZtemtShutterButton;
import com.android.p011a.C0099a;
import com.android.p011a.C0100b;
import com.android.ui.ScaleLayout;
import com.p010a.C0090a;

public class C0244f {
    private static int amS = 2;
    private static int amT = 200;
    private MultiFunctionImageView amU = null;
    private RelativeLayout amV = null;
    private RotateImageView amW = null;
    private Canvas amX = null;
    private Paint amY = null;
    private int amZ = C0616j.aoT(30);
    private ImageView anA = null;
    private ImageView anB = null;
    private ImageView anC = null;
    private ImageView anD = null;
    private ImageView anE = null;
    private ImageView anF = null;
    private LinearLayout anG = null;
    private RelativeLayout anH = null;
    private RelativeLayout anI = null;
    private RelativeLayout anJ = null;
    private RelativeLayout anK = null;
    private RelativeLayout anL = null;
    private View[] anM = new View[5];
    private View[] anN = new View[5];
    private View anO = null;
    private C0249k anP = null;
    private Handler anQ = new C0253o(this);
    private TextView anR = null;
    private boolean anS = false;
    private boolean anT = false;
    private boolean anU = false;
    private boolean anV = false;
    private boolean anW = false;
    private boolean anX = false;
    private boolean anY = false;
    private boolean anZ = false;
    private C0243e ana = null;
    private Bitmap anb = null;
    private Context anc = null;
    private AlertDialog and = null;
    private ImageView ane = null;
    private Bitmap anf = null;
    private ScaleLayout ang = null;
    private ImageView anh = null;
    private RelativeLayout ani = null;
    private Bitmap anj = null;
    private ImageView ank = null;
    private ImageView anl = null;
    private Bitmap anm = null;
    private ImageView ann = null;
    private Bitmap ano = null;
    private Matrix anp = null;
    private ImageView anq = null;
    private RotateImageView anr = null;
    private Canvas ans = null;
    private Paint ant = null;
    private int anu = C0616j.aoT(30);
    private View[] anv = new View[5];
    private ImageView anw = null;
    private ImageView anx = null;
    private ImageView any = null;
    private ImageView anz = null;
    private C0245g aoa = null;
    private RotateTextImageView aob = null;
    private int aoc = 0;
    private int aod = 0;
    private Bitmap aoe = null;
    private Bitmap[] aof = null;
    private int aog = 0;
    private int aoh = 0;
    private ZtemtShutterButton aoi = null;
    private View aoj = null;
    private float aok = 0.0f;
    private float aol = 0.0f;
    private int aom = 0;
    private LinearLayout aon = null;
    private TextView aoo = null;
    private long aop = 0;
    private int mState = 0;

    private void ayL() {
        C0090a.bvo("CloneViewManager", "reset");
        if (this.anZ) {
            C0090a.m1e("CloneViewManager", "reset failed, because is Waiting");
            return;
        }
        this.mState = 0;
        this.anW = true;
        ayO();
        ayN();
        if (this.anb != null) {
            this.anb.recycle();
            this.anb = null;
        }
        if (this.anj != null) {
            this.anj.recycle();
            this.anj = null;
        }
        if (this.anf != null) {
            this.anf.recycle();
            this.anf = null;
        }
        this.aom = 0;
        this.ana.ayh();
        this.aoa.azY(false);
        System.gc();
    }

    private void ayN() {
        if (this.aof != null) {
            for (int i = 0; i < this.aof.length; i++) {
                if (this.anM[i] != null) {
                    ((ImageView) this.anN[i]).setImageBitmap(null);
                }
                this.aof[i].recycle();
                this.aof[i] = null;
            }
        }
        this.aof = null;
    }

    private void ayO() {
        C0090a.bvo("CloneViewManager", "resetUI");
        ayM();
        this.ane.setVisibility(8);
        ayA();
        ayZ(0);
    }

    private void ayM() {
        C0090a.bvo("CloneViewManager", "resetBottomUI");
        ayr();
        this.anr.setVisibility(8);
        this.amW.setVisibility(8);
        this.aob.setVisibility(8);
        this.amV.setVisibility(8);
    }

    private void ayC() {
        C0090a.bvo("CloneViewManager", "hideWaitView");
        this.anZ = false;
        this.amU.lB(Function.WAIT);
        this.aoi.setVisibility(8);
        this.anr.setVisibility(0);
        this.amW.setVisibility(0);
    }

    private void aza() {
        C0090a.bvo("CloneViewManager", "showWaitView");
        this.anZ = true;
        this.aoi.setVisibility(0);
        this.amU.lw(Function.WAIT);
        this.anr.setVisibility(8);
        this.amW.setVisibility(8);
    }

    public C0244f(Context context, View view, C0245g c0245g, C0366P c0366p) {
        this.aoa = c0245g;
        this.anc = context;
        this.ana = new C0243e();
        ayF();
        ayE(view);
        ayG(view);
        ayD(view, c0366p);
        C0090a.bvo("CloneViewManager", "init finish");
    }

    public C0474A[] ayu() {
        return new C0474A[]{this.anr, this.amW, this.aob};
    }

    private void ayD(View view, C0366P c0366p) {
        this.amV = (RelativeLayout) view.findViewById(R.id.clone_bottom_layout);
        this.aoi = (ZtemtShutterButton) view.findViewById(R.id.clone_shutter_button);
        this.amU = (MultiFunctionImageView) view.findViewById(R.id.clone_shutter_button_icon);
        this.anr = (RotateImageView) view.findViewById(R.id.clone_sure_button);
        this.aob = (RotateTextImageView) view.findViewById(R.id.clone_make_button);
        this.amW = (RotateImageView) view.findViewById(R.id.clone_cancel_button);
        this.aoi.pZ(c0366p);
        OnClickListener c0100b = new C0100b(this);
        this.anr.setOnClickListener(c0100b);
        this.amW.setOnClickListener(c0100b);
        this.aob.setOnClickListener(c0100b);
    }

    public void ayT(int i, int i2, int i3, int i4) {
        this.aod = i;
        this.aoc = i2;
        this.aoh = i3;
        this.aog = i4;
        C0090a.bvo("CloneViewManager", "setSize mPictureWidth = " + this.aod + "; mPictureHeight = " + this.aoc + "; mScreenWidth = " + this.aoh + "; mScreenHeigh = " + this.aog);
    }

    public void onResume() {
        if (this.mState == 0 && this.ana.ayg() == 0 && this.aoa != null) {
            this.aoa.azY(true);
        }
    }

    public void onPause() {
        if (this.and != null && this.and.isShowing()) {
            this.and.cancel();
        }
    }

    public boolean ayH() {
        return this.mState == 0;
    }

    private boolean ayP() {
        if (this.ana == null || this.anP == null) {
            C0090a.m1e("CloneViewManager", "setButtonState failed!");
            return false;
        }
        boolean z;
        if (this.aom == this.ana.ayg() - 1) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            this.anS = true;
            if (this.anT) {
                this.anP.aAt();
            } else {
                this.anP.aAu();
            }
        } else {
            this.anS = false;
            this.anP.aAs();
        }
        return z;
    }

    private void ayF() {
        this.ant = new Paint(4);
        this.ant.setStyle(Style.STROKE);
        this.ant.setStrokeCap(Cap.ROUND);
        this.ant.setColor(this.anc.getResources().getColor(R.color.clone_draw_paint));
        ayR();
        this.ant.setAntiAlias(true);
        this.amY = new Paint(4);
        this.amY.setStyle(Style.STROKE);
        this.amY.setStrokeCap(Cap.ROUND);
        ayQ();
        this.amY.setXfermode(new PorterDuffXfermode(Mode.CLEAR));
        this.anp = new Matrix();
        this.anp.postScale((float) amS, (float) amS);
    }

    private void azb() {
        ayR();
        ayQ();
    }

    private void ayR() {
        if (this.ant != null) {
            int i = this.anu;
            if (this.ang != null) {
                i = (int) (((float) this.anu) / this.ang.blA());
            }
            this.ant.setStrokeWidth((float) i);
        }
    }

    private void ayQ() {
        if (this.amY != null) {
            int i = this.amZ;
            if (this.ang != null) {
                i = (int) (((float) this.amZ) / this.ang.blA());
            }
            this.amY.setStrokeWidth((float) i);
        }
    }

    private void ayG(View view) {
        this.ani = (RelativeLayout) view.findViewById(R.id.display_layout);
        this.ani.setOnTouchListener(new C0246h());
        this.anl = (ImageView) view.findViewById(R.id.display_picture_view);
        this.ank = (ImageView) view.findViewById(R.id.display_mask_view);
        this.anh = (ImageView) view.findViewById(R.id.display_draw_view);
        this.anO = view.findViewById(R.id.edit_tool_layout);
        this.anG = (LinearLayout) view.findViewById(R.id.edit_thum_layout);
        this.aoj = view.findViewById(R.id.clone_specification);
        this.anw = (ImageView) view.findViewById(R.id.edit_thum1);
        this.anx = (ImageView) view.findViewById(R.id.edit_thum2);
        this.any = (ImageView) view.findViewById(R.id.edit_thum3);
        this.anz = (ImageView) view.findViewById(R.id.edit_thum4);
        this.anA = (ImageView) view.findViewById(R.id.edit_thum5);
        this.anP = new C0249k(this.anO, this.anc);
        OnClickListener c0099a = new C0099a(this);
        this.anP.aAv(c0099a);
        this.aoj.setOnClickListener(c0099a);
        this.anw.setOnClickListener(c0099a);
        this.anx.setOnClickListener(c0099a);
        this.any.setOnClickListener(c0099a);
        this.anz.setOnClickListener(c0099a);
        this.anA.setOnClickListener(c0099a);
        this.anN[0] = this.anw;
        this.anN[1] = this.anx;
        this.anN[2] = this.any;
        this.anN[3] = this.anz;
        this.anN[4] = this.anA;
        ayp(view);
        ayo(view);
        this.ang = (ScaleLayout) view.findViewById(R.id.display_draw_layout);
    }

    private void ayp(View view) {
        this.anH = (RelativeLayout) view.findViewById(R.id.edit_thum1_layout);
        this.anI = (RelativeLayout) view.findViewById(R.id.edit_thum2_layout);
        this.anJ = (RelativeLayout) view.findViewById(R.id.edit_thum3_layout);
        this.anK = (RelativeLayout) view.findViewById(R.id.edit_thum4_layout);
        this.anL = (RelativeLayout) view.findViewById(R.id.edit_thum5_layout);
        this.anM[0] = this.anH;
        this.anM[1] = this.anI;
        this.anM[2] = this.anJ;
        this.anM[3] = this.anK;
        this.anM[4] = this.anL;
    }

    private void ayo(View view) {
        this.anB = (ImageView) view.findViewById(R.id.edit_thum1_bg);
        this.anC = (ImageView) view.findViewById(R.id.edit_thum2_bg);
        this.anD = (ImageView) view.findViewById(R.id.edit_thum3_bg);
        this.anE = (ImageView) view.findViewById(R.id.edit_thum4_bg);
        this.anF = (ImageView) view.findViewById(R.id.edit_thum5_bg);
        this.anv[0] = this.anB;
        this.anv[1] = this.anC;
        this.anv[2] = this.anD;
        this.anv[3] = this.anE;
        this.anv[4] = this.anF;
    }

    private void ayE(View view) {
        this.anq = (ImageView) view.findViewById(R.id.display_shader_view);
        this.ane = (ImageView) view.findViewById(R.id.display_composite_view);
        this.ann = (ImageView) view.findViewById(R.id.display_prev_float_image);
        this.aoo = (TextView) view.findViewById(R.id.display_tip_textview);
        this.aon = (LinearLayout) view.findViewById(R.id.display_tip_layout);
        this.anR = (TextView) view.findViewById(R.id.display_tips_text);
    }

    public void ayk(View view) {
        C0090a.bvo("CloneViewManager", "excuteOnEditClick");
        switch (view.getId()) {
            case R.id.edit_thum1:
                ayv(0);
                return;
            case R.id.edit_thum2:
                ayv(1);
                return;
            case R.id.edit_thum3:
                ayv(2);
                return;
            case R.id.edit_thum4:
                ayv(3);
                return;
            case R.id.edit_thum5:
                ayv(4);
                return;
            case R.id.draw_button:
                this.anT = false;
                this.anP.aAu();
                return;
            case R.id.clean_button:
                this.anT = true;
                this.anP.aAt();
                this.amX = new Canvas(this.anj);
                return;
            case R.id.clone_specification:
                this.aoa.aAa();
                return;
            default:
                return;
        }
    }

    public void ayl(View view) {
        C0090a.bvo("CloneViewManager", "excuteOnBottomClick");
        if (this.anW || this.anZ) {
            C0090a.m1e("CloneViewManager", "BottomOnClickListener can't use,because IsResetted : " + this.anZ + "; mIsWaiting : " + this.anZ);
        } else if (this.amV == null || this.amV.getVisibility() == 8) {
            C0090a.m1e("CloneViewManager", "BottomOnClickListener can't use,because mBottomLayout is null or View.GONE");
        } else {
            switch (view.getId()) {
                case R.id.clone_cancel_button:
                    ayL();
                    break;
                case R.id.clone_sure_button:
                    if (this.mState != 0) {
                        ayn();
                        break;
                    }
                    this.aoo.setVisibility(8);
                    ayy();
                    break;
                case R.id.clone_make_button:
                    this.aoa.azX();
                    if (this.mState != 1) {
                        aza();
                        new C0254p(this).start();
                        break;
                    }
                    ayw();
                    break;
            }
        }
    }

    public void onDestroy() {
        this.anU = true;
    }

    private void ayn() {
        C0090a.bvo("CloneViewManager", "composeConfirm");
        aza();
        new C0255q(this).start();
    }

    public void ayJ(byte[] bArr) {
        if (this.ana == null) {
            C0090a.m1e("CloneViewManager", "onPictureCapture failed, because mClone is null");
            return;
        }
        this.anW = false;
        if (this.anm == null) {
            this.anm = Bitmap.createBitmap(this.aoh, this.aog, Config.ARGB_8888);
        }
        int ayi = this.ana.ayi(bArr, C0472e.aoA(bArr), this.anm, this.aoc, this.aod, this.aoh, this.aog);
        if (ayi == -1) {
            C0090a.m1e("CloneViewManager", "onPictureCapture failed, pictures is -1");
        }
        this.amV.setVisibility(0);
        C0090a.bvo("CloneViewManager", "pictures = " + ayi);
        ayZ(ayi);
    }

    public void ayK() {
        if (this.mState == 0) {
            this.aoi.performClick();
        }
    }

    private void ayx() {
        C0090a.bvo("CloneViewManager", "gotoShowView");
        ayq();
        this.aon.setVisibility(8);
        this.aoo.setVisibility(8);
        this.ane.setVisibility(0);
        this.ane.setImageBitmap(this.anb);
        this.amW.setVisibility(0);
        this.anr.setVisibility(0);
        this.aob.setVisibility(0);
        this.aob.setImageResource(R.drawable.clone_edit);
        this.aob.rI(R.string.clone_edit);
        ayA();
        this.mState = 1;
    }

    private void ayw() {
        C0090a.bvo("CloneViewManager", "gotoEditView");
        ayq();
        this.aon.setVisibility(8);
        this.aoo.setVisibility(0);
        this.ane.setVisibility(8);
        this.amW.setVisibility(8);
        this.anr.setVisibility(8);
        this.aob.setVisibility(0);
        this.aob.setImageResource(R.drawable.clone_look);
        this.aob.rI(R.string.clone_look);
        ayI();
        ayX();
        this.mState = 2;
    }

    private void ayq() {
        C0090a.bvo("CloneViewManager", "disableShutterButton");
        this.aoi.setVisibility(8);
        this.aoi.setEnabled(false);
        this.aoi.setClickable(false);
    }

    private void ayr() {
        C0090a.bvo("CloneViewManager", "enableShutterButton");
        this.aoi.setVisibility(0);
        this.aoi.setEnabled(true);
        this.aoi.setClickable(true);
    }

    private void ayI() {
        if (this.aof == null) {
            this.aof = new Bitmap[this.ana.ayg()];
            for (int i = 0; i < this.aof.length; i++) {
                this.aof[i] = Bitmap.createBitmap(this.aoh, this.aog, Config.ARGB_8888);
                if (this.anj == null) {
                    this.anj = Bitmap.createBitmap(this.aoh, this.aog, Config.ARGB_8888);
                }
                this.ana.ayd((this.aof.length - i) - 1, this.aof[i]);
                Matrix matrix = new Matrix();
                matrix.reset();
                matrix.postScale(0.25f, 0.25f);
                int width = this.aof[i].getWidth();
                int height = this.aof[i].getHeight();
                int min = Math.min(width, height);
                this.aof[i] = Bitmap.createBitmap(this.aof[i], (width - min) / 2, (height - min) / 2, min, min, matrix, true);
            }
        }
    }

    private void ayX() {
        this.anG.setVisibility(0);
        for (int i = 0; i < this.anN.length; i++) {
            if (i < this.ana.ayg()) {
                this.anM[i].setVisibility(0);
                ((ImageView) this.anN[i]).setImageBitmap(this.aof[i]);
            } else {
                this.anM[i].setVisibility(8);
            }
        }
        this.anO.setVisibility(0);
        this.anl.setVisibility(0);
        this.ank.setVisibility(0);
        this.anh.setVisibility(0);
        ayv(this.aom);
    }

    private void ayA() {
        this.anG.setVisibility(8);
        this.anO.setVisibility(8);
        this.anl.setVisibility(8);
        this.ank.setVisibility(8);
        this.anh.setVisibility(8);
        this.anS = false;
    }

    private void ayv(int i) {
        C0090a.bvo("CloneViewManager", "gotoEdit p = " + i);
        this.aom = i;
        ayS(i);
        boolean ayP = ayP();
        if (ayP) {
            this.aoo.setText(R.string.clone_specification_tip);
            this.aoo.setVisibility(0);
        } else {
            this.aoo.setText(R.string.clone_tip_7);
            this.aoo.setVisibility(0);
        }
        if (this.anf == null) {
            this.anf = Bitmap.createBitmap(this.aoh, this.aog, Config.ARGB_8888);
            this.ans = new Canvas(this.anf);
        }
        this.amX = new Canvas(this.anj);
        this.ant.setXfermode(new PorterDuffXfermode(Mode.CLEAR));
        this.ans.drawPaint(this.ant);
        this.anl.setImageBitmap(this.aoe);
        if (ayP) {
            this.ank.setBackground(new BitmapDrawable(this.anc.getResources(), this.anj));
        } else {
            this.ank.setBackground(null);
        }
        this.anh.setBackground(new BitmapDrawable(this.anc.getResources(), this.anf));
        ayW(i);
        if (this.ang != null) {
            this.ang.blC();
            azb();
        }
    }

    private void ayS(int i) {
        if (this.ana == null) {
            C0090a.m1e("CloneViewManager", "setEditShowBitmap failed, beacuse mClone is null");
            return;
        }
        if (this.aoe == null) {
            this.aoe = Bitmap.createBitmap(this.aoh, this.aog, Config.ARGB_8888);
        }
        if (this.anj == null) {
            this.anj = Bitmap.createBitmap(this.aoh, this.aog, Config.ARGB_8888);
        }
        this.ana.ayd((this.ana.ayg() - i) - 1, this.aoe);
        this.ana.aye((this.ana.ayg() - i) - 1, this.anj);
    }

    private void ayW(int i) {
        for (int i2 = 0; i2 < this.ana.ayg(); i2++) {
            if (i2 == i) {
                this.anM[i2].setBackgroundResource(R.drawable.clone_thum_click);
                this.anv[i2].setVisibility(8);
            } else {
                this.anM[i2].setBackgroundDrawable(null);
                this.anv[i2].setVisibility(0);
            }
        }
    }

    private void ayZ(int i) {
        switch (i) {
            case 0:
                this.aon.setVisibility(0);
                this.aoo.setVisibility(8);
                this.anR.setText(R.string.clone_tip_1);
                this.ann.setVisibility(8);
                return;
            case 1:
                this.anR.setText(R.string.clone_tip_2);
                this.amV.setVisibility(0);
                this.amW.setVisibility(0);
                this.ann.setVisibility(0);
                this.ann.setImageAlpha(100);
                this.ann.setImageBitmap(this.anm);
                return;
            case 2:
                this.anR.setText(R.string.clone_tip_3);
                this.ann.setImageAlpha(180);
                this.ann.setImageBitmap(this.anm);
                return;
            case 3:
                this.anr.setVisibility(0);
                this.anR.setText(R.string.clone_tip_4);
                this.ann.setImageAlpha(180);
                this.ann.setImageBitmap(this.anm);
                return;
            case 4:
                this.anR.setText(R.string.clone_tip_5);
                this.ann.setImageAlpha(180);
                this.ann.setImageBitmap(this.anm);
                return;
            case 5:
                this.aoo.setText(R.string.clone_specification_tip);
                this.aon.setVisibility(8);
                this.ann.setVisibility(8);
                ayy();
                return;
            default:
                return;
        }
    }

    private void ayy() {
        C0090a.bvo("CloneViewManager", "handleComposition");
        this.aoa.azW();
        ayq();
        aza();
        new C0256r(this).start();
    }

    private Bitmap ayt() {
        int i = 0;
        Bitmap createBitmap = Bitmap.createBitmap(this.aoh, this.aog, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        new Paint().setXfermode(new PorterDuffXfermode(Mode.SCREEN));
        canvas.drawBitmap(this.aof[this.aom], 0.0f, 0.0f, null);
        canvas.drawBitmap(this.anj, 0.0f, 0.0f, null);
        canvas.drawBitmap(this.anf, 0.0f, 0.0f, null);
        canvas.save(31);
        canvas.restore();
        int i2 = amT / 2;
        int i3 = (int) (this.aok - ((float) i2));
        int i4 = (int) (this.aol - ((float) i2));
        if (createBitmap.getWidth() - i3 < i2) {
            i3 = createBitmap.getWidth() - amT;
        } else if (i3 < 0) {
            i3 = 0;
        }
        if (createBitmap.getHeight() - i4 < i2) {
            i = createBitmap.getHeight() - amT;
        } else if (i4 >= 0) {
            i = i4;
        }
        return Bitmap.createBitmap(createBitmap, i3, i, amT, amT, this.anp, true);
    }

    private void ayY() {
        C0090a.bvo("CloneViewManager", "showShaderView mIsUseShader = " + this.anY);
        if (this.anY) {
            this.ano = ayt();
            this.anq.setImageBitmap(this.ano);
            this.anq.setVisibility(0);
        }
    }

    private void ayB() {
        C0090a.bvo("CloneViewManager", "hideShaderView  mIsUseShader = " + this.anY);
        if (this.anY) {
            this.anq.setVisibility(8);
        }
    }

    private void ayV() {
        C0090a.bvo("CloneViewManager", "showEditButtonsLayout");
        this.anO.setVisibility(0);
        this.anG.setVisibility(0);
        this.amV.setVisibility(0);
        this.aoo.setVisibility(0);
    }

    private void ayz() {
        C0090a.bvo("CloneViewManager", "hideEditButtonsLayout");
        this.anO.setVisibility(8);
        this.anG.setVisibility(8);
        this.amV.setVisibility(8);
        this.aoo.setVisibility(8);
    }

    private void aym() {
        this.ana.aya((this.ana.ayg() - this.aom) - 1, this.anj);
    }

    private void ays() {
        this.ana.ayf((this.ana.ayg() - this.aom) - 1, this.anf, this.anj);
        this.ank.setBackground(new BitmapDrawable(this.anc.getResources(), this.anj));
        this.ant.setXfermode(new PorterDuffXfermode(Mode.CLEAR));
        this.ans.drawPaint(this.ant);
    }

    public boolean onBackPressed() {
        if (this.ana.ayg() == 0) {
            return false;
        }
        if (this.anZ) {
            C0090a.bvo("CloneViewManager", "onBackPressed failed, because is making.");
            return true;
        }
        if (this.mState != 0) {
            ayU();
        } else if (this.amW != null) {
            this.amW.callOnClick();
        } else {
            C0090a.bvo("CloneViewManager", "onBackPressed, call Cancel view is null ");
            return false;
        }
        return true;
    }

    private void ayU() {
        if (this.and == null) {
            this.and = new Builder(this.anc).setMessage(R.string.clone_dialog_msg).setPositiveButton(R.string.confirm, new C0257s(this)).setNegativeButton(R.string.cancel, new C0258t(this)).create();
        }
        this.and.show();
    }
}
