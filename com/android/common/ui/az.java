package com.android.common.ui;

import android.app.AlertDialog.Builder;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import com.p010a.C0090a;

final class az implements OnErrorListener {
    final /* synthetic */ MyVideoView xE;

    az(MyVideoView myVideoView) {
        this.xE = myVideoView;
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        C0090a.m0d(this.xE.TAG, "Error: " + i + "," + i2);
        this.xE.jJ = -1;
        this.xE.jZ = -1;
        if ((this.xE.jP == null || !this.xE.jP.onError(this.xE.jN, i, i2)) && this.xE.getWindowToken() != null) {
            int i3;
            this.xE.jH.getResources();
            if (i == 200) {
                i3 = 17039381;
            } else {
                i3 = 17039377;
            }
            new Builder(this.xE.jH).setMessage(i3).setPositiveButton(17039376, new aA(this)).setCancelable(false).show();
        }
        return true;
    }
}
