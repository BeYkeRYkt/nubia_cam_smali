package com.android.trajectory;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SimpleAdapter;
import com.android.camera.R;
import com.android.common.ui.RotateImageView;
import com.android.common.ui.RotateLayout;
import java.util.List;

final class C1138m extends SimpleAdapter {
    final /* synthetic */ C1127b bbQ;

    C1138m(C1127b c1127b, Context context, List list, int i, String[] strArr, int[] iArr) {
        this.bbQ = c1127b;
        super(context, list, i, strArr, iArr);
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        RotateImageView rotateImageView = (RotateImageView) view2.findViewById(R.id.icon);
        RotateLayout rotateLayout = (RotateLayout) view2.findViewById(R.id.cover_rotatelayout);
        RotateImageView rotateImageView2 = (RotateImageView) view2.findViewById(R.id.icon_select);
        if (this.bbQ.bbe != -1) {
            rotateLayout.fc(this.bbQ.bbe, this.bbQ.bbG);
            rotateImageView.fc(this.bbQ.bbe, this.bbQ.bbG);
            rotateImageView2.fc(this.bbQ.bbe, this.bbQ.bbG);
        }
        return view2;
    }
}
