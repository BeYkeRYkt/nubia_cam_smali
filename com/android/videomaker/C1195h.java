package com.android.videomaker;

import android.net.Uri;
import android.widget.Toast;
import com.android.camera.R;
import com.android.videomaker.service.C1194c;
import com.p010a.C0090a;

class C1195h extends C1194c {
    final /* synthetic */ C1193f azX;

    private C1195h(C1193f c1193f) {
        this.azX = c1193f;
    }

    public void aMa(Exception exception) {
        C1193f.aOn("onVideoEditorCreated");
        if (exception != null) {
            Toast.makeText(this.azX.azb, R.string.editor_create_error, 1).show();
        } else {
            this.azX.aNK(this.azX.azH);
        }
    }

    public void aMf(Exception exception) {
        C1193f.aOn("onVideoEditorDeleted");
        if (exception != null) {
            Toast.makeText(this.azX.azb, R.string.editor_delete_error, 1).show();
        }
    }

    public void aMc(String str, Exception exception) {
        C1193f.aOn("onAudioTrackAdded");
        if (exception != null) {
            C0090a.m0d("VideoMakerPage", "onAudioTrackAdded exception: " + exception.toString());
            Toast.makeText(this.azX.azb, R.string.editor_not_support_audio_track, 1).show();
        } else if (this.azX.azS != null) {
            this.azX.azy = this.azX.azS;
            this.azX.azx = this.azX.azw;
            this.azX.azL = true;
            this.azX.azK.setText(this.azX.aNY(this.azX.azy));
        }
    }

    public void aMg(String str, int i) {
        C1193f.aOn("onVideoEditorExportProgress, progress = " + i);
        if (str != null && str.equals(this.azX.azB)) {
            this.azX.azr = true;
            this.azX.azl.sendMessage(this.azX.azl.obtainMessage(262, this.azX.azM + i, 0, null));
        }
    }

    public void aMe(String str, Uri uri, Exception exception, boolean z) {
        C1193f.aOn("onVideoEditorExportComplete, cancelled = " + z + ", exception = " + exception);
        if (str != null) {
            this.azX.azr = false;
            if (str.equals(this.azX.azB)) {
                this.azX.aOQ(this.azX.azB, uri);
                this.azX.aOs();
                this.azX.azB = null;
                this.azX.aOm();
                if (exception != null) {
                    Toast.makeText(this.azX.azb, R.string.editor_export_error, 1).show();
                }
                return;
            }
            C1193f.aOn("return 3");
        }
    }

    public void aMb() {
        this.azX.azl.sendMessage(this.azX.azl.obtainMessage(263));
    }

    public void aMd(String str) {
        C1193f.aOn("onVideoEditorExportCanceled");
        C1193f.aOn("filename = " + str + ", mPendingExportFilename = " + this.azX.azB);
        this.azX.azr = false;
        if (!str.equals(this.azX.azB)) {
        }
    }
}
