package com.android.videomaker;

import android.media.AudioManager.OnAudioFocusChangeListener;
import com.fotonation.utils.GtStatus;

final class C1217w implements OnAudioFocusChangeListener {
    final /* synthetic */ C1193f aAS;

    C1217w(C1193f c1193f) {
        this.aAS = c1193f;
    }

    public void onAudioFocusChange(int i) {
        switch (i) {
            case GtStatus.CANCELLED /*-2*/:
                this.aAS.aON();
                return;
            case GtStatus.FAIL /*-1*/:
                this.aAS.aON();
                return;
            default:
                return;
        }
    }
}
