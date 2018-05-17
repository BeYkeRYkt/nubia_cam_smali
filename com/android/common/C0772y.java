package com.android.common;

import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.android.common.custom.C0421M;

public class C0772y {
    private String TAG = "HdrHintManager";
    private C0329e ajZ = null;
    private RelativeLayout aka = null;
    private TextView akb = null;

    public C0772y(View view, C0329e c0329e) {
        avy(view);
        this.ajZ = c0329e;
    }

    private void avy(View view) {
        this.aka = (RelativeLayout) view.findViewById(R.id.hdr_hint_layout);
        this.akb = (TextView) view.findViewById(R.id.hdr_hint_view);
    }

    public void avx(boolean z) {
        if (this.aka != null) {
            if (C0421M.dC().dD().cS() && z) {
                String tI = this.ajZ.SY().tI();
                if ("on".equals(tI)) {
                    this.aka.setVisibility(0);
                    this.ajZ.Wo(false);
                } else if ("auto".equals(tI) && this.ajZ.Uw()) {
                    this.aka.setVisibility(0);
                } else {
                    this.aka.setVisibility(8);
                    this.ajZ.Wo(false);
                }
                return;
            }
            this.aka.setVisibility(8);
        }
    }
}
