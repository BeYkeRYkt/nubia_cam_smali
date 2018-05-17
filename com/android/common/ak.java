package com.android.common;

import android.media.SoundPool;
import android.media.SoundPool.OnLoadCompleteListener;
import com.p010a.C0090a;

final class ak implements OnLoadCompleteListener {
    final /* synthetic */ C0771x alc;

    ak(C0771x c0771x) {
        this.alc = c0771x;
    }

    public void onLoadComplete(SoundPool soundPool, int i, int i2) {
        if (i2 != 0) {
            C0090a.m1e("MediaActionSound", "Unable to load sound for playback (status: " + i2 + ")");
        } else if (this.alc.ajW == i) {
            soundPool.play(i, 1.0f, 1.0f, 0, 0, 1.0f);
            this.alc.ajW = -1;
        }
    }
}
