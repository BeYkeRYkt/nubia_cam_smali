package com.android.videomaker;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import java.io.IOException;

final class C1218x implements OnCompletionListener {
    final /* synthetic */ C1193f aAT;
    final /* synthetic */ int aAU;

    C1218x(C1193f c1193f, int i) {
        this.aAT = c1193f;
        this.aAU = i;
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        try {
            this.aAT.aOx(this.aAU);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
