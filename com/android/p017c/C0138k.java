package com.android.p017c;

import android.view.View;
import android.view.View.OnClickListener;
import com.android.camera.R;

final class C0138k implements OnClickListener {
    final /* synthetic */ C0131d aWW;

    C0138k(C0131d c0131d) {
        this.aWW = c0131d;
    }

    public void onClick(View view) {
        if (!this.aWW.adC) {
            if (this.aWW.aVZ) {
                this.aWW.aWp.setImageResource(R.drawable.magnifier_off);
                this.aWW.adA.UR().m32i(this.aWW.aWf);
                this.aWW.aVZ = false;
            } else {
                this.aWW.aWp.setImageResource(R.drawable.magnifier_on);
                this.aWW.adA.UR().m26a(this.aWW.aWf);
                this.aWW.aVZ = true;
            }
        }
    }
}
