package com.android.dng;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SimpleAdapter;
import com.android.camera.R;
import com.android.common.ui.RotateImageView;
import com.android.common.ui.RotateLayout;
import java.util.List;

class C0790f extends SimpleAdapter {
    final /* synthetic */ C0789e aMH;

    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        RotateImageView rotateImageView = (RotateImageView) view2.findViewById(R.id.cover);
        RotateImageView rotateImageView2 = (RotateImageView) view2.findViewById(R.id.icon);
        RotateLayout rotateLayout = (RotateLayout) view2.findViewById(R.id.effect_text_layout);
        if (i == this.aMH.aMA.vc()) {
            rotateImageView.setVisibility(0);
        } else {
            rotateImageView.setVisibility(8);
        }
        if (this.aMH.aMz != -1) {
            rotateImageView.fc(this.aMH.aMz, this.aMH.aMG);
            rotateImageView2.fc(this.aMH.aMz, this.aMH.aMG);
            rotateLayout.fc(this.aMH.aMz, this.aMH.aMG);
        }
        return view2;
    }

    public C0790f(C0789e c0789e, Context context, List list, int i, String[] strArr, int[] iArr) {
        this.aMH = c0789e;
        super(context, list, i, strArr, iArr);
    }
}
