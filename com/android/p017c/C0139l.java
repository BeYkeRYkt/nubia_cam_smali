package com.android.p017c;

import android.view.View;
import android.view.View.OnClickListener;
import com.android.camera.R;

final class C0139l implements OnClickListener {
    final /* synthetic */ C0131d aWX;

    C0139l(C0131d c0131d) {
        this.aWX = c0131d;
    }

    public void onClick(View view) {
        if (!this.aWX.adC) {
            if (this.aWX.aWb) {
                this.aWX.aWo.setImageResource(R.drawable.manual_focus_capture_off);
                this.aWX.aWb = false;
                this.aWX.adA.WX(this.aWX.getString(R.string.manual_facus_capture_off), 0, 17, 0, this.aWX.getResources().getDimensionPixelSize(R.dimen.dimens_150));
            } else {
                this.aWX.aWo.setImageResource(R.drawable.manual_focus_capture_on);
                this.aWX.aWb = true;
                this.aWX.adA.WX(this.aWX.getString(R.string.manual_facus_capture_on), 0, 17, 0, this.aWX.getResources().getDimensionPixelSize(R.dimen.dimens_150));
            }
        }
    }
}
