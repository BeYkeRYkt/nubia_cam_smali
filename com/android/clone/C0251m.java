package com.android.clone;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

final class C0251m implements OnCompletionListener {
    final /* synthetic */ C0241c aoQ;

    C0251m(C0241c c0241c) {
        this.aoQ = c0241c;
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        this.aoQ.amQ.start();
    }
}
