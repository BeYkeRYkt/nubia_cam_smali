package com.android.common.appService;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnDrawListener;
import com.p010a.C0090a;

final class al implements OnDrawListener {
    final /* synthetic */ C0341p UU;

    al(C0341p c0341p) {
        this.UU = c0341p;
    }

    public void onDraw() {
        ViewTreeObserver viewTreeObserver = this.UU.QY.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnDrawListener(this);
        }
        if (this.UU.QY.getVisibility() == 8) {
            C0090a.bvo("EffectPageManager", "Effect page hide");
            this.UU.Rc.release();
            this.UU.Rc = null;
        }
    }
}
