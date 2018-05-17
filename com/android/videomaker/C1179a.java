package com.android.videomaker;

import android.app.AlertDialog.Builder;
import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import android.hardware.Camera.Size;
import android.media.MediaRecorder;
import android.util.Log;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.CameraBufferManager;
import com.android.common.appService.C0329e;
import com.android.common.cameradevice.C0382m;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.p012e.C0458b;
import com.android.videomaker.p041a.C1177d;
import com.p010a.C0090a;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;

public class C1179a implements PreviewCallback, C1178g {
    private final int axX = 100;
    private final int axY = 2;
    private C0329e axZ = null;
    private C1193f ayA = null;
    private String ayB = null;
    private String aya = null;
    private CameraBufferManager ayb = null;
    private int ayc = 0;
    private C1189c ayd = null;
    private long aye = 0;
    private long ayf = 0;
    private boolean ayg = false;
    private boolean ayh = true;
    private boolean ayi = false;
    private boolean ayj = true;
    private boolean ayk = false;
    private long ayl = 0;
    private int aym = 0;
    private Camera ayn = null;
    private int ayo = 0;
    private C1188b ayp;
    private int ayq;
    private int ayr = 0;
    private C1190d ays = null;
    private MediaRecorder ayt = null;
    private File ayu = null;
    private ArrayList ayv = null;
    private ArrayList ayw = null;
    private String ayx = null;
    private int ayy = 0;
    private File ayz = null;

    public C1179a(C0329e c0329e, C1188b c1188b) {
        this.axZ = c0329e;
        this.ayp = c1188b;
        this.ayb = new CameraBufferManager();
        this.ayd = new C1189c();
        this.ayw = new ArrayList();
        this.ayy = 0;
        this.ayh = true;
        this.ayB = aMy() + "/" + "shortvideomaker";
    }

    private void aMp() {
        C0090a.m0d("VideoMakerMultiShoot", "ClearData");
        if (this.ayw != null) {
            this.ayw.clear();
            aMq();
            if (this.ayz != null) {
                File file = new File(this.ayB + System.currentTimeMillis());
                this.ayz.renameTo(file);
                if (file != null && file.exists()) {
                    C1177d.aKC(file);
                }
            }
        }
    }

    private void aMq() {
        if (this.ayv != null) {
            this.ayv.clear();
            this.ayv = null;
        }
    }

    public void aMG(long j) {
        this.ayf = j;
    }

    public void aMH(int i) {
        this.aym = i;
    }

    public boolean aMC() {
        if (this.ayj && (this.ayb == null || this.ayb.getRemainImages() == 0)) {
            return true;
        }
        return false;
    }

    public void aMo() {
        C1179a.aME("cancelCapture");
        this.ayi = true;
        aMt().Tk(false);
        aMp();
        this.ayy = 0;
        this.ayh = true;
        this.axZ.SX().Ka();
        if (this.ayd != null) {
            this.ayd.removeMessages(1);
            this.ayd.removeMessages(2);
            this.ayd.sendEmptyMessage(4);
        }
    }

    public void aMs() {
        C1179a.aME("doneCapture");
        this.ayi = true;
        this.ayd.removeMessages(1);
        this.ayd.removeMessages(2);
        if (this.ayA == null) {
            this.ayA = new C1193f(this.axZ, this.ayw, this.ayB);
            this.ayA.aNE(this);
        }
        this.ayA.aNF(this.ayv);
        this.ayy = 0;
        this.ayh = true;
        this.axZ.SX().Ka();
        this.ayd.sendEmptyMessage(3);
        this.ayA.aNG();
    }

    private void aMA() {
        this.ayB = aMy() + "/" + "shortvideomaker";
        this.ayz = new File(this.ayB);
        this.ayu = new File(this.ayB + "/" + "recording");
        if (!this.ayu.exists()) {
            this.ayu.mkdirs();
        }
        this.ayx = this.ayu.getAbsolutePath() + "/" + "videoMakerRecorder" + "." + "amr";
        this.ayv = new ArrayList();
        try {
            if (!new File(this.ayu, ".nomedia").createNewFile()) {
                throw new FileNotFoundException("Cannot create file .nomedia");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void aMK() {
        if (this.ayk) {
            C1179a.aME("startRecording");
            this.aya = C1177d.aKD(this.ayB + "/" + "recording", "amr");
            if (this.aya != null) {
                if (this.ayt != null) {
                    this.ayt.release();
                    this.ayt = null;
                }
                this.ayt = new MediaRecorder();
                if (this.ayt != null) {
                    try {
                        this.ayt.setAudioSource(1);
                        this.ayt.setOutputFormat(4);
                        this.ayt.setAudioEncoder(2);
                        this.ayt.setAudioEncodingBitRate(12800);
                        this.ayt.setOutputFile(this.aya);
                        this.ayt.prepare();
                        this.ayt.start();
                        if (this.ayv == null) {
                            this.ayv = new ArrayList();
                        }
                        C0090a.bvm("VideoMakerMultiShoot", "startRecording size: " + this.ayv.size() + "  add mCurrentRecorderFilePath: " + this.aya);
                        this.ayv.add(this.aya);
                    } catch (Exception e) {
                        e.printStackTrace();
                        this.ayt.reset();
                        this.ayt.release();
                        this.ayt = null;
                        aMr(this.aya);
                    }
                }
            }
        }
    }

    private void aMM() {
        if (this.ayt != null) {
            C1179a.aME("stopRecording");
            try {
                this.ayt.stop();
                this.ayt.reset();
                this.ayt.release();
                this.ayt = null;
            } catch (Exception e) {
                e.printStackTrace();
                this.ayt.reset();
                this.ayt.release();
                this.ayt = null;
                aMr(this.aya);
            }
        }
    }

    private void aMr(String str) {
        if (str != null) {
            File file = new File(str);
            File file2 = new File(str + System.currentTimeMillis());
            file.renameTo(file2);
            if (file2 != null && file2.exists()) {
                C1177d.aKC(file2);
            }
        }
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
        if (this.ayj) {
            C1179a.aME("onPreviewFrame return");
        } else if (this.ayy == this.aym) {
            aML();
        } else {
            if (this.ayr < this.ayc + 100) {
                long currentTimeMillis = System.currentTimeMillis();
                long j = currentTimeMillis - this.ayl;
                if (((currentTimeMillis - this.ayl <= this.ayf && this.ayr != 0) || aMF(bArr, currentTimeMillis)) && !this.ayg) {
                    this.ayn.addCallbackBuffer(bArr);
                }
            } else {
                this.ayg = true;
            }
        }
    }

    private boolean aMF(byte[] bArr, long j) {
        boolean putData = this.ayb.putData(this.ayr % 100, bArr);
        if (putData) {
            this.ayr++;
            this.ayy++;
            this.ayl = j;
            this.ayd.sendEmptyMessage(2);
        }
        return putData;
    }

    public void aMJ() {
        int i = 0;
        C1179a.aME("startMultiShoot");
        if (this.ayb == null) {
            this.ayb = new CameraBufferManager();
        }
        C1179a.aME("mIsMultiShootDone = " + this.ayj);
        C1179a.aME("mDataProvider.getRemainImages() = " + this.ayb.getRemainImages());
        if (!this.ayj || this.ayb.getRemainImages() != 0) {
            C1179a.aME("has remain images, return!");
        } else if (this.ayy == this.aym) {
            C1179a.aME("Max Number");
        } else {
            if (this.ayh) {
                aMq();
                aMt().Tk(true);
                this.ayd.sendEmptyMessage(1);
                aMA();
                this.ayh = false;
            } else {
                this.ayd.sendEmptyMessage(8);
            }
            this.ayq = ((aMx().width * aMx().height) * 3) / 2;
            C1179a.aME("getPreviewSize: " + aMx().width + ", " + aMx().height);
            this.ayj = false;
            this.ayk = true;
            this.ayi = false;
            this.ayg = false;
            this.ayc = 0;
            this.ayr = 0;
            this.ayo = C0616j.aoQ(this.axZ.SQ(), aMw());
            this.ays = new C1190d(this);
            if (this.ayb.initDataBuffer((long) this.ayq, 100)) {
                this.ayn = aMu().IL();
                this.axZ.Ts().abE(this, this.axZ.SQ());
                this.axZ.SX().Kb(UIState.NORMAL, DeviceState.IDLE, FunctionState.NORMAL);
                while (i < 2) {
                    this.ayn.addCallbackBuffer(new byte[this.ayq]);
                    i++;
                }
                this.ays.start();
                this.ayd.removeMessages(9);
                this.ayd.sendEmptyMessageDelayed(9, 400);
                C0458b.adi().adl();
                return;
            }
            C1179a.aME("mDataProvider.initDataBuffer failed");
        }
    }

    public void aML() {
        C1179a.aME("stopMultiShoot, mIsMultiShootOn = " + this.ayk);
        this.ayd.removeMessages(9);
        if (!aMC() && this.axZ.Tl()) {
            this.ayd.sendEmptyMessage(11);
        }
        if (this.ayy == 0) {
            this.ayd.sendEmptyMessage(12);
            aMo();
        }
        if (this.ayk) {
            aMM();
            this.ayk = false;
            if (!(this.axZ == null || this.axZ.Tr() == null || this.axZ.Tr().IL() == null)) {
                this.axZ.Ts().abD(this);
            }
        }
        C0458b.adi().adk();
    }

    private C0329e aMt() {
        return this.axZ;
    }

    private Size aMx() {
        return aMt().Tn().Gv();
    }

    private int aMw() {
        return aMt().Tp();
    }

    private C0382m aMu() {
        return aMt().Tr();
    }

    public C1193f aMz() {
        return this.ayA;
    }

    public boolean aMB() {
        return this.ayA != null ? this.ayA.aNH() : false;
    }

    private static void aME(String str) {
        if (Log.isLoggable("VideoMakerMultiShoot", 3)) {
            C0090a.m0d("VideoMakerMultiShoot", str);
        }
    }

    public void aMD() {
        this.ayp.aNq();
    }

    private void aMI() {
        Builder builder = new Builder(this.axZ.SN());
        builder.setTitle(R.string.spaceIsLow_tip);
        builder.setMessage(R.string.spaceIsLow_content);
        builder.setPositiveButton(R.string.dialog_ok, null);
        builder.show();
    }

    private String aMy() {
        if (C0701s.aqZ() - ((long) ((((aMx().width * aMx().height) * 3) / 2) * this.aym)) > 20971520) {
            return C0701s.aid;
        }
        return C0701s.aqX();
    }

    public boolean aMv() {
        return this.ayh;
    }
}
