package com.android.objectclear;

import android.content.ContentValues;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Matrix;
import android.hardware.Camera.Size;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.SparseArray;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.android.camera.ObjectClear.C0153a;
import com.android.camera.ObjectClear.NubiaObjectClear;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.custom.C0421M;
import com.android.common.exif.C0513e;
import com.android.common.exif.C0523o;
import com.android.common.p012e.C0458b;
import com.android.common.p014n.C0111p;
import com.android.common.p028h.C0562f;
import com.android.common.ui.C0366P;
import com.android.common.ui.C0474A;
import com.android.common.ui.RotateLayout;
import com.android.common.ui.ZtemtShutterButton;
import com.p010a.C0090a;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

public class C1031i extends C0111p implements C0153a, C0366P {
    private int aJH;
    private int aJI;
    private boolean aJJ;
    private boolean aJK;
    private ZtemtShutterButton aJL;
    private ZtemtShutterButton aJM;
    private TextView aJN;
    int aJO;
    private TextView aJP;
    private Bitmap aJQ;
    private Bitmap aJR;
    private ImageView aJS;
    private TextView aJT;
    private NubiaObjectClear aJU;
    int aJV;
    private int[] aJW;
    private Bitmap aJX;
    private ImageView aJY;
    private ProgressBar aJZ;
    C1023a aKa;
    private RotateLayout aKb;
    private Bitmap aKc;
    private C1035m aKd;
    private ProgressBar aKe;
    int aKf;
    private Handler aKg;
    private int aKh;
    private int mPreviewHeight;
    private int mPreviewWidth;

    public C1031i(int i) {
        super(i);
        this.aJU = null;
        this.aJW = new int[2];
        this.aJR = null;
        this.aKc = null;
        this.aJV = 0;
        this.aJI = 1440;
        this.aJH = 1080;
        this.mPreviewWidth = 720;
        this.mPreviewHeight = 540;
        this.aJX = null;
        this.aJQ = null;
        this.aKh = -1;
        this.aJK = false;
        this.aKg = new C1032j(this);
        this.aJJ = false;
        this.aKd = null;
    }

    public C1031i() {
        this.aJU = null;
        this.aJW = new int[2];
        this.aJR = null;
        this.aKc = null;
        this.aJV = 0;
        this.aJI = 1440;
        this.aJH = 1080;
        this.mPreviewWidth = 720;
        this.mPreviewHeight = 540;
        this.aJX = null;
        this.aJQ = null;
        this.aKh = -1;
        this.aJK = false;
        this.aKg = new C1032j(this);
        this.aJJ = false;
        this.aKd = null;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        View inflate = layoutInflater.inflate(R.layout.ztemt_objectclear_layout, viewGroup, false);
        if (inflate == null) {
            C0090a.bvj("NubiaObjectClearFragment", "view == null");
        }
        aZU(inflate);
        return inflate;
    }

    public void aWJ() {
        this.aJN.setVisibility(0);
        this.aJL.setVisibility(0);
        this.aJM.setVisibility(0);
        this.aJY.setVisibility(0);
        this.aJS.setVisibility(0);
        this.aJK = false;
    }

    public void aWG() {
        aZR();
    }

    public void aWI(Size size) {
        this.aJI = size.width;
        this.aJH = size.height;
        this.mPreviewWidth = this.aJI / 2;
        this.mPreviewHeight = this.aJH / 2;
        C0090a.m1e("NubiaObjectClearFragment", "NubiaObjectClearPreview onCreate iWidth = " + this.aJI + " iHeight = " + this.aJH);
        if (this.aJX == null) {
            this.aJX = Bitmap.createBitmap(this.mPreviewWidth, this.mPreviewHeight, Config.ARGB_8888);
        }
        if (this.aJQ == null) {
            this.aJQ = Bitmap.createBitmap(this.aJI, this.aJH, Config.ARGB_8888);
        }
        Display defaultDisplay = getActivity().getWindowManager().getDefaultDisplay();
        C0090a.m1e("NubiaObjectClearFragment", " Detect display.getWidth() = " + defaultDisplay.getWidth());
        C0090a.m1e("NubiaObjectClearFragment", " Detect display.getHeight() = " + defaultDisplay.getHeight());
        this.aKh = NubiaObjectClear.Detect(this.aJX, this.aJQ);
        C0090a.m1e("NubiaObjectClearFragment", "onCreate Detect retValue = " + this.aKh);
        Matrix matrix = new Matrix();
        matrix.reset();
        matrix.postRotate((float) C0616j.aoS(0, this.adA.SQ()));
        this.aJX = Bitmap.createBitmap(this.aJX, 0, 0, this.aJX.getWidth(), this.aJX.getHeight(), matrix, true);
        this.aJR = Bitmap.createBitmap(this.aJQ, 0, 0, this.aJQ.getWidth(), this.aJQ.getHeight(), matrix, true);
        bag(this.aJR, this.aJX);
        baf(this.aKh);
    }

    public void bag(Bitmap bitmap, Bitmap bitmap2) {
        C0090a.m1e("Nubia", "updatePreviewViewDisplay");
        this.aJS.setImageBitmap(bitmap);
        this.aJY.setImageBitmap(bitmap2);
    }

    public void aWH(MotionEvent motionEvent, int i, int i2) {
        if (this.aJR == null) {
            C0090a.bvo("NubiaObjectClearFragment", "mMaskBitmap_rotate is null, return");
        } else if (this.aKh != 0) {
            C0090a.bvo("NubiaObjectClearFragment", "retValue is " + this.aKh + ", return");
        } else if (this.aJS.getWidth() == 0 || this.aJS.getHeight() == 0) {
            C0090a.bvo("NubiaObjectClearFragment", "mMaskView width " + this.aJS.getWidth() + " height " + this.aJS.getHeight());
        } else {
            this.aKf = i;
            this.aJO = i2;
            this.aJS.getLocationInWindow(this.aJW);
            int x = (int) (motionEvent.getX() - ((float) this.aJW[0]));
            int y = (int) (motionEvent.getY() - ((float) this.aJW[1]));
            int aoS = C0616j.aoS(0, this.adA.SQ());
            int[] aqd = C0616j.aqd(this.aJS.getWidth(), this.aJS.getHeight(), x, y, aoS);
            y = aqd[0];
            x = aqd[1];
            if (aoS % 180 == 0) {
                y = (y * i) / this.aJS.getWidth();
                x = (x * i2) / this.aJS.getHeight();
            } else {
                y = (y * i) / this.aJS.getHeight();
                x = (x * i2) / this.aJS.getWidth();
            }
            C0090a.bvo("NubiaObjectClearFragment", "mMaskView.getLocationInWindow mPosition[0] = " + this.aJW[0] + " mPosition[1] = " + this.aJW[1]);
            C0090a.bvo("NubiaObjectClearFragment", "dispatchTouchEvent mStartX: " + motionEvent.getX() + " mStartY: " + motionEvent.getY());
            C0090a.bvo("NubiaObjectClearFragment", "mMaskView width:" + this.aJS.getWidth() + " height:" + this.aJS.getHeight());
            C0090a.bvo("NubiaObjectClearFragment", "objectClearTouchDown x: " + y + " y: " + x);
            bad();
            this.aKd.baD(y, x);
        }
    }

    public void baf(int i) {
        if (i != 0) {
            if (i == -1) {
                this.aJP.setVisibility(0);
            } else if (i == -2) {
                this.aJT.setVisibility(0);
            }
        }
    }

    public void aWK(int i) {
        this.aJV = i;
        C0090a.m1e("Nubia", "mOrientation = " + this.aJV);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    public void onResume() {
        C0090a.m1e("Nubia", "onResume");
        super.onResume();
        if (!this.adB) {
            if (this.aJU == null) {
                this.aJU = new NubiaObjectClear(alA(), this);
            }
            aZT();
            NubiaObjectClear.Cancel();
            aZV();
            aZY();
            bag(null, null);
            this.adA.SX().Ka();
            this.adA.TE().Lq(false);
            this.adA.TE().Lz(0);
        }
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        baa();
        aZS();
        aZZ();
        this.aKg.removeMessages(3);
        if (this.aKa != null) {
            this.aKa.stop();
            this.aKa.aZB(null);
        }
        super.onPause();
    }

    public void onDestroy() {
        super.onDestroy();
    }

    private void aZU(View view) {
        this.aKb = (RotateLayout) view.findViewById(R.id.hold_steadily_tips);
        this.aKb.setVisibility(0);
        this.aJN = (TextView) view.findViewById(R.id.clear_remove_tip);
        this.aJZ = (ProgressBar) view.findViewById(R.id.object_clear_progress_bar);
        this.aJY = (ImageView) view.findViewById(R.id.id_preview);
        this.aJS = (ImageView) view.findViewById(R.id.id_mask);
        this.aKe = (ProgressBar) view.findViewById(R.id.id_wait_icon);
        this.aJL = (ZtemtShutterButton) view.findViewById(R.id.id_cancel);
        this.aJM = (ZtemtShutterButton) view.findViewById(R.id.id_save);
        if (this.aJL != null) {
            this.aJL.setOnClickListener(new C1033k());
        }
        if (this.aJM != null) {
            this.aJM.setOnClickListener(new C1034l());
        }
        this.aJP = (TextView) view.findViewById(R.id.object_large_motion);
        this.aJT = (TextView) view.findViewById(R.id.object_no_remove);
        this.adE = new C0474A[0];
    }

    public void aZR() {
        aZS();
        NubiaObjectClear.Cancel();
        aZZ();
        aZT();
        aZV();
        aZY();
        bag(null, null);
        this.adA.SX().Ka();
        this.adA.TE().Lq(false);
        this.adA.TE().Lz(0);
        C0458b.adi().adk();
        this.aKh = -1;
    }

    private void aZT() {
        this.aJN.setVisibility(8);
        this.aJL.setVisibility(8);
        this.aJM.setVisibility(8);
        this.aJP.setVisibility(8);
        this.aJT.setVisibility(8);
        this.aJY.setVisibility(8);
        this.aJS.setVisibility(8);
    }

    private void aZY() {
        if (!(this.aJX == null || this.aJX.isRecycled())) {
            this.aJX.recycle();
            this.aJX = null;
        }
        if (!(this.aJQ == null || this.aJQ.isRecycled())) {
            this.aJQ.recycle();
            this.aJQ = null;
        }
        if (!(this.aJR == null || this.aJR.isRecycled())) {
            this.aJR.recycle();
            this.aJR = null;
        }
        System.gc();
    }

    private void bab() {
        if (!(this.aKc == null || this.aKc.isRecycled())) {
            this.aKc.recycle();
            this.aKc = null;
        }
        if (this.aJR != null) {
            aZX(this.aJR);
        }
    }

    private void aZX(Bitmap bitmap) {
        try {
            C0090a.bvo("TAG", "outputImage mOrientation = " + this.aJV);
            Matrix matrix = new Matrix();
            matrix.reset();
            matrix.postRotate((float) this.aJV);
            bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            if (this.adA == null || !this.adA.VC()) {
                Date date = new Date();
                String arc = C0701s.arc("IMG_" + new SimpleDateFormat("yyyyMMdd_HHmmss").format(date), this.adA.UW());
                OutputStream fileOutputStream = new FileOutputStream(arc);
                bitmap.compress(CompressFormat.JPEG, 100, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
                bae(arc);
                ContentValues contentValues = new ContentValues(4);
                contentValues.put("datetaken", Long.valueOf(System.currentTimeMillis()));
                contentValues.put("_data", arc);
                contentValues.put("width", Integer.valueOf(bitmap.getWidth()));
                contentValues.put("height", Integer.valueOf(bitmap.getHeight()));
                Uri ard = C0701s.ard(this.adA.TF(), contentValues);
                this.adA.Uk(ard);
                this.aKc = Bitmap.createScaledBitmap(bitmap, this.adA.Vg(), (bitmap.getHeight() * this.adA.Vg()) / bitmap.getWidth(), true);
                this.adA.Th().afx(C0562f.afN(ard, this.aKc, 0));
                C0616j.apa(alA().SN(), "objectclear_1", "NubiaObjectClearFragment");
                this.aKg.sendEmptyMessage(1);
                bitmap.recycle();
                System.gc();
                return;
            }
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(CompressFormat.JPEG, 100, byteArrayOutputStream);
            this.adA.WQ(byteArrayOutputStream.toByteArray());
            this.adA.Ur();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            this.aKg.sendEmptyMessage(1);
            bitmap.recycle();
            System.gc();
        }
    }

    private void bae(String str) {
        float Gd = this.adA.Tn().Gd();
        float UU = this.adA.UU();
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(C0523o.BY, C0421M.dC().dD().br());
        sparseArray.put(C0523o.BZ, C0421M.dC().dD().bs());
        sparseArray.put(C0523o.Cc, new C0513e(UU, 0.01f));
        sparseArray.put(C0523o.Cs, new C0513e(Gd, 0.01f));
        C0616j.app(str, sparseArray);
    }

    public void bah(int i) {
        if (this.aJZ != null) {
            this.aJZ.setProgress(i + 1);
        }
    }

    public void baa() {
        if (this.aJZ != null) {
            this.aJZ.setProgress(0);
            this.aJZ.setVisibility(8);
        }
    }

    public void bac() {
        if (this.aJZ != null) {
            this.aJZ.setProgress(0);
            this.aJZ.setVisibility(0);
        }
        if (this.aKb != null) {
            this.aKb.setVisibility(8);
        }
    }

    public static C1031i aZP() {
        return new C1031i(1);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.aKb != null && this.aKb.getVisibility() == 0) {
            this.aKb.setVisibility(8);
        }
        if (motionEvent.getAction() == 0) {
            this.aJU.aWD(motionEvent, this.aJI, this.aJH);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    private void bad() {
        if (this.aKd == null) {
            this.aKd = new C1035m();
            this.aKd.start();
        }
    }

    private void aZS() {
        if (this.aKd != null) {
            this.aKd.cancel();
            try {
                this.aKd.join();
            } catch (InterruptedException e) {
            }
            this.aKd = null;
        }
    }

    private void aZZ() {
        this.aKg.removeMessages(2);
    }

    private void aZV() {
        alr();
        if (this.adA != null) {
            this.adA.TB();
        }
        this.aJJ = false;
    }

    private void aZW() {
        Size Gv = this.adA.Tn().Gv();
        this.aJI = Gv.width;
        this.aJH = Gv.height;
        this.mPreviewWidth = this.aJI / 2;
        this.mPreviewHeight = this.aJH / 2;
        this.aJU.aWE(Gv);
    }

    public void qf(boolean z) {
    }

    public void qe() {
        if (this.adA != null) {
            if (this.adA.Tl() && !this.adA.SO() && alu() == FunctionState.NORMAL && alq() == UIState.NORMAL && alt() == DeviceState.IDLE) {
                C0458b.adi().adj(new C1028f(this));
            } else {
                C0090a.bvo("NubiaObjectClearFragment", "Storage enough: " + this.adA.Tl() + "; Activity paused: " + this.adA.SO() + "; Function state: " + alu() + "; UI state: " + alq() + "; Device state: " + alt());
            }
        }
    }

    public void qg() {
        qe();
    }

    public void aZQ() {
        if (this.adA != null) {
            if (this.adA.Tl() && !this.adA.SO() && alu() == FunctionState.NORMAL && alq() == UIState.NORMAL && alt() == DeviceState.IDLE) {
                this.aJU.aWF(this.adA.Tp());
                this.aKa = new C1023a(alA());
                this.aKa.aZB(new C1037o(this));
                this.adA.SX().Kb(UIState.NORMAL, FunctionState.NORMAL, DeviceState.IDLE, DeviceState.PREVIEW_STOPPED);
                this.adA.TE().Lq(true);
                this.adA.TE().Lz(8);
                this.aKa.start();
                return;
            }
            C0090a.bvo("NubiaObjectClearFragment", "Storage enough: " + this.adA.Tl() + "; Activity paused: " + this.adA.SO() + "; Function state: " + alu() + "; UI state: " + alq() + "; Device state: " + alt());
        }
    }

    public boolean onBackPressed() {
        C0090a.m1e("NubiaObjectClearFragment", "onBackPressed");
        if (!this.aJJ) {
            return super.onBackPressed();
        }
        this.aJU.aWB();
        return true;
    }
}
