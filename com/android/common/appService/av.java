package com.android.common.appService;

import android.view.View;
import android.view.View.OnClickListener;
import com.android.camera.R;

final class av implements OnClickListener {
    final /* synthetic */ C0303E Ve;

    av(C0303E c0303e) {
        this.Ve = c0303e;
    }

    public void onClick(View view) {
        if (this.Ve.Ta != null) {
            switch (view.getId()) {
                case R.id.zoom_add:
                    this.Ve.Ta.acP();
                    break;
                case R.id.zoom_cut:
                    this.Ve.Ta.acQ();
                    break;
            }
        }
    }
}
