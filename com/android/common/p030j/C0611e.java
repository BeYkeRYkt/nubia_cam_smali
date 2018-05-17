package com.android.common.p030j;

import android.content.ContentValues;
import android.location.Location;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.view.Surface;
import com.android.camera.R;
import com.android.common.ActivityBase;
import com.android.common.p001l.C0626h;
import com.p010a.C0090a;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

class C0611e {
    private ActivityBase Zh;
    private BufferInfo Zi = null;
    private String Zj = null;
    private int Zk = 10;
    private int Zl = 0;
    private C0613g Zm = null;
    private int Zn = 100;
    private Object Zo = new Object();
    private MediaCodec Zp = null;
    private MediaMuxer Zq = null;
    private boolean Zr = false;
    private boolean Zs = false;
    private Surface Zt;
    private long Zu = 0;
    private int Zv = 0;
    private int Zw = -1;
    private C0607a Zx = null;

    public C0611e(ActivityBase activityBase) {
        this.Zx = new C0607a(activityBase.asM());
        this.Zh = activityBase;
    }

    private void aha(int i, int i2, String str) {
        C0090a.bvm("llw", "prepareEncoder width is: " + i + ", height is: " + i2);
        this.Zi = new BufferInfo();
        try {
            MediaFormat createVideoFormat = MediaFormat.createVideoFormat(this.Zx.YQ, i, i2);
            createVideoFormat.setInteger("color-format", 2130708361);
            this.Zx.getClass();
            createVideoFormat.setInteger("bitrate", 10485760);
            createVideoFormat.setInteger("frame-rate", this.Zk);
            this.Zx.getClass();
            createVideoFormat.setInteger("i-frame-interval", 1);
            this.Zp = MediaCodec.createEncoderByType(this.Zx.YQ);
            this.Zp.configure(createVideoFormat, null, null, 1);
            this.Zj = agU(str, System.currentTimeMillis());
            this.Zq = new MediaMuxer(this.Zj, 0);
        } catch (Exception e) {
            ahb();
            e.printStackTrace();
        }
    }

    private String agU(String str, long j) {
        Date date = new Date(j);
        return str + "/" + new SimpleDateFormat(this.Zh.getString(R.string.video_file_name_format)).format(date) + ".mp4";
    }

    public void setDegrees(int i) {
        if (this.Zq != null) {
            this.Zq.setOrientationHint(i);
        }
    }

    public void agT(int i) {
        this.Zk = i;
        C0090a.bvm("llw", "setFPS mFPS is: " + this.Zk);
    }

    public boolean agP(int i, int i2, String str, int i3) {
        if (this.Zt != null) {
            return false;
        }
        C0090a.bvm("llw", "firstTimeSetup is ok ");
        try {
            if (this.Zp == null) {
                aha(i, i2, str);
            }
            setDegrees(i3);
            this.Zt = this.Zp.createInputSurface();
            C0090a.bvm("llw", "firstTimeSetup mSurface is :" + this.Zt);
            this.Zp.start();
            this.Zs = true;
            this.Zu = 0;
        } catch (Exception e) {
            ahb();
        }
        return true;
    }

    private boolean agZ() {
        return this.Zp != null ? this.Zs : false;
    }

    public void agQ() {
        if (agZ()) {
            synchronized (this.Zo) {
                agW(false);
            }
        }
    }

    private void ahc(String str) {
        try {
            ContentValues contentValues = new ContentValues(2);
            contentValues.put("mime_type", "video/mp4");
            contentValues.put("_data", str);
            try {
                Location age = this.Zh.arB().Tq().age();
                if (age != null) {
                    contentValues.put("latitude", Double.valueOf(age.getLatitude()));
                    contentValues.put("longitude", Double.valueOf(age.getLongitude()));
                }
            } catch (NullPointerException e) {
                C0090a.m1e("MyRecorder", "get location error " + e.getMessage());
            }
            this.Zh.arB().Ti().alX(new C0626h(this.Zh.arB(), contentValues, str, 0, new C0615i(this, str)));
        } catch (Throwable e2) {
            C0090a.bvi("MyRecorder", "updateContentResolver fail", e2);
            e2.printStackTrace();
        }
    }

    public void stop() {
        if (agZ()) {
            synchronized (this.Zo) {
                agW(true);
            }
            ahb();
            this.Zs = false;
            this.Zr = false;
        }
    }

    private void ahb() {
        if (this.Zp != null) {
            this.Zp.stop();
            this.Zp.release();
            this.Zp = null;
        }
        if (this.Zt != null) {
            this.Zt.release();
            this.Zt = null;
        }
        try {
            if (this.Zr && this.Zq != null) {
                C0090a.bvm("llw", "mMediaMuxer.stop()");
                this.Zq.stop();
                this.Zq.release();
                this.Zq = null;
                if (this.Zl <= this.Zk) {
                    agV(this.Zj);
                    C0090a.bvo("meeee", "Del:" + this.Zl + "<=" + this.Zk);
                } else if (agY(this.Zj)) {
                    ahc(this.Zj);
                }
            }
        } catch (IllegalStateException e) {
            agV(this.Zj);
            C0090a.m1e("llw", "mMediaMuxer.stop() failed");
            e.printStackTrace();
        }
        this.Zl = 0;
    }

    private boolean agY(String str) {
        File file = new File(str);
        if (file == null || !file.exists()) {
            return false;
        }
        return true;
    }

    public void agS() {
        agV(this.Zj);
    }

    private void agV(String str) {
        if (str != null && !str.isEmpty()) {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void agW(boolean r13) {
        /*
        r12 = this;
        r0 = "llw";
        r1 = "drainEncoder enter";
        com.p010a.C0090a.bvm(r0, r1);
        if (r13 == 0) goto L_0x0010;
    L_0x000b:
        r0 = r12.Zp;
        r0.signalEndOfInputStream();
    L_0x0010:
        r0 = r12.Zp;
        r0 = r0.getOutputBuffers();
    L_0x0016:
        r1 = r12.Zp;
        r2 = r12.Zi;
        r4 = 0;
        r1 = r1.dequeueOutputBuffer(r2, r4);
        r2 = -1;
        if (r1 != r2) goto L_0x0038;
    L_0x0023:
        if (r13 != 0) goto L_0x0016;
    L_0x0025:
        r0 = "llw";
        r1 = "drainEncoder break0";
        com.p010a.C0090a.bvm(r0, r1);
    L_0x002e:
        r0 = "llw";
        r1 = "drainEncoder exit";
        com.p010a.C0090a.bvm(r0, r1);
        return;
    L_0x0038:
        r2 = -3;
        if (r1 != r2) goto L_0x0042;
    L_0x003b:
        r0 = r12.Zp;
        r0 = r0.getOutputBuffers();
        goto L_0x0016;
    L_0x0042:
        r2 = -2;
        if (r1 != r2) goto L_0x0069;
    L_0x0045:
        r1 = r12.Zr;
        if (r1 == 0) goto L_0x0052;
    L_0x0049:
        r0 = new java.lang.RuntimeException;
        r1 = "format changed twice";
        r0.<init>(r1);
        throw r0;
    L_0x0052:
        r1 = r12.Zp;
        r1 = r1.getOutputFormat();
        r2 = r12.Zq;
        r1 = r2.addTrack(r1);
        r12.Zw = r1;
        r1 = r12.Zq;
        r1.start();
        r1 = 1;
        r12.Zr = r1;
        goto L_0x0016;
    L_0x0069:
        r2 = r0[r1];
        if (r2 != 0) goto L_0x008e;
    L_0x006d:
        r0 = new java.lang.RuntimeException;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "encoderOutputBuffer ";
        r2 = r2.append(r3);
        r1 = r2.append(r1);
        r2 = " was null";
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x008e:
        r3 = r12.Zi;
        r3 = r3.flags;
        r3 = r3 & 2;
        if (r3 == 0) goto L_0x009b;
    L_0x0096:
        r3 = r12.Zi;
        r4 = 0;
        r3.size = r4;
    L_0x009b:
        r3 = r12.Zi;
        r3 = r3.size;
        if (r3 == 0) goto L_0x014d;
    L_0x00a1:
        r3 = r12.Zr;
        if (r3 != 0) goto L_0x00ae;
    L_0x00a5:
        r0 = new java.lang.RuntimeException;
        r1 = "muxer hasn't started";
        r0.<init>(r1);
        throw r0;
    L_0x00ae:
        r3 = r12.Zi;
        r3 = r3.offset;
        r2.position(r3);
        r3 = r12.Zi;
        r3 = r3.offset;
        r4 = r12.Zi;
        r4 = r4.size;
        r3 = r3 + r4;
        r2.limit(r3);
        r4 = java.lang.System.currentTimeMillis();
        r3 = r12.Zi;
        r6 = r12.Zu;
        r3.presentationTimeUs = r6;
        r6 = r12.Zu;
        r3 = r12.Zk;
        r8 = (long) r3;
        r10 = 1000000; // 0xf4240 float:1.401298E-39 double:4.940656E-318;
        r8 = r10 / r8;
        r6 = r6 + r8;
        r12.Zu = r6;
        r3 = "llw";
        r6 = new java.lang.StringBuilder;
        r6.<init>();
        r7 = "drainEncoder mTime is: ";
        r6 = r6.append(r7);
        r7 = r12.Zi;
        r8 = r7.presentationTimeUs;
        r6 = r6.append(r8);
        r7 = ", mFPS is: ";
        r6 = r6.append(r7);
        r7 = r12.Zk;
        r6 = r6.append(r7);
        r6 = r6.toString();
        com.p010a.C0090a.bvm(r3, r6);
        r3 = r12.Zq;
        r6 = r12.Zw;
        r7 = r12.Zi;
        r3.writeSampleData(r6, r2, r7);
        r2 = r12.Zl;
        r2 = r2 + 1;
        r12.Zl = r2;
        r2 = r12.Zv;
        r3 = r12.Zi;
        r3 = r3.size;
        r2 = r2 + r3;
        r12.Zv = r2;
        r2 = java.lang.System.currentTimeMillis();
        r2 = r2 - r4;
        r4 = 50;
        r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r4 <= 0) goto L_0x014d;
    L_0x0126:
        r4 = "DEBUG";
        r5 = "XXX: dt=%d, size=%.2f";
        r6 = 2;
        r6 = new java.lang.Object[r6];
        r2 = java.lang.Long.valueOf(r2);
        r3 = 0;
        r6[r3] = r2;
        r2 = r12.Zv;
        r2 = (float) r2;
        r3 = 1149239296; // 0x44800000 float:1024.0 double:5.67799655E-315;
        r2 = r2 / r3;
        r3 = 1149239296; // 0x44800000 float:1024.0 double:5.67799655E-315;
        r2 = r2 / r3;
        r2 = java.lang.Float.valueOf(r2);
        r3 = 1;
        r6[r3] = r2;
        r2 = java.lang.String.format(r5, r6);
        com.p010a.C0090a.m1e(r4, r2);
    L_0x014d:
        r2 = r12.Zp;
        r3 = 0;
        r2.releaseOutputBuffer(r1, r3);
        r1 = r12.Zi;
        r1 = r1.flags;
        r1 = r1 & 4;
        if (r1 == 0) goto L_0x0016;
    L_0x015b:
        r0 = "llw";
        r1 = "drainEncoder break1";
        com.p010a.C0090a.bvm(r0, r1);
        goto L_0x002e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.j.e.agW(boolean):void");
    }

    public Surface agX() {
        return this.Zt;
    }

    public long agR() {
        if (this.Zj == null) {
            return 0;
        }
        return new File(this.Zj).length();
    }
}
