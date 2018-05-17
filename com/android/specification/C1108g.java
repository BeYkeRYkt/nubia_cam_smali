package com.android.specification;

import android.app.Fragment;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.image3d.C0571k;
import com.android.common.image3d.C0580j;
import com.android.common.image3d.C0582m;
import com.android.common.image3d.Image3dView;
import com.android.common.ui.NubiaScrollView;
import com.android.common.ui.af;

public class C1108g extends Fragment implements OnClickListener, af, C0571k {
    private LinearLayout aEc = null;
    private int[] aEd = new int[]{R.drawable.image3d_1, R.drawable.image3d_2, R.drawable.image3d_3, R.drawable.image3d_4, R.drawable.image3d_5, R.drawable.image3d_6, R.drawable.image3d_7, R.drawable.image3d_8, R.drawable.image3d_9, R.drawable.image3d_10, R.drawable.image3d_11, R.drawable.image3d_12, R.drawable.image3d_13, R.drawable.image3d_14, R.drawable.image3d_15, R.drawable.image3d_16, R.drawable.image3d_17, R.drawable.image3d_18, R.drawable.image3d_19, R.drawable.image3d_20, R.drawable.image3d_21, R.drawable.image3d_22, R.drawable.image3d_23, R.drawable.image3d_24, R.drawable.image3d_25, R.drawable.image3d_26, R.drawable.image3d_27, R.drawable.image3d_28, R.drawable.image3d_29, R.drawable.image3d_30, R.drawable.image3d_31, R.drawable.image3d_32, R.drawable.image3d_33, R.drawable.image3d_34, R.drawable.image3d_35, R.drawable.image3d_36, R.drawable.image3d_37, R.drawable.image3d_38, R.drawable.image3d_39, R.drawable.image3d_40, R.drawable.image3d_41, R.drawable.image3d_42, R.drawable.image3d_43, R.drawable.image3d_44, R.drawable.image3d_45, R.drawable.image3d_46, R.drawable.image3d_47, R.drawable.image3d_48, R.drawable.image3d_49, R.drawable.image3d_50, R.drawable.image3d_51, R.drawable.image3d_52, R.drawable.image3d_53, R.drawable.image3d_54, R.drawable.image3d_55, R.drawable.image3d_56, R.drawable.image3d_57, R.drawable.image3d_58, R.drawable.image3d_59, R.drawable.image3d_60, R.drawable.image3d_61, R.drawable.image3d_62, R.drawable.image3d_63, R.drawable.image3d_64, R.drawable.image3d_65, R.drawable.image3d_66, R.drawable.image3d_67, R.drawable.image3d_68, R.drawable.image3d_69, R.drawable.image3d_70, R.drawable.image3d_71, R.drawable.image3d_72, R.drawable.image3d_73, R.drawable.image3d_74, R.drawable.image3d_75, R.drawable.image3d_76, R.drawable.image3d_77, R.drawable.image3d_78, R.drawable.image3d_79, R.drawable.image3d_80};
    private int aEe = 80;
    private C0580j aEf = null;
    private Animation aEg = null;
    private Image3dView aEh = null;
    private Image3dView aEi = null;
    private boolean aEj = false;
    private int aEk = 0;
    private int aEl = 0;
    private Bitmap aEm = null;
    private C0582m aEn = null;
    private NubiaScrollView aEo = null;
    private Animation aEp = null;
    private ImageView aEq = null;
    private TextView aEr = null;
    private ImageButton aEs = null;

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.specification_triaxial, viewGroup, false);
        aTK(inflate);
        return inflate;
    }

    private void aTK(View view) {
        this.aEq = (ImageView) view.findViewById(R.id.specification_title_bar_bg);
        this.aEs = (ImageButton) view.findViewById(R.id.specification_back_button);
        this.aEc = (LinearLayout) view.findViewById(R.id.specification_title_bar);
        this.aEr = (TextView) view.findViewById(R.id.specification_title);
        this.aEh = (Image3dView) view.findViewById(R.id.specification_image3dView1);
        this.aEi = (Image3dView) view.findViewById(R.id.specification_image3dView2);
        this.aEm = BitmapFactory.decodeResource(getResources(), R.drawable.specification_triaxial_panorama);
        this.aEl = this.aEh.getWidth();
        this.aEk = (this.aEm.getWidth() - 984) / this.aEe;
        this.aEf = new C0580j(getActivity());
        this.aEf.Dr(this);
        this.aEf.Du(0.1f);
        this.aEn = new C0582m(this.aEe, 1, 1.5f);
        this.aEn.DE(this.aEe / 2);
        this.aEc.setOnClickListener(this);
        this.aEs.setOnClickListener(this);
        aTJ(view);
    }

    private void aTJ(View view) {
        this.aEo = (NubiaScrollView) view.findViewById(R.id.specification_scroll);
        this.aEo.rO(this);
        this.aEo.smoothScrollTo(0, 0);
        this.aEp = AnimationUtils.loadAnimation(getActivity(), R.anim.show_textbook_title);
        this.aEg = AnimationUtils.loadAnimation(getActivity(), R.anim.hide_textbook_title);
    }

    private void aTI() {
        if (this.aEj) {
            this.aEj = false;
            this.aEs.setBackgroundResource(R.drawable.specification_back_normal);
            this.aEr.setVisibility(4);
            this.aEq.startAnimation(this.aEg);
            this.aEq.setVisibility(8);
        }
    }

    private void aTL() {
        if (!this.aEj) {
            this.aEj = true;
            this.aEs.setBackgroundResource(R.drawable.specification_back_focus);
            this.aEr.setVisibility(0);
            this.aEq.startAnimation(this.aEp);
            this.aEq.setVisibility(0);
        }
    }

    public void onPause() {
        super.onPause();
        if (this.aEf != null) {
            this.aEf.Dt();
        }
    }

    public void onResume() {
        super.onResume();
        if (this.aEf != null) {
            this.aEf.Ds();
        }
        if (this.aEn != null) {
            this.aEn.DE(this.aEe / 2);
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.specification_title_bar:
            case R.id.specification_back_button:
                getActivity().finish();
                return;
            default:
                return;
        }
    }

    public void rP(int i, int i2, int i3, int i4) {
        if (i2 > i4 && i2 > 300) {
            aTL();
        } else if (i2 < i4 && i2 < 300) {
            aTI();
        }
    }

    public void CT(float f, float f2, float f3, float f4, float f5, float f6) {
        int DF = this.aEn.DF(f2, f4);
        if (DF != -1) {
            this.aEh.Da(BitmapFactory.decodeResource(getResources(), this.aEd[DF]));
            this.aEi.Da(Bitmap.createBitmap(this.aEm, DF * this.aEk, 0, 984, this.aEm.getHeight()));
        }
    }
}
