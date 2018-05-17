package com.android.common.ui;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;

final class aw implements OnPreparedListener {
    final /* synthetic */ MyVideoView xB;

    aw(MyVideoView myVideoView) {
        this.xB = myVideoView;
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        this.xB.jJ = 2;
        if (this.xB.jR != null) {
            this.xB.jR.onPrepared(this.xB.jN);
        }
        this.xB.kc = mediaPlayer.getVideoWidth();
        this.xB.kb = mediaPlayer.getVideoHeight();
        int hV = this.xB.jU;
        if (hV != 0) {
            this.xB.hK(hV);
        }
        if (this.xB.kc != 0 && this.xB.kb != 0) {
            this.xB.getHolder().setFixedSize(this.xB.kc, this.xB.kb);
            if (this.xB.jY == this.xB.kc && this.xB.jW == this.xB.kb && this.xB.jZ == 3) {
                this.xB.start();
            }
        } else if (this.xB.jZ == 3) {
            this.xB.start();
        }
    }
}
