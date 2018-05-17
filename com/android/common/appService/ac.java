package com.android.common.appService;

import com.android.camera.R;

final class ac implements Runnable {
    final /* synthetic */ C0329e UH;
    final /* synthetic */ String UI;

    ac(C0329e c0329e, String str) {
        this.UH = c0329e;
        this.UI = str;
    }

    public void run() {
        this.UH.WX(this.UI, 1, 17, 0, this.UH.OS.getResources().getDimensionPixelSize(R.dimen.dimens_150));
    }
}
