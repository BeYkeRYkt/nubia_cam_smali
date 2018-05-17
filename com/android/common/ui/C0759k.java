package com.android.common.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SimpleAdapter;
import com.android.camera.R;
import java.util.List;

class C0759k extends SimpleAdapter {
    final /* synthetic */ ZtemtSlidingDrawer kX;

    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        RotateImageView rotateImageView = (RotateImageView) view2.findViewById(R.id.cover);
        RotateImageView rotateImageView2 = (RotateImageView) view2.findViewById(R.id.icon);
        RotateLayout rotateLayout = (RotateLayout) view2.findViewById(R.id.effect_text_layout);
        if (i == this.kX.kT) {
            rotateImageView.setVisibility(0);
        } else {
            rotateImageView.setVisibility(8);
        }
        if (this.kX.kR != -1) {
            rotateImageView.fc(this.kX.kR, this.kX.kV);
            rotateImageView2.fc(this.kX.kR, this.kX.kV);
            rotateLayout.fc(this.kX.kR, this.kX.kV);
        }
        return view2;
    }

    public C0759k(ZtemtSlidingDrawer ztemtSlidingDrawer, Context context, List list, int i, String[] strArr, int[] iArr) {
        this.kX = ztemtSlidingDrawer;
        super(context, list, i, strArr, iArr);
    }
}
