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

public class C1109h extends Fragment implements OnClickListener, af {
    private ImageButton aEA = null;
    private LinearLayout aEt = null;
    private Animation aEu = null;
    private boolean aEv = false;
    private NubiaScrollView aEw = null;
    private Animation aEx = null;
    private ImageView aEy = null;
    private TextView aEz = null;

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.specification_light_draw, viewGroup, false);
        aTO(inflate);
        return inflate;
    }

    private void aTO(View view) {
        this.aEy = (ImageView) view.findViewById(R.id.specification_title_bar_bg);
        this.aEA = (ImageButton) view.findViewById(R.id.specification_back_button);
        this.aEt = (LinearLayout) view.findViewById(R.id.specification_title_bar);
        this.aEz = (TextView) view.findViewById(R.id.specification_title);
        this.aEt.setOnClickListener(this);
        this.aEA.setOnClickListener(this);
        aTN(view);
    }

    private void aTN(View view) {
        this.aEw = (NubiaScrollView) view.findViewById(R.id.specification_scroll);
        this.aEw.rO(this);
        this.aEw.smoothScrollTo(0, 0);
        this.aEx = AnimationUtils.loadAnimation(getActivity(), R.anim.show_textbook_title);
        this.aEu = AnimationUtils.loadAnimation(getActivity(), R.anim.hide_textbook_title);
    }

    private void aTM() {
        if (this.aEv) {
            this.aEv = false;
            this.aEA.setBackgroundResource(R.drawable.specification_back_normal);
            this.aEz.setVisibility(4);
            this.aEy.startAnimation(this.aEu);
            this.aEy.setVisibility(8);
        }
    }

    private void aTP() {
        if (!this.aEv) {
            this.aEv = true;
            this.aEA.setBackgroundResource(R.drawable.specification_back_focus);
            this.aEz.setVisibility(0);
            this.aEy.startAnimation(this.aEx);
            this.aEy.setVisibility(0);
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
            aTP();
        } else if (i2 < i4 && i2 < 300) {
            aTM();
        }
    }
}
