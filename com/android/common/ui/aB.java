package com.android.common.ui;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;

final class aB implements OnBufferingUpdateListener {
    final /* synthetic */ MyVideoView xG;

    aB(MyVideoView myVideoView) {
        this.xG = myVideoView;
    }

    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.xG.jI = i;
    }
}
