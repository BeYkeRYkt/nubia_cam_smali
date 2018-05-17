package com.android.common;

import android.media.SoundPool;
import android.media.SoundPool.OnLoadCompleteListener;
import com.android.camera.R;
import com.android.common.custom.C0421M;

public class C0771x {
    private static final String[] ajT = new String[]{"/system/media/audio/ui/camera_click.ogg", "/system/media/audio/ui/camera_focus.ogg", "/system/media/audio/ui/VideoRecord.ogg", "/system/media/audio/ui/VideoRecord.ogg", "/system/media/audio/ui/ZoomSound.ogg", "/system/media/audio/ui/cameraCountdownSlow.ogg", "/system/media/audio/ui/cameraCountdownFast.ogg", "/system/media/audio/ui/camera_wheel.ogg"};
    private static final int[] ajU;
    private OnLoadCompleteListener ajV = new ak(this);
    private int ajW;
    private int[] ajX;
    private SoundPool ajY;

    static {
        int i;
        int[] iArr = new int[8];
        iArr[0] = R.raw.camera_click;
        if (C0421M.dC().dD().getProductName().equals("N940Sc")) {
            i = R.raw.camera_focus_n940sc;
        } else {
            i = R.raw.camera_focus;
        }
        iArr[1] = i;
        iArr[2] = R.raw.video_record;
        iArr[3] = R.raw.video_record;
        iArr[4] = 0;
        iArr[5] = R.raw.camera_countdown_slow;
        iArr[6] = R.raw.camera_countdown_fast;
        iArr[7] = R.raw.camera_wheel;
        ajU = iArr;
    }

    public C0771x(int i) {
        int i2 = 0;
        this.ajY = new SoundPool(5, i, 0);
        this.ajY.setOnLoadCompleteListener(this.ajV);
        this.ajX = new int[ajU.length];
        while (i2 < this.ajX.length) {
            this.ajX[i2] = -1;
            i2++;
        }
        this.ajW = -1;
    }

    public synchronized void avu(int i) {
        if (i >= 0) {
            if (i < ajT.length) {
                if (this.ajX[i] == -1) {
                    this.ajX[i] = this.ajY.load(ajT[i], 1);
                }
            }
        }
        throw new RuntimeException("Unknown sound requested: " + i);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void avs(android.content.Context r8, int r9) {
        /*
        r7 = this;
        monitor-enter(r7);
        if (r8 != 0) goto L_0x000e;
    L_0x0003:
        r0 = "MediaActionSound";
        r1 = "play but context is null!";
        com.p010a.C0090a.m1e(r0, r1);	 Catch:{ all -> 0x002f }
        monitor-exit(r7);
        return;
    L_0x000e:
        if (r9 < 0) goto L_0x0015;
    L_0x0010:
        r0 = ajU;	 Catch:{ all -> 0x002f }
        r0 = r0.length;	 Catch:{ all -> 0x002f }
        if (r9 < r0) goto L_0x0032;
    L_0x0015:
        r0 = new java.lang.RuntimeException;	 Catch:{ all -> 0x002f }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x002f }
        r1.<init>();	 Catch:{ all -> 0x002f }
        r2 = "Unknown sound requested: ";
        r1 = r1.append(r2);	 Catch:{ all -> 0x002f }
        r1 = r1.append(r9);	 Catch:{ all -> 0x002f }
        r1 = r1.toString();	 Catch:{ all -> 0x002f }
        r0.<init>(r1);	 Catch:{ all -> 0x002f }
        throw r0;	 Catch:{ all -> 0x002f }
    L_0x002f:
        r0 = move-exception;
        monitor-exit(r7);
        throw r0;
    L_0x0032:
        r0 = r7.ajX;	 Catch:{ all -> 0x002f }
        r0 = r0[r9];	 Catch:{ all -> 0x002f }
        r1 = -1;
        if (r0 != r1) goto L_0x0077;
    L_0x0039:
        r0 = "MediaActionSound";
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x002f }
        r1.<init>();	 Catch:{ all -> 0x002f }
        r2 = "mSoundIds = ";
        r1 = r1.append(r2);	 Catch:{ all -> 0x002f }
        r2 = r7.ajX;	 Catch:{ all -> 0x002f }
        r1 = r1.append(r2);	 Catch:{ all -> 0x002f }
        r2 = "  mSoundIdToPlay = ";
        r1 = r1.append(r2);	 Catch:{ all -> 0x002f }
        r2 = r7.ajW;	 Catch:{ all -> 0x002f }
        r1 = r1.append(r2);	 Catch:{ all -> 0x002f }
        r1 = r1.toString();	 Catch:{ all -> 0x002f }
        com.p010a.C0090a.bvo(r0, r1);	 Catch:{ all -> 0x002f }
        r0 = r7.ajY;	 Catch:{ all -> 0x002f }
        r1 = ajU;	 Catch:{ all -> 0x002f }
        r1 = r1[r9];	 Catch:{ all -> 0x002f }
        r2 = 1;
        r0 = r0.load(r8, r1, r2);	 Catch:{ all -> 0x002f }
        r7.ajW = r0;	 Catch:{ all -> 0x002f }
        r0 = r7.ajX;	 Catch:{ all -> 0x002f }
        r1 = r7.ajW;	 Catch:{ all -> 0x002f }
        r0[r9] = r1;	 Catch:{ all -> 0x002f }
    L_0x0075:
        monitor-exit(r7);
        return;
    L_0x0077:
        r0 = r7.ajY;	 Catch:{ all -> 0x002f }
        r1 = r7.ajX;	 Catch:{ all -> 0x002f }
        r1 = r1[r9];	 Catch:{ all -> 0x002f }
        r2 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r3 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r4 = 0;
        r5 = 0;
        r6 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r0.play(r1, r2, r3, r4, r5, r6);	 Catch:{ all -> 0x002f }
        goto L_0x0075;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.x.avs(android.content.Context, int):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void avt(android.content.Context r8) {
        /*
        r7 = this;
        r2 = -1;
        monitor-enter(r7);
        if (r8 != 0) goto L_0x000f;
    L_0x0004:
        r0 = "MediaActionSound";
        r1 = "playWheelTone but context is null!";
        com.p010a.C0090a.m1e(r0, r1);	 Catch:{ all -> 0x0043 }
        monitor-exit(r7);
        return;
    L_0x000f:
        r0 = r7.ajX;	 Catch:{ all -> 0x0043 }
        r1 = 7;
        r0 = r0[r1];	 Catch:{ all -> 0x0043 }
        if (r0 != r2) goto L_0x0030;
    L_0x0016:
        r0 = r7.ajY;	 Catch:{ all -> 0x0043 }
        r1 = ajU;	 Catch:{ all -> 0x0043 }
        r2 = 7;
        r1 = r1[r2];	 Catch:{ all -> 0x0043 }
        r2 = 1;
        r0 = r0.load(r8, r1, r2);	 Catch:{ all -> 0x0043 }
        r7.ajW = r0;	 Catch:{ all -> 0x0043 }
        r0 = r7.ajX;	 Catch:{ all -> 0x0043 }
        r1 = r7.ajW;	 Catch:{ all -> 0x0043 }
        r2 = 7;
        r0[r2] = r1;	 Catch:{ all -> 0x0043 }
        r0 = -1;
        r7.ajW = r0;	 Catch:{ all -> 0x0043 }
    L_0x002e:
        monitor-exit(r7);
        return;
    L_0x0030:
        r0 = r7.ajY;	 Catch:{ all -> 0x0043 }
        r1 = r7.ajX;	 Catch:{ all -> 0x0043 }
        r2 = 7;
        r1 = r1[r2];	 Catch:{ all -> 0x0043 }
        r2 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r3 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r4 = 0;
        r5 = 0;
        r6 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r0.play(r1, r2, r3, r4, r5, r6);	 Catch:{ all -> 0x0043 }
        goto L_0x002e;
    L_0x0043:
        r0 = move-exception;
        monitor-exit(r7);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.x.avt(android.content.Context):void");
    }

    public void release() {
        if (this.ajY != null) {
            this.ajY.release();
            this.ajY = null;
        }
    }
}
