package com.android.startrack;

import android.content.ContentResolver;
import android.database.Cursor;
import android.database.sqlite.SQLiteDiskIOException;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.android.camera.R;
import com.android.common.ActivityBase;
import com.android.common.C0299a;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.appService.C0339n;
import com.android.common.appService.CameraMember;
import com.android.common.appService.StarFuncState;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.independentutil.IndependenceUtil;
import com.android.common.p014n.C0111p;
import com.android.common.p028h.C0562f;
import com.android.common.p030j.C0608b;
import com.android.common.ui.C0366P;
import com.p010a.C0090a;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class C1117f extends C0111p implements C0366P {
    private static final /* synthetic */ int[] aLl = null;
    public C1119h aKY = new C1119h(this);
    public String aKZ = null;
    public String aLa = null;
    private boolean aLb = false;
    public C1114c aLc = null;
    private C1120i aLd;
    private StarFuncState aLe = StarFuncState.IDLE;
    public String aLf = null;
    public String aLg = null;
    public Uri aLh = null;
    private C0608b aLi;
    private C1112a aLj;
    private C0339n aLk;
    private long mStartTime = 0;

    private static /* synthetic */ int[] bbW() {
        if (aLl != null) {
            return aLl;
        }
        int[] iArr = new int[StarFuncState.values().length];
        try {
            iArr[StarFuncState.CAPTURING.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            iArr[StarFuncState.COUNT_DOWN.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            iArr[StarFuncState.IDLE.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            iArr[StarFuncState.WAITING.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        aLl = iArr;
        return iArr;
    }

    public C1117f(int i) {
        super(i);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        View inflate = layoutInflater.inflate(R.layout.back_fun_startrack_fragment, viewGroup, false);
        bbt(inflate);
        return inflate;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!this.adB) {
            this.aLk = new C0339n(getActivity());
        }
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.aLe = StarFuncState.IDLE;
            bbs();
            this.aLj.baQ(bbu(), this.adA);
            bbz();
            if (alq() != UIState.CAMERA_FAMILY) {
                alr();
            }
        }
    }

    private void bbz() {
        ActivityBase SM = this.adA.SM();
        if (SM != null) {
            if (!SM.arE() || alA().TV()) {
                this.adA.Th().afy();
            }
        }
    }

    private void bbs() {
        if (this.aLi != null) {
            return;
        }
        if (IndependenceUtil.afZ || IndependenceUtil.aga) {
            this.aLi = new C0608b((ActivityBase) getActivity());
            this.aLi.agp(4);
        }
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        bbE();
        bby();
        this.adA.OQ = false;
        this.aLj.baU(false);
        alF();
        if (this.aLc != null) {
            this.aLc.bba();
            this.aLc.bbe();
            this.aLc = null;
        }
        if (this.aLi != null) {
            this.aLi.release();
            this.aLi = null;
        }
        super.onPause();
    }

    public boolean onBackPressed() {
        C0090a.bvo("1", "onbackpressed");
        if (this.aLe == StarFuncState.CAPTURING) {
            if (this.aLk.Yx(1)) {
                bbD();
            }
            return true;
        } else if (!bbE()) {
            return super.onBackPressed();
        } else {
            alF();
            return true;
        }
    }

    private void bbt(View view) {
        this.aLj = new C1112a(this, this.aKY, this.adA);
        this.aLj.baF(view);
        this.aLj.baQ(bbu(), this.adA);
        this.aLj.baK(new C1125n(this));
        this.adE = this.aLj.baG();
    }

    private void bbC() {
        this.aKY.sendEmptyMessageDelayed(-1, 1000);
        if (this.mStartTime == 0) {
            this.mStartTime = System.currentTimeMillis();
        }
        this.aLj.baV(this.mStartTime);
    }

    public void bbF() {
        this.aKY.removeMessages(-1);
        this.mStartTime = 0;
        this.aLj.baH();
    }

    public static C1117f bbn() {
        return new C1117f(1);
    }

    public void qf(boolean z) {
    }

    public void qg() {
        qe();
    }

    void bbm(byte[] bArr, int i) {
        Options options = new Options();
        options.inSampleSize = 4;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        if (this.aLi != null) {
            int width = decodeByteArray.getWidth();
            int height = decodeByteArray.getHeight();
            if ((width & 15) != 0) {
                width = ((width >> 4) + 1) << 4;
            }
            if ((height & 15) != 0) {
                height = ((height >> 4) + 1) << 4;
            }
            Bitmap createBitmap = Bitmap.createBitmap(width, height, Config.ARGB_8888);
            new Canvas(createBitmap).drawBitmap(decodeByteArray, new Rect(0, 0, decodeByteArray.getWidth(), decodeByteArray.getHeight()), new Rect(0, 0, width, height), null);
            Bitmap anY = C0299a.anY(createBitmap, i);
            C0090a.m0d("StarTrackFragment", "updatePreviewBitmap");
            this.aLi.agq(anY, this.aLa);
        }
    }

    private void bbG(Uri uri) {
        Bitmap decodeStream;
        FileNotFoundException e;
        Bitmap anY;
        int To;
        Throwable th;
        InputStream inputStream = null;
        Options options = new Options();
        options.inSampleSize = 4;
        InputStream openInputStream;
        try {
            openInputStream = getActivity().getContentResolver().openInputStream(uri);
            try {
                decodeStream = BitmapFactory.decodeStream(openInputStream, null, options);
                if (openInputStream != null) {
                    try {
                        openInputStream.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
            } catch (FileNotFoundException e3) {
                e = e3;
                try {
                    e.printStackTrace();
                    if (openInputStream != null) {
                        try {
                            openInputStream.close();
                        } catch (IOException e22) {
                            e22.printStackTrace();
                        }
                    }
                    anY = C0299a.anY(decodeStream, C1117f.bbr(uri, getActivity().getContentResolver()));
                    To = this.adA.To();
                    if (anY.getHeight() >= anY.getWidth()) {
                        anY = C0299a.anY(anY, (360 - To) % 360);
                    } else if (To == 180) {
                        anY = C0299a.anY(anY, 180);
                    }
                    C0090a.bvo("StarTrackFragment", "setPreviewImage before " + Thread.currentThread().getId());
                    this.aLj.baP(anY);
                    C0090a.bvo("StarTrackFragment", "setPreviewImage end");
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = openInputStream;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
        } catch (FileNotFoundException e5) {
            e = e5;
            openInputStream = inputStream;
            e.printStackTrace();
            if (openInputStream != null) {
                openInputStream.close();
            }
            anY = C0299a.anY(decodeStream, C1117f.bbr(uri, getActivity().getContentResolver()));
            To = this.adA.To();
            if (anY.getHeight() >= anY.getWidth()) {
                anY = C0299a.anY(anY, (360 - To) % 360);
            } else if (To == 180) {
                anY = C0299a.anY(anY, 180);
            }
            C0090a.bvo("StarTrackFragment", "setPreviewImage before " + Thread.currentThread().getId());
            this.aLj.baP(anY);
            C0090a.bvo("StarTrackFragment", "setPreviewImage end");
        } catch (Throwable th3) {
            th = th3;
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
        anY = C0299a.anY(decodeStream, C1117f.bbr(uri, getActivity().getContentResolver()));
        To = this.adA.To();
        if (anY.getHeight() >= anY.getWidth()) {
            anY = C0299a.anY(anY, (360 - To) % 360);
        } else if (To == 180) {
            anY = C0299a.anY(anY, 180);
        }
        C0090a.bvo("StarTrackFragment", "setPreviewImage before " + Thread.currentThread().getId());
        this.aLj.baP(anY);
        C0090a.bvo("StarTrackFragment", "setPreviewImage end");
    }

    private static int bbr(Uri uri, ContentResolver contentResolver) {
        Cursor query;
        SQLiteDiskIOException e;
        Throwable th;
        try {
            query = contentResolver.query(uri, new String[]{"orientation"}, null, null, null);
            try {
                query.moveToFirst();
                int i = query.getInt(query.getColumnIndex("orientation"));
                if (query == null) {
                    return i;
                }
                query.close();
                return i;
            } catch (SQLiteDiskIOException e2) {
                e = e2;
                try {
                    C0090a.m1e("StarTrackFragment", "getOrientation fail " + e.getMessage());
                    if (query != null) {
                        query.close();
                    }
                    return 0;
                } catch (Throwable th2) {
                    th = th2;
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            }
        } catch (SQLiteDiskIOException e3) {
            e = e3;
            query = null;
            C0090a.m1e("StarTrackFragment", "getOrientation fail " + e.getMessage());
            if (query != null) {
                query.close();
            }
            return 0;
        } catch (Throwable th3) {
            th = th3;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    public void bbH() {
        try {
            int height;
            InputStream fileInputStream = new FileInputStream(this.aLg);
            Options options = new Options();
            options.inSampleSize = 4;
            Bitmap decodeStream = BitmapFactory.decodeStream(fileInputStream, new Rect(), options);
            if (this.aLi != null) {
                int width = decodeStream.getWidth();
                height = decodeStream.getHeight();
                if ((width & 15) != 0) {
                    width = ((width >> 4) + 1) << 4;
                }
                if ((height & 15) != 0) {
                    height = ((height >> 4) + 1) << 4;
                }
                Bitmap createBitmap = Bitmap.createBitmap(width, height, Config.ARGB_8888);
                new Canvas(createBitmap).drawBitmap(decodeStream, 0.0f, 0.0f, null);
                this.aLi.agq(createBitmap, this.aLa);
            }
            height = this.adA.To();
            if (options.outHeight < options.outWidth) {
                decodeStream = C0299a.anY(decodeStream, (360 - height) % 360);
            } else if (height == 180) {
                decodeStream = C0299a.anY(decodeStream, 180);
            }
            this.aLj.baP(decodeStream);
            fileInputStream.close();
        } catch (FileNotFoundException e) {
            C0090a.m1e("StarTrackFragment", "updatePreviewBitmap failed");
        } catch (IOException e2) {
        }
    }

    public void qe() {
        if (this.adA != null) {
            if (!this.adA.SO() && this.adA.Tl() && alq() == UIState.NORMAL && ((alu() == FunctionState.NORMAL || alu() == FunctionState.DELAY_SHOOT) && (alt() == DeviceState.IDLE || alt() == DeviceState.SNAPSHOT_IN_PROGRESS))) {
                switch (C1117f.bbW()[this.aLe.ordinal()]) {
                    case 1:
                        if (this.aLk.Yx(0)) {
                            bbD();
                            break;
                        }
                        break;
                    case 2:
                        if (bbE()) {
                            this.adA.Tj(false);
                            alF();
                            break;
                        }
                        break;
                    case 3:
                        bbB();
                        break;
                }
                this.aLj.baJ();
                return;
            }
            C0090a.bvo("StarTrackFragment", "Activity pause: " + this.adA.SO() + "; storageLeftEnough: " + this.adA.Tl() + "; uiState: " + alq() + "; functionState: " + alu() + "; DeviceState: " + alt());
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.aLe == StarFuncState.IDLE || i != 82) {
            return super.onKeyDown(i, keyEvent);
        }
        return true;
    }

    private void bbB() {
        if (this.adA.SX().JX(FunctionState.DELAY_SHOOT)) {
            this.adD.JY(FunctionState.DELAY_SHOOT);
            this.adA.Tj(true);
            this.aLd = new C1120i(this, 3500, 1000);
            this.aLd.start();
            this.aLe = StarFuncState.COUNT_DOWN;
            this.aLj.baS();
            alG();
            return;
        }
        C0090a.bvo("StarTrackFragment", "can't start countdown " + this.adA.SX().JZ());
    }

    private boolean bbE() {
        if (this.aLe != StarFuncState.COUNT_DOWN) {
            return false;
        }
        this.aLd.cancel();
        this.aLe = StarFuncState.IDLE;
        this.aLj.baI();
        this.adA.SX().JW(FunctionState.DELAY_SHOOT);
        return true;
    }

    private void bbD() {
        if (this.aLe == StarFuncState.CAPTURING) {
            C0616j.apa(getActivity(), "startrack_1", "StarTrackFragment");
            this.adA.Tj(false);
            this.aLe = StarFuncState.WAITING;
            this.aLj.baU(true);
            alG();
            bbF();
            bbw();
            if (this.adA.Tr() != null) {
                this.adA.Tr().IN(false);
            }
            this.adA.OQ = false;
            this.adA.WF(null);
            if (this.aLc != null) {
                this.aLc.bba();
            }
        }
    }

    private void bbw() {
        this.adA.Wb(3);
    }

    private void bbA() {
        if (this.aLe == StarFuncState.IDLE) {
            this.aLe = StarFuncState.CAPTURING;
            bbx();
            bbv();
            this.aLf = C0616j.aoP(System.currentTimeMillis());
            this.aKZ = C0701s.ara(CameraMember.STARTRACK.aan()) + "/" + this.aLf;
            this.aLa = this.aKZ + "_StarTrackDIR";
            this.adA.OQ = true;
            this.adA.WF(new C1122k(this.adA, this));
            this.aLc = new C1114c(alA(), this);
            this.adA.Tt();
        }
    }

    private void bbv() {
        this.adA.Wb(2);
    }

    private void bbx() {
        alz();
        this.aLj.baR(getView());
        bbC();
    }

    private boolean bbu() {
        return this.adA.SQ() == C0384o.Jr().Js();
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.aLj.baJ();
        return super.dispatchTouchEvent(motionEvent);
    }

    private void bby() {
        if (alq() != UIState.CAMERA_FAMILY) {
            this.aLj.baT(getView());
            alF();
            alr();
            bbF();
        }
    }

    private void bbI() {
        if (this.aLh != null) {
            alA().Th().afx(C0562f.afW(this.aLg, this.aLh, 0, 16));
        }
    }

    public void bbo() {
        if (this.aLj != null) {
            this.aLj.baN();
        }
    }

    public boolean bbp() {
        return this.aLe == StarFuncState.CAPTURING;
    }

    protected void alF() {
        super.alF();
        this.adD.Ka();
    }

    protected void alG() {
        super.alG();
        this.adD.Kb(UIState.NORMAL, FunctionState.NORMAL, DeviceState.IDLE, DeviceState.PREVIEW_STOPPED, DeviceState.SNAPSHOT_IN_PROGRESS);
    }

    public boolean bbq() {
        return this.aLe == StarFuncState.IDLE;
    }

    protected void ajH(int i, int i2, int i3, int i4) {
        if (this.aLj != null) {
            this.aLj.baM(i, i2, i3, i4);
        }
    }
}
