package com.android.gallery3d.ui;

import com.android.gallery3d.p038a.C0874d;
import com.android.gallery3d.p038a.C0882l;
import com.android.gallery3d.p038a.C0883m;

final class C0902B implements C0883m {
    final /* synthetic */ FilmStripView arB;

    C0902B(FilmStripView filmStripView) {
        this.arB = filmStripView;
    }

    public void aBz() {
        this.arB.aCj();
    }

    public void aBB(C0882l c0882l) {
        this.arB.aCt(c0882l);
    }

    public void aBC(int i, C0874d c0874d) {
        if (this.arB.aqr[2] == null) {
            this.arB.aCj();
        } else {
            this.arB.aCu(i);
        }
    }

    public void aBA(int i, C0874d c0874d) {
        this.arB.aBO(i, c0874d);
    }
}
