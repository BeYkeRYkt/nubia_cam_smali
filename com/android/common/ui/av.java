package com.android.common.ui;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnVideoSizeChangedListener;

final class av implements OnVideoSizeChangedListener {
    final /* synthetic */ MyVideoView xA;

    av(MyVideoView myVideoView) {
        this.xA = myVideoView;
    }

    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        this.xA.kc = mediaPlayer.getVideoWidth();
        this.xA.kb = mediaPlayer.getVideoHeight();
        if (this.xA.kc != 0 && this.xA.kb != 0) {
            this.xA.getHolder().setFixedSize(this.xA.kc, this.xA.kb);
            this.xA.requestLayout();
        }
    }
}
