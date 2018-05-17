package com.android.common.appService;

import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import android.os.CountDownTimer;
import com.android.camera.R;
import com.p010a.C0090a;

class C0318X extends CountDownTimer {
    private long Uj = 0;
    final /* synthetic */ C0316U Uk;

    public C0318X(C0316U c0316u, long j, long j2) {
        this.Uk = c0316u;
        super(j, j2);
        acI();
        acJ();
    }

    private void acI() {
        try {
            if (this.Uk.acq().getString("pref_camera_shutter_sound_key", this.Uk.aco().SN().getString(R.string.pref_camera_shutter_sound_default)).equals("on")) {
                this.Uk.Ud = new MediaPlayer();
                AssetFileDescriptor openRawResourceFd = this.Uk.aco().SN().getResources().openRawResourceFd(R.raw.camera_countdown_fast);
                this.Uk.Ud.setDataSource(openRawResourceFd.getFileDescriptor(), openRawResourceFd.getStartOffset(), openRawResourceFd.getLength());
                this.Uk.Ud.setAudioStreamType(1);
                this.Uk.Ud.setLooping(false);
                this.Uk.Ud.prepare();
            }
        } catch (Exception e) {
            if (this.Uk.Ud != null) {
                this.Uk.Ud.release();
                this.Uk.Ud = null;
            }
        }
    }

    private void acJ() {
        try {
            if (this.Uk.acq().getString("pref_camera_shutter_sound_key", this.Uk.aco().SN().getString(R.string.pref_camera_shutter_sound_default)).equals("on")) {
                this.Uk.Ue = new MediaPlayer();
                AssetFileDescriptor openRawResourceFd = this.Uk.aco().SN().getResources().openRawResourceFd(R.raw.camera_countdown_slow);
                this.Uk.Ue.setDataSource(openRawResourceFd.getFileDescriptor(), openRawResourceFd.getStartOffset(), openRawResourceFd.getLength());
                this.Uk.Ue.setAudioStreamType(1);
                this.Uk.Ue.setLooping(false);
                this.Uk.Ue.prepare();
            }
        } catch (Exception e) {
            if (this.Uk.Ue != null) {
                this.Uk.Ue.release();
                this.Uk.Ue = null;
            }
        }
    }

    public void onFinish() {
        this.Uk.aco().Tt();
        this.Uk.acn(false);
    }

    public void onTick(long j) {
        C0090a.bvo("1", "wq==remain: " + j);
        long j2 = ((j - 50) / 1000) + 1;
        if (this.Uk.Uc != null) {
            this.Uk.Uc.acH(j2);
        }
        if (j2 > 3) {
            if (this.Uj != j2) {
                try {
                    this.Uk.Ue.seekTo(0);
                    this.Uk.Ue.start();
                } catch (Exception e) {
                }
                this.Uj = j2;
            }
        } else if (j2 == 3) {
            try {
                if (!this.Uk.Ud.isPlaying()) {
                    this.Uk.Ud.seekTo(0);
                    this.Uk.Ud.start();
                }
            } catch (Exception e2) {
            }
        } else if (j2 != 1) {
        }
    }
}
