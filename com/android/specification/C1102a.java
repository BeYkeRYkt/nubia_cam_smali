package com.android.specification;

import android.app.Fragment;
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
import com.android.common.ui.NubiaScrollView;
import com.android.common.ui.af;

public class C1102a extends Fragment implements OnClickListener, af {
    private LinearLayout aCQ = null;
    private Animation aCR = null;
    private boolean aCS = false;
    private NubiaScrollView aCT = null;
    private Animation aCU = null;
    private ImageView aCV = null;
    private TextView aCW = null;
    private ImageButton aCX = null;

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.specification_dng, viewGroup, false);
        aTe(inflate);
        return inflate;
    }

    private void aTe(View view) {
        this.aCV = (ImageView) view.findViewById(R.id.specification_title_bar_bg);
        this.aCX = (ImageButton) view.findViewById(R.id.specification_back_button);
        this.aCQ = (LinearLayout) view.findViewById(R.id.specification_title_bar);
        this.aCW = (TextView) view.findViewById(R.id.specification_title);
        this.aCQ.setOnClickListener(this);
        this.aCX.setOnClickListener(this);
        aTd(view);
    }

    private void aTd(View view) {
        this.aCT = (NubiaScrollView) view.findViewById(R.id.specification_scroll);
        this.aCT.rO(this);
        this.aCT.smoothScrollTo(0, 0);
        this.aCU = AnimationUtils.loadAnimation(getActivity(), R.anim.show_textbook_title);
        this.aCR = AnimationUtils.loadAnimation(getActivity(), R.anim.hide_textbook_title);
    }

    private void aTc() {
        if (this.aCS) {
            this.aCS = false;
            this.aCX.setBackgroundResource(R.drawable.specification_back_normal);
            this.aCW.setVisibility(4);
            this.aCV.startAnimation(this.aCR);
            this.aCV.setVisibility(8);
        }
    }

    private void aTf() {
        if (!this.aCS) {
            this.aCS = true;
            this.aCX.setBackgroundResource(R.drawable.specification_back_focus);
            this.aCW.setVisibility(0);
            this.aCV.startAnimation(this.aCU);
            this.aCV.setVisibility(0);
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
            aTf();
        } else if (i2 < i4 && i2 < 300) {
            aTc();
        }
    }
}
