package com.android.video;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.location.Location;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.media.MediaRecorder.OnErrorListener;
import android.media.MediaRecorder.OnInfoListener;
import android.net.Uri;
import android.os.Bundle;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import android.util.SparseArray;
import com.android.camera.R;
import com.android.common.C0472e;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0081r;
import com.android.common.cameradevice.C0379e;
import com.android.common.cameradevice.C0382m;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.C0404b;
import com.android.common.camerastate.DeviceState;
import com.android.common.custom.C0421M;
import com.android.common.exif.C0523o;
import com.android.common.independentutil.IndependenceUtil;
import com.android.common.p001l.C0624c;
import com.android.common.setting.ListPreference;
import com.p010a.C0090a;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;

public class C1152e implements OnErrorListener, OnInfoListener {
    private C0329e aPR;
    private int aPS;
    private C0404b aPT;
    private ContentResolver aPU;
    private String aPV;
    private Uri aPW;
    private ContentValues aPX;
    private C1155h aPY;
    private C1153f aPZ;
    private boolean aQa;
    private boolean aQb;
    private boolean aQc;
    private boolean aQd;
    private boolean aQe = false;
    private Location aQf;
    private int aQg;
    private MediaRecorder aQh;
    private int aQi = 0;
    private long aQj = 0;
    private long aQk = 0;
    private CamcorderProfile aQl;
    private long aQm;
    private long aQn = 0;
    private long aQo = 0;
    private C1151d aQp;
    private int aQq;
    private ParcelFileDescriptor aQr;
    private String aQs;
    private int aQt;
    private int aQu;
    private int mState = 0;

    public C1152e(C0329e c0329e) {
        this.aPR = c0329e;
        this.aPY = new C1155h();
        this.aPU = this.aPR.SN().getContentResolver();
        this.aQd = bgn();
        this.aQa = bgj();
        this.aQb = bgf().getBooleanExtra("android.intent.extra.quickCapture", false);
        this.aPT = this.aPR.SX();
        this.aQp = new C1151d(c0329e.SN());
    }

    private boolean bgn() {
        return "android.media.action.VIDEO_CAPTURE".equals(bgf().getAction());
    }

    private boolean bgj() {
        return "android.media.action.START_CAMCORDER".equals(bgf().getAction());
    }

    public void bgy(C1153f c1153f) {
        this.aPZ = c1153f;
    }

    public int getState() {
        return this.mState;
    }

    private C0382m bgb() {
        return this.aPR.Tr();
    }

    private Intent bgf() {
        return this.aPR.SN().getIntent();
    }

    private int bgt() {
        if (bgb() == null) {
            return 8;
        }
        this.aPW = null;
        Bundle extras = bgf().getExtras();
        this.aQl = this.aPR.SY().tP();
        bgu();
        if (this.aQq == 1 && this.aQl.videoFrameWidth >= 1280 && this.aQl.videoFrameHeight >= 720) {
            return 2;
        }
        long Vf = this.aPR.Vf() - 104857600;
        if (Vf < 0) {
            return 6;
        }
        long j;
        boolean z;
        int parseInt;
        bfT();
        if (!this.aQd || extras == null) {
            j = 0;
        } else {
            Uri uri = (Uri) extras.getParcelable("output");
            if (uri != null) {
                try {
                    this.aQr = this.aPU.openFileDescriptor(uri, "rw");
                    this.aPW = uri;
                } catch (FileNotFoundException e) {
                    C0090a.m1e("VideoRecordManager", e.toString());
                }
            }
            j = extras.getLong("android.intent.extra.sizeLimit");
        }
        if (this.aQh != null) {
            this.aQh.release();
            this.aQh = null;
        }
        boolean bgk = bgk();
        if (!bgk) {
            bgD(true);
        }
        bgx();
        this.aQh = new MediaRecorder();
        if (bgk) {
            this.aQh.setVideoSource(2);
            this.aQu = this.aQl.videoFrameHeight;
            this.aQt = this.aQl.videoFrameWidth;
        } else {
            bgb().IL().unlock();
            this.aQh.setCamera(bgb().IL());
            this.aQh.setVideoSource(1);
            this.aQu = this.aQl.videoFrameWidth;
            this.aQt = this.aQl.videoFrameHeight;
        }
        C0379e.FI().FJ().EW(this.aQh, 1, true);
        String HO = this.aPR.Tn().HO();
        C0090a.bvm("VideoRecordManager", "NOTE: hsr = " + HO);
        if (HO == null || HO.equals("off")) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            try {
                parseInt = Integer.parseInt(HO);
            } catch (NumberFormatException e2) {
                C0090a.m1e("VideoRecordManager", "Invalid hsr(" + HO + ")");
                parseInt = 0;
            }
        } else {
            parseInt = 0;
        }
        if (!bgn()) {
            this.aQl.videoCodec = this.aQq;
            this.aQl.audioCodec = this.aPS;
        }
        this.aQl.duration = this.aQg;
        if (!z || parseInt <= 0) {
            this.aQh.setAudioSource(5);
            this.aQh.setProfile(this.aQl);
        } else {
            C0090a.bvm("VideoRecordManager", "Enabling audio for HSR");
            this.aQh.setAudioSource(5);
            this.aQh.setOutputFormat(this.aQl.fileFormat);
            this.aQh.setVideoFrameRate(this.aQl.videoFrameRate);
            this.aQh.setVideoEncodingBitRate(this.aQl.videoBitRate);
            this.aQh.setVideoEncoder(this.aQl.videoCodec);
            C0090a.bvm("VideoRecordManager", "Configuring audio for HSR");
            this.aQh.setAudioEncodingBitRate(this.aQl.audioBitRate);
            this.aQh.setAudioChannels(this.aQl.audioChannels);
            this.aQh.setAudioSamplingRate(this.aQl.audioSampleRate);
            this.aQh.setAudioEncoder(this.aQl.audioCodec);
            C0379e.FI().FJ().EV(this.aQh, 1);
        }
        this.aQh.setVideoSize(this.aQl.videoFrameWidth, this.aQl.videoFrameHeight);
        this.aQh.setMaxDuration(this.aQg);
        if (parseInt > 0) {
            C0090a.bvm("VideoRecordManager", "Setting capture-rate = " + parseInt);
            this.aQh.setCaptureRate((double) parseInt);
            if (!z) {
                parseInt = this.aQl.videoFrameRate;
            }
            C0090a.bvm("VideoRecordManager", "Setting target fps = " + parseInt);
            this.aQh.setVideoFrameRate(parseInt);
            parseInt = (parseInt * this.aQl.videoBitRate) / this.aQl.videoFrameRate;
            C0090a.bvm("VideoRecordManager", "Scaled Video bitrate : " + parseInt);
            this.aQh.setVideoEncodingBitRate(parseInt);
        }
        this.aQf = this.aPR.Tq().age();
        if (this.aQf != null) {
            this.aQh.setLocation((float) this.aQf.getLatitude(), (float) this.aQf.getLongitude());
        }
        if (this.aQr != null) {
            this.aQh.setOutputFile(this.aQr.getFileDescriptor());
        } else {
            bga(this.aQl.fileFormat);
            this.aQh.setOutputFile(this.aQs);
        }
        if (j <= 0 || j >= Vf) {
            j = Vf;
        }
        try {
            this.aQh.setMaxFileSize(j);
        } catch (RuntimeException e3) {
        }
        if (bgk) {
            this.aQh.setOrientationHint(this.aPR.To());
            this.aQh.setVideoSize(this.aQu, this.aQt);
        } else {
            this.aQh.setOrientationHint(C0616j.aoQ(this.aPR.SQ(), this.aPR.Tp()));
        }
        try {
            this.aQh.prepare();
            if (bgk) {
                this.aQp.bfG();
                int To = this.aPR.To();
                VideoEffectRenderer$Mirror videoEffectRenderer$Mirror = VideoEffectRenderer$Mirror.NONE;
                if (bgl()) {
                    if (bgm()) {
                        videoEffectRenderer$Mirror = VideoEffectRenderer$Mirror.NONE;
                    } else if (To % 180 == 0) {
                        videoEffectRenderer$Mirror = VideoEffectRenderer$Mirror.LANDSCAPE;
                    } else {
                        videoEffectRenderer$Mirror = VideoEffectRenderer$Mirror.VERTICAL;
                    }
                }
                this.aQp.bfM(this.aQh.getSurface(), this.aQu, this.aQt, videoEffectRenderer$Mirror);
                this.aPR.UR().m26a(this.aQp);
            }
            this.aQh.setOnErrorListener(this);
            this.aQh.setOnInfoListener(this);
            return 0;
        } catch (Throwable e4) {
            C0090a.bvi("VideoRecordManager", "prepare failed for " + this.aQs, e4);
            bgv();
            throw new RuntimeException(e4);
        }
    }

    private void bgv() {
        if (this.aQh != null) {
            C0090a.bvo("VideoRecordManager", "Releasing media recorder.");
            bfS();
            this.aQh.reset();
            this.aQh.release();
            this.aQh = null;
        } else {
            C0090a.bvo("VideoRecordManager", "Media recorder already is null");
        }
        this.aQs = null;
    }

    private void bfS() {
        if (this.aQs != null) {
            File file = new File(this.aQs);
            if (file.length() < 1048576 && file.delete()) {
                C0090a.bvo("VideoRecordManager", "Empty video file deleted: " + this.aQs);
                this.aQs = null;
            }
        }
    }

    private void bfT() {
        if (this.aQr != null) {
            try {
                this.aQr.close();
            } catch (Throwable e) {
                C0090a.bvi("VideoRecordManager", "Fail to close fd", e);
            }
            this.aQr = null;
        }
    }

    private void bgr() {
        if (this.aPZ != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.aPZ.bgZ();
            } else {
                this.aPR.Tz().post(new C1163q(this));
            }
        }
    }

    private void bgq(int i) {
        if (this.aPZ != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.aPZ.bgY(i);
            } else {
                this.aPR.Tz().post(new C1164r(this, i));
            }
        }
    }

    private void bgp(C1154g c1154g) {
        if (this.aPZ != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.aPZ.bgU(c1154g);
            } else {
                this.aPR.Tz().post(new C1165s(this, c1154g));
            }
        }
    }

    public void bgA() {
        int bgt = bgt();
        if (bgt == 0 || this.aPZ == null) {
            try {
                this.aQh.start();
                this.aQj = 0;
                this.aQk = 0;
                this.aPR.Tj(true);
                this.aPR.SY().tW();
                this.aQm = SystemClock.uptimeMillis();
                this.mState = 1;
                if (this.aPZ != null) {
                    this.aPZ.bgX(0);
                }
                bgF();
                return;
            } catch (IllegalStateException e) {
                bgv();
                bgb().Jf();
                if (this.aPZ != null) {
                    this.aPZ.bgX(3);
                }
                if (bgk()) {
                    this.aQp.stop();
                    this.aPR.UR().m32i(this.aQp);
                } else {
                    bgD(false);
                }
                return;
            } catch (Exception e2) {
                bgv();
                bgb().Jf();
                if (this.aPZ != null) {
                    this.aPZ.bgX(8);
                }
                if (bgk()) {
                    this.aQp.stop();
                    this.aPR.UR().m32i(this.aQp);
                } else {
                    bgD(false);
                }
                return;
            }
        }
        this.aPZ.bgX(bgt);
    }

    public void bgB(boolean z) {
        if (this.mState != 5) {
            C0090a.bvo("VideoRecordManager", "stopVideoRecording");
            this.aPR.Tj(false);
            if (this.mState == 1 || this.mState == 3 || this.mState == 4) {
                int i;
                this.mState = 5;
                this.aPY.removeMessages(1);
                if (bgk()) {
                    this.aQp.stop();
                    this.aPR.UR().m32i(this.aQp);
                }
                try {
                    this.aQh.setOnErrorListener(null);
                    this.aQh.setOnInfoListener(null);
                    this.aQh.stop();
                    this.aPV = this.aQs;
                    this.aQs = null;
                    C0090a.bvo("VideoRecordManager", "stopVideoRecording: Setting current video filename: " + this.aPV);
                    i = 0;
                } catch (Throwable e) {
                    C0090a.bvi("VideoRecordManager", "stopVideoRecording stop fail", e);
                    if (this.aQs != null) {
                        bfZ(this.aQs);
                        this.aQs = null;
                    }
                    i = 7;
                }
                if (!(bgk() || z)) {
                    bgD(false);
                }
                bgr();
                if (i == 0) {
                    bfR();
                }
                bgv();
                this.aPR.Ti().alY(null);
                this.mState = 0;
                bgq(i);
                return;
            }
            C0090a.m1e("VideoRecordManager", "VideoRecording is not started!!!");
            bgq(9);
        }
    }

    public void bgs() {
        switch (this.mState) {
            case 1:
                C0379e.FI().FJ().EU(this.aQh);
                this.aQj = SystemClock.uptimeMillis();
                this.aQp.bfD();
                this.mState = 3;
                if (this.aPZ != null) {
                    this.aPZ.bgV(true);
                    break;
                }
                break;
            case 3:
                this.aQp.bfI();
                try {
                    Method declaredMethod = this.aQh.getClass().getDeclaredMethod("resume", new Class[0]);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(this.aQh, new Object[0]);
                } catch (NoSuchMethodException e) {
                    C0090a.bvm("VideoRecordManager", "no pause method error" + e);
                    this.aQh.start();
                } catch (IllegalAccessException e2) {
                    C0090a.bvm("VideoRecordManager", "pause method Access error" + e2);
                } catch (InvocationTargetException e3) {
                    C0090a.bvm("VideoRecordManager", "pause method invoke error" + e3);
                }
                this.aQk = (SystemClock.uptimeMillis() - this.aQj) + this.aQk;
                this.mState = 1;
                if (this.aPZ != null) {
                    this.aPZ.bgV(false);
                    break;
                }
                break;
            default:
                C0090a.bvo("VideoRecordManager", "error state for pause recording, state is " + this.mState);
                break;
        }
        bgF();
    }

    public void bgE() {
        if (this.mState != 1) {
            C0090a.bvo("VideoRecordManager", "error state for taking picture, state is " + this.mState);
            return;
        }
        this.mState = 4;
        C0090a.bvo("VideoRecordManager", "Video snapshot start");
        C0616j.apa(this.aPR.SN(), "video_2", "VideoRecordManager");
        if (bgk()) {
            this.aPR.UR().m34k(new C1156i());
            return;
        }
        Location age = this.aPR.Tq().age();
        bgw(age);
        this.aPR.Tr().IO(null, null, null, new C1157j(this, age));
    }

    boolean bgk() {
        boolean z = false;
        ListPreference tp = this.aPR.SR().tp(C1152e.bgc());
        if (tp == null) {
            return false;
        }
        if (!tp.tw().equalsIgnoreCase("none")) {
            z = true;
        }
        return z;
    }

    static String bgc() {
        return "pref_camera_ztemt_fun_effect";
    }

    private void bgF() {
        if (this.mState == 1 || this.mState == 4) {
            boolean z;
            long max;
            long uptimeMillis = (SystemClock.uptimeMillis() - this.aQm) - this.aQk;
            this.aQn = uptimeMillis;
            if (this.aQg == 0 || uptimeMillis < ((long) (this.aQg - 60000))) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                max = Math.max(0, ((long) this.aQg) - uptimeMillis) + 999;
            } else {
                max = uptimeMillis;
            }
            String bgo = C1152e.bgo(max, false);
            this.aQo++;
            uptimeMillis = 1000 - (uptimeMillis % 1000);
            this.aPY.removeMessages(1);
            this.aPY.removeMessages(1);
            this.aPY.sendEmptyMessageDelayed(1, uptimeMillis);
            if (this.aPZ != null) {
                this.aPZ.bgT(false, z, bgo);
            }
        } else if (this.mState == 3) {
            this.aPY.removeMessages(1);
            this.aPY.sendEmptyMessageDelayed(1, 500);
            if (this.aPZ != null) {
                this.aPZ.bgT(true, false, null);
            }
        }
    }

    private static String bgo(long j, boolean z) {
        long j2 = j / 1000;
        long j3 = j2 / 60;
        long j4 = j3 / 60;
        long j5 = j3 - (60 * j4);
        j3 = j2 - (j3 * 60);
        StringBuilder stringBuilder = new StringBuilder();
        if (j4 < 10) {
            stringBuilder.append('0');
        }
        stringBuilder.append(j4);
        stringBuilder.append(':');
        if (j5 < 10) {
            stringBuilder.append('0');
        }
        stringBuilder.append(j5);
        stringBuilder.append(':');
        if (j3 < 10) {
            stringBuilder.append('0');
        }
        stringBuilder.append(j3);
        if (z) {
            stringBuilder.append('.');
            j2 = (j - (j2 * 1000)) / 10;
            if (j2 < 10) {
                stringBuilder.append('0');
            }
            stringBuilder.append(j2);
        }
        return stringBuilder.toString();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void bfR() {
        /*
        r9 = this;
        r6 = 1;
        r7 = 0;
        r8 = 0;
        r0 = r9.aQr;
        if (r0 != 0) goto L_0x00b2;
    L_0x0007:
        r0 = r9.aPX;
        r1 = "_size";
        r2 = new java.io.File;
        r3 = r9.aPV;
        r2.<init>(r3);
        r2 = r2.length();
        r2 = java.lang.Long.valueOf(r2);
        r0.put(r1, r2);
        r0 = r9.aQn;
        r2 = 0;
        r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r2 <= 0) goto L_0x00e7;
    L_0x0026:
        r2 = r9.aPX;
        r3 = "duration";
        r0 = java.lang.Long.valueOf(r0);
        r2.put(r3, r0);
    L_0x0032:
        r0 = r9.aPX;	 Catch:{ Exception -> 0x0123 }
        r1 = "_data";
        r0 = r0.getAsString(r1);	 Catch:{ Exception -> 0x0123 }
        r1 = new java.io.File;	 Catch:{ Exception -> 0x0123 }
        r2 = r9.aPV;	 Catch:{ Exception -> 0x0123 }
        r1.<init>(r2);	 Catch:{ Exception -> 0x0123 }
        r2 = new java.io.File;	 Catch:{ Exception -> 0x0123 }
        r2.<init>(r0);	 Catch:{ Exception -> 0x0123 }
        r1 = r1.renameTo(r2);	 Catch:{ Exception -> 0x0123 }
        if (r1 == 0) goto L_0x004f;
    L_0x004d:
        r9.aPV = r0;	 Catch:{ Exception -> 0x0123 }
    L_0x004f:
        r0 = new com.android.common.l.h;	 Catch:{ Throwable -> 0x0106 }
        r1 = r9.aPR;	 Catch:{ Throwable -> 0x0106 }
        r2 = r9.aPX;	 Catch:{ Throwable -> 0x0106 }
        r3 = r9.aPV;	 Catch:{ Throwable -> 0x0106 }
        r4 = 0;
        r5 = 0;
        r0.<init>(r1, r2, r3, r4, r5);	 Catch:{ Throwable -> 0x0106 }
        r1 = r9.aPR;	 Catch:{ Throwable -> 0x0106 }
        r1 = r1.Ti();	 Catch:{ Throwable -> 0x0106 }
        r1.alX(r0);	 Catch:{ Throwable -> 0x0106 }
        r0 = r9.aPR;	 Catch:{ Throwable -> 0x0106 }
        r0 = r0.SP();	 Catch:{ Throwable -> 0x0106 }
        r1 = com.android.common.appService.CameraMember.VIDEO_SLOMO;	 Catch:{ Throwable -> 0x0106 }
        if (r0 != r1) goto L_0x0103;
    L_0x006f:
        r0 = r6;
    L_0x0070:
        r9.aQc = r0;	 Catch:{ Throwable -> 0x0106 }
        r0 = r9.aQc;	 Catch:{ Throwable -> 0x0106 }
        if (r0 == 0) goto L_0x007b;
    L_0x0076:
        r0 = r9.aPV;	 Catch:{ Throwable -> 0x0106 }
        r9.bfQ(r0);	 Catch:{ Throwable -> 0x0106 }
    L_0x007b:
        r0 = r9.aPR;	 Catch:{ Throwable -> 0x0106 }
        r0 = r0.SN();	 Catch:{ Throwable -> 0x0106 }
        r0 = r0.getApplicationContext();	 Catch:{ Throwable -> 0x0106 }
        r1 = 1;
        r1 = new java.lang.String[r1];	 Catch:{ Throwable -> 0x0106 }
        r2 = r9.aPV;	 Catch:{ Throwable -> 0x0106 }
        r3 = 0;
        r1[r3] = r2;	 Catch:{ Throwable -> 0x0106 }
        r2 = 0;
        r3 = 0;
        android.media.MediaScannerConnection.scanFile(r0, r1, r2, r3);	 Catch:{ Throwable -> 0x0106 }
        r0 = r9.aPV;	 Catch:{ Throwable -> 0x0106 }
        r9.aQs = r0;	 Catch:{ Throwable -> 0x0106 }
    L_0x0096:
        r0 = "VideoRecordManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Current video URI: ";
        r1 = r1.append(r2);
        r2 = r9.aPW;
        r1 = r1.append(r2);
        r1 = r1.toString();
        com.p010a.C0090a.bvo(r0, r1);
    L_0x00b2:
        r0 = r9.aPR;
        r0 = r0.VN();
        if (r0 == 0) goto L_0x00e2;
    L_0x00ba:
        r0 = r9.aPZ;
        if (r0 == 0) goto L_0x00e2;
    L_0x00be:
        r0 = new com.android.video.g;
        r0.<init>();
        r1 = r9.aQr;
        r0.aQv = r1;
        r1 = r9.aQs;
        r0.aQx = r1;
        r1 = r9.aPW;
        r0.aQy = r1;
        r1 = r9.aQl;
        r1 = r1.fileFormat;
        r1 = r9.bfV(r1);
        r0.aQw = r1;
        r1 = r9.aQl;
        r1 = r1.videoFrameWidth;
        r0.width = r1;
        r9.bgp(r0);
    L_0x00e2:
        r9.aQs = r8;
        r9.aPX = r8;
        return;
    L_0x00e7:
        r2 = "VideoRecordManager";
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "Video duration <= 0 : ";
        r3 = r3.append(r4);
        r0 = r3.append(r0);
        r0 = r0.toString();
        com.p010a.C0090a.bvj(r2, r0);
        goto L_0x0032;
    L_0x0103:
        r0 = r7;
        goto L_0x0070;
    L_0x0106:
        r0 = move-exception;
        r1 = "VideoRecordManager";
        r2 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0123 }
        r2.<init>();	 Catch:{ Exception -> 0x0123 }
        r3 = "Failed to write MediaStore";
        r2 = r2.append(r3);	 Catch:{ Exception -> 0x0123 }
        r0 = r2.append(r0);	 Catch:{ Exception -> 0x0123 }
        r0 = r0.toString();	 Catch:{ Exception -> 0x0123 }
        com.p010a.C0090a.m1e(r1, r0);	 Catch:{ Exception -> 0x0123 }
        goto L_0x0096;
    L_0x0123:
        r0 = move-exception;
        r1 = "VideoRecordManager";
        r2 = "failed to add video to media store";
        com.p010a.C0090a.bvi(r1, r2, r0);	 Catch:{ all -> 0x0151 }
        r0 = 0;
        r9.aPW = r0;	 Catch:{ all -> 0x0151 }
        r0 = 0;
        r9.aPV = r0;	 Catch:{ all -> 0x0151 }
        r0 = "VideoRecordManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Current video URI: ";
        r1 = r1.append(r2);
        r2 = r9.aPW;
        r1 = r1.append(r2);
        r1 = r1.toString();
        com.p010a.C0090a.bvo(r0, r1);
        goto L_0x00b2;
    L_0x0151:
        r0 = move-exception;
        r1 = "VideoRecordManager";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "Current video URI: ";
        r2 = r2.append(r3);
        r3 = r9.aPW;
        r2 = r2.append(r3);
        r2 = r2.toString();
        com.p010a.C0090a.bvo(r1, r2);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.video.e.bfR():void");
    }

    private String bgg(int i) {
        return this.aPR.SN().getString(i);
    }

    private void bgu() {
        this.aPS = ((Integer) C0081r.HU.get("aac")).intValue();
        this.aQq = ((Integer) C0081r.HV.get("h264")).intValue();
        C0090a.bvo("VideoRecordManager", "Audio/Video Encoder type in application= " + this.aPS + " / " + this.aQq);
        bgi();
    }

    private void bgi() {
        Intent bgf = bgf();
        if (bgf.hasExtra("android.intent.extra.durationLimit")) {
            this.aQg = bgf.getIntExtra("android.intent.extra.durationLimit", 0) * 1000;
        } else {
            this.aQg = 0;
        }
        if (C0421M.dC().dD().dm() && this.aPR.SP() == CameraMember.VIDEO_SLOMO) {
            this.aQg = 3600000;
        }
        C0090a.bvm("VideoRecordManager", "initMaxDuration   mMaxVideoDurationInMs=" + this.aQg);
    }

    private void bga(int i) {
        String str;
        long currentTimeMillis = System.currentTimeMillis();
        String bfX = bfX(currentTimeMillis);
        String str2 = bfX + bfU(i);
        String bfV = bfV(i);
        if (this.aPR.SP() == CameraMember.VIDEO_SLOMO) {
            str = C0701s.ara(CameraMember.VIDEO_SLOMO.aan()) + '/' + str2;
        } else {
            str = C0701s.ara(CameraMember.VIDEO_RECORD.aan()) + '/' + str2;
        }
        String str3 = str + ".tmp";
        this.aPX = new ContentValues(10);
        this.aPX.put("title", bfX);
        this.aPX.put("_display_name", str2);
        this.aPX.put("datetaken", Long.valueOf(currentTimeMillis));
        this.aPX.put("mime_type", bfV);
        this.aPX.put("_data", str);
        this.aPX.put("resolution", this.aQu + "x" + this.aQt);
        if (this.aQf != null) {
            this.aPX.put("latitude", Double.valueOf(this.aQf.getLatitude()));
            this.aPX.put("longitude", Double.valueOf(this.aQf.getLongitude()));
        }
        this.aQs = str3;
        C0090a.bvo("VideoRecordManager", "New video filename: " + this.aQs);
    }

    private String bfU(int i) {
        if (i == 2) {
            return ".mp4";
        }
        return ".3gp";
    }

    private String bfV(int i) {
        if (i == 2) {
            return "video/mp4";
        }
        return "video/3gpp";
    }

    private String bfX(long j) {
        return new SimpleDateFormat(bgg(R.string.video_file_name_format)).format(new Date(j));
    }

    private void bfZ(String str) {
        C0090a.bvo("VideoRecordManager", "Deleting video " + str);
        if (!new File(str).delete()) {
            C0090a.bvo("VideoRecordManager", "Could not delete " + str);
        }
    }

    public void onError(MediaRecorder mediaRecorder, int i, int i2) {
        bgB(false);
    }

    public void onInfo(MediaRecorder mediaRecorder, int i, int i2) {
        if (i == 800) {
            C0090a.bvm("VideoRecordManager", "onInfo MEDIA_RECORDER_INFO_MAX_DURATION_REACHED");
            if (this.mState == 1) {
                bgB(false);
            }
        } else if (i == 801) {
            int i3;
            C0090a.bvm("VideoRecordManager", "onInfo MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED");
            if (this.aQd) {
                i3 = 5;
            } else {
                i3 = 6;
            }
            if (this.aPZ != null) {
                this.aPZ.bgS(i3);
            }
            if (this.mState == 1) {
                bgB(false);
            }
        }
    }

    private SparseArray bgd(int i, int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(C0523o.BY, C0421M.dC().dD().br());
        sparseArray.put(C0523o.BZ, C0421M.dC().dD().bs());
        sparseArray.put(C0523o.Cp, Integer.valueOf(i));
        sparseArray.put(C0523o.Cq, Integer.valueOf(i2));
        return sparseArray;
    }

    private void bgC(byte[] bArr, Location location) {
        long currentTimeMillis = System.currentTimeMillis();
        String aoP = C0616j.aoP(currentTimeMillis);
        int aoA = C0472e.aoA(bArr);
        String bge = bge();
        ContentValues bfW = bfW(aoP, currentTimeMillis, aoA, bArr, bge, location);
        this.aPR.Ti().alX(new C0624c(this.aPR, bArr, null, bge + "/", aoP + ".jpg", bfW, aoA, new C1158k()));
    }

    private String bge() {
        int aan = CameraMember.NORMAL.aan();
        if (bgl()) {
            aan = CameraMember.FRONT.aan();
        }
        return C0701s.ari(aan, this.aPR.SQ());
    }

    private ContentValues bfW(String str, long j, int i, byte[] bArr, String str2, Location location) {
        ContentValues contentValues = new ContentValues(9);
        contentValues.put("title", str);
        contentValues.put("_display_name", str + ".jpg");
        contentValues.put("datetaken", Long.valueOf(j));
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put("orientation", Integer.valueOf(i));
        contentValues.put("_data", str2 + "/" + str + ".jpg");
        contentValues.put("_size", Integer.valueOf(bArr.length));
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        contentValues.put("width", Integer.valueOf(options.outWidth));
        contentValues.put("height", Integer.valueOf(options.outHeight));
        if (location != null) {
            contentValues.put("latitude", Double.valueOf(location.getLatitude()));
            contentValues.put("longitude", Double.valueOf(location.getLongitude()));
        }
        return contentValues;
    }

    public void bfY() {
        if (this.aPV != null) {
            bfZ(this.aPV);
            this.aPV = null;
            if (this.aPW != null) {
                this.aPU.delete(this.aPW, null, null);
                this.aPW = null;
            }
        }
        this.aPR.Ti().alY(null);
    }

    private void bfQ(String str) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str, true);
            fileOutputStream.write(C1152e.bfP(this.aQn));
            fileOutputStream.write(C0616j.apo(-1));
            fileOutputStream.write(C0616j.apo(-1));
            fileOutputStream.write(C0616j.apo(-1438755401));
            fileOutputStream.write(C0616j.apo(24));
            fileOutputStream.close();
            C0090a.bvo("VideoRecordManager", "add slomo flag success");
        } catch (Exception e) {
            C0090a.bvo("VideoRecordManager", "add slomo flag failed ");
        }
    }

    private static byte[] bfP(long j) {
        return new byte[]{(byte) ((int) ((j >> 56) & 255)), (byte) ((int) ((j >> 48) & 255)), (byte) ((int) ((j >> 40) & 255)), (byte) ((int) ((j >> 32) & 255)), (byte) ((int) ((j >> 24) & 255)), (byte) ((int) ((j >> 16) & 255)), (byte) ((int) ((j >> 8) & 255)), (byte) ((int) (j & 255))};
    }

    private boolean bgm() {
        return "on".equals(this.aPR.SY().tC());
    }

    private boolean bgl() {
        return this.aPR.SQ() == C0384o.Jr().Jt();
    }

    private void bgD(boolean z) {
        if (this.aPR.SP() == CameraMember.VIDEO_RECORD && C0421M.dC().dD().dn() && !this.aQd) {
            if (z) {
                bgz();
            } else {
                this.aPR.TB();
            }
            if (z != this.aQe) {
                if (this.aPZ != null) {
                    this.aPZ.bgR(z ? 1 : 0);
                }
                this.aQe = z;
            }
        }
    }

    private void bgz() {
        if (bgb() != null && !this.aPR.SO()) {
            if (!(this.aPT.JV() == DeviceState.NOT_INITIALIZED || this.aPT.JV() == DeviceState.PREVIEW_STOPPED)) {
                bgb().Jd();
            }
            if (this.aPR.UR().m37o(bgb(), false)) {
                this.aPR.Tn().GY(10);
                bgb().IQ(this.aPR.Tn());
                bgb().Jg();
                this.aPT.Kd(DeviceState.IDLE);
                return;
            }
            C0090a.m1e("VideoRecordManager", "setCameraPrevieweTarget fail");
        }
    }

    private void bgx() {
        synchronized (this.aPR.Tr()) {
            this.aPR.Tn().HP(bgh(), this.aQi);
            this.aPR.Tr().IQ(this.aPR.Tn());
        }
    }

    private void bgw(Location location) {
        synchronized (this.aPR.Tr()) {
            int aoQ = C0616j.aoQ(this.aPR.SQ(), this.aPR.Tp());
            this.aPR.Tn().Hz(aoQ);
            C0616j.apf(this.aPR.SN(), this.aPR.Tn(), location);
            this.aPR.Tn().HI(bgh(), aoQ);
            this.aPR.Tr().IQ(this.aPR.Tn());
        }
    }

    private String bgh() {
        if (this.aPR.SQ() == C0384o.Jr().Jt() && IndependenceUtil.afZ && !"off".equals(this.aPR.SY().tC())) {
            C0090a.bvo("VideoRecordManager", "VideoMirror on");
            return "on";
        }
        C0090a.bvo("VideoRecordManager", "VideoMirror off");
        return "off";
    }

    public void setOrientation(int i) {
        this.aQi = i;
    }
}
