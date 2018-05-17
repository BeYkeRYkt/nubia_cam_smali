package com.android.gallery3d.p021b;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.android.camera.R;
import com.p010a.C0090a;

class C0893e extends Handler {
    final /* synthetic */ C0889a asa;

    private C0893e(C0889a c0889a) {
        this.asa = c0889a;
    }

    public void handleMessage(Message message) {
        if (this.asa.isVisible()) {
            int aFH = this.asa.alN();
            switch (message.what) {
                case 0:
                    C0090a.m0d("GalleryFragment", "SHOW_ACTIONBAR");
                    if (this.asa.arL) {
                        this.asa.arS.setVisibility(0);
                        this.asa.arS.startAnimation(AnimationUtils.loadAnimation(this.asa.getActivity(), R.anim.slide_up_in));
                        View findViewById = this.asa.arS.findViewById(R.id.topbar_delete_button);
                        if (aFH != 90 && aFH != 270) {
                            findViewById.setVisibility(8);
                            this.asa.arD.setVisibility(0);
                            this.asa.arD.startAnimation(AnimationUtils.loadAnimation(this.asa.getActivity(), R.anim.slide_down_in));
                            break;
                        }
                        findViewById.setVisibility(0);
                        this.asa.arD.setVisibility(8);
                        break;
                    }
                    C0090a.m1e("GalleryFragment", "mFilmStripView inFilmStrip ignore SHOW_ACTIONBAR msg");
                    return;
                case 1:
                    C0090a.m0d("GalleryFragment", "HIDE_ACTIONBAR");
                    if (this.asa.arS.getVisibility() == 0) {
                        this.asa.arS.startAnimation(AnimationUtils.loadAnimation(this.asa.getActivity(), R.anim.slide_up_out));
                        this.asa.arS.setVisibility(8);
                    }
                    if (this.asa.arD.getVisibility() == 0) {
                        this.asa.arD.startAnimation(AnimationUtils.loadAnimation(this.asa.getActivity(), R.anim.slide_down_out));
                        this.asa.arD.setVisibility(8);
                        break;
                    }
                    break;
                case 2:
                    this.asa.aFn();
                    break;
            }
            return;
        }
        C0090a.bvj("GalleryFragment", "isVisible == false ignore msg " + message.what);
    }
}
