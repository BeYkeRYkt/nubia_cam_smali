package com.android.common.p023b;

import android.widget.TextView;
import android.widget.Toast;
import com.android.camera.R;

final class C0368p implements Runnable {
    final /* synthetic */ C0358g JC;
    final /* synthetic */ int JD;

    C0368p(C0358g c0358g, int i) {
        this.JC = c0358g;
        this.JD = i;
    }

    public void run() {
        if (this.JD == 1) {
            if (this.JC.Je == null) {
                this.JC.Je = new Toast(this.JC.Jc);
                this.JC.Jd = new TextView(this.JC.Jc);
                this.JC.Jd.setTextSize(0, (float) this.JC.Jc.getResources().getDimensionPixelOffset(R.dimen.dimens_12));
                this.JC.Jd.setTextColor(this.JC.Jc.getResources().getColor(R.color.hint_text_color));
                this.JC.Jd.setBackgroundResource(R.drawable.ztemt_text_round_bg);
                this.JC.Jd.setText(R.string.multishoot_is_writing);
                this.JC.Je.setGravity(17, 0, this.JC.Jc.getResources().getDimensionPixelOffset(R.dimen.dimens_150));
            }
            this.JC.Je.setView(this.JC.Jd);
            this.JC.Je.setDuration(0);
            this.JC.Je.show();
        } else if (this.JC.Je != null) {
            this.JC.Je.cancel();
        }
    }
}
