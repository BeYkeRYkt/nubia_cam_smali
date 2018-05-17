package com.android.common.ui;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

final class ax implements OnCompletionListener {
    final /* synthetic */ MyVideoView xC;

    ax(MyVideoView myVideoView) {
        this.xC = myVideoView;
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        this.xC.jJ = 5;
        this.xC.jZ = 5;
        if (this.xC.jO != null) {
            this.xC.jO.onCompletion(this.xC.jN);
        }
    }
}
