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

public class C1110i extends Fragment implements OnClickListener, af {
    private LinearLayout aEB = null;
    private Animation aEC = null;
    private boolean aED = false;
    private NubiaScrollView aEE = null;
    private Animation aEF = null;
    private ImageView aEG = null;
    private TextView aEH = null;
    private ImageButton aEI = null;

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.specification_clone, viewGroup, false);
        aTS(inflate);
        return inflate;
    }

    private void aTS(View view) {
        this.aEG = (ImageView) view.findViewById(R.id.specification_title_bar_bg);
        this.aEI = (ImageButton) view.findViewById(R.id.specification_back_button);
        this.aEB = (LinearLayout) view.findViewById(R.id.specification_title_bar);
        this.aEH = (TextView) view.findViewById(R.id.specification_title);
        this.aEB.setOnClickListener(this);
        this.aEI.setOnClickListener(this);
        aTR(view);
    }

    private void aTR(View view) {
        this.aEE = (NubiaScrollView) view.findViewById(R.id.specification_scroll);
        this.aEE.rO(this);
        this.aEE.smoothScrollTo(0, 0);
        this.aEF = AnimationUtils.loadAnimation(getActivity(), R.anim.show_textbook_title);
        this.aEC = AnimationUtils.loadAnimation(getActivity(), R.anim.hide_textbook_title);
    }

    private void aTQ() {
        if (this.aED) {
            this.aED = false;
            this.aEI.setBackgroundResource(R.drawable.specification_back_normal);
            this.aEH.setVisibility(4);
            this.aEG.startAnimation(this.aEC);
            this.aEG.setVisibility(8);
        }
    }

    private void aTT() {
        if (!this.aED) {
            this.aED = true;
            this.aEI.setBackgroundResource(R.drawable.specification_back_focus);
            this.aEH.setVisibility(0);
            this.aEG.startAnimation(this.aEF);
            this.aEG.setVisibility(0);
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
            aTT();
        } else if (i2 < i4 && i2 < 300) {
            aTQ();
        }
    }
}
