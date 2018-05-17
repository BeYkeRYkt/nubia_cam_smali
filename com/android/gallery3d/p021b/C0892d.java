package com.android.gallery3d.p021b;

import com.android.camera.R;
import com.android.gallery3d.ui.C0891a;
import com.p010a.C0090a;

class C0892d implements C0891a {
    final /* synthetic */ C0889a arZ;

    private C0892d(C0889a c0889a) {
        this.arZ = c0889a;
    }

    public void aDg(int i) {
        this.arZ.aFp(i);
    }

    public void aDd(int i) {
        this.arZ.aFp(i);
    }

    public void aDh() {
        this.arZ.arH.setBackgroundColor(this.arZ.getResources().getColor(R.color.translucent_red));
        this.arZ.arI = true;
    }

    public void aDf(int i, boolean z) {
        C0090a.bvo("GalleryFragment", "onDataFullScreenChange fullScreen " + z);
        this.arZ.arL = z;
        if (z) {
            this.arZ.arT.setVisibility(8);
            this.arZ.arH.setVisibility(8);
            return;
        }
        this.arZ.arH.setVisibility(0);
        this.arZ.aFh();
    }

    public void aDi() {
        C0090a.m0d("GalleryFragment", "onReload");
        this.arZ.aFq(0);
    }

    public void aDb(int i) {
    }

    public void aDc(int i) {
    }

    public void aDe(int i, boolean z) {
        C0090a.m0d("GalleryFragment", "onDataFocusChanged " + i + " " + z);
        if (z) {
            this.arZ.aFq(i);
        }
    }

    public void aDj(int i) {
        C0090a.m0d("GalleryFragment", "onToggleSystemDecorsVisibility " + i);
        if (this.arZ.arS.getVisibility() == 0) {
            this.arZ.aFh();
        } else {
            this.arZ.aFr();
        }
    }

    public void aDk(boolean z) {
        C0090a.m0d("GalleryFragment", "setSystemDecorsVisibility " + z);
    }
}
