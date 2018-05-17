package com.android.trajectory;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.android.camera.R;
import com.android.common.ui.RotateImageView;
import com.p010a.C0090a;

final class C1139n implements OnItemClickListener {
    final /* synthetic */ C1127b bbR;

    C1139n(C1127b c1127b) {
        this.bbR = c1127b;
    }

    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        int i2 = 1;
        if (this.bbR.bbz.aWP()) {
            C0090a.m1e("TrajectoryFragment", "Trajectory is making, so ignore this Click");
            return;
        }
        boolean z;
        boolean[] bsn = this.bbR.bbg;
        if (this.bbR.bbg[i]) {
            z = false;
        } else {
            z = true;
        }
        bsn[i] = z;
        RotateImageView rotateImageView = (RotateImageView) view.findViewById(R.id.cover);
        RotateImageView rotateImageView2 = (RotateImageView) view.findViewById(R.id.icon_select);
        if (this.bbR.bbg[i]) {
            rotateImageView.setImageResource(R.drawable.thumb_select);
            rotateImageView2.setVisibility(0);
            this.bbR.bbs.setVisibility(0);
            this.bbR.brO(i);
            this.bbR.bbs.setImageBitmap(this.bbR.bbo);
            if (this.bbR.adA != null) {
                this.bbR.alA().TA();
            }
        } else {
            rotateImageView.setImageResource(R.drawable.thumb_unselect);
            rotateImageView2.setVisibility(8);
            for (int length = this.bbR.bbg.length - 1; length > -1; length--) {
                if (this.bbR.bbg[length]) {
                    this.bbR.brO(length);
                    this.bbR.bbs.setImageBitmap(this.bbR.bbo);
                    break;
                }
            }
            i2 = 0;
            if (i2 == 0) {
                this.bbR.bbs.setVisibility(8);
                if (this.bbR.adA != null) {
                    this.bbR.alA().TB();
                }
            }
        }
    }
}
