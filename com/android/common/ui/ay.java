package com.android.common.ui;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnInfoListener;

final class ay implements OnInfoListener {
    final /* synthetic */ MyVideoView xD;

    ay(MyVideoView myVideoView) {
        this.xD = myVideoView;
    }

    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        if (this.xD.jQ != null) {
            this.xD.jQ.onInfo(mediaPlayer, i, i2);
        }
        return true;
    }
}
