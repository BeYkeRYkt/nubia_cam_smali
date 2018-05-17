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

public class C1105d extends Fragment implements OnClickListener, af {
    private LinearLayout aDo = null;
    private Animation aDp = null;
    private boolean aDq = false;
    private NubiaScrollView aDr = null;
    private Animation aDs = null;
    private ImageView aDt = null;
    private TextView aDu = null;
    private ImageButton aDv = null;

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.specification_zoomblur, viewGroup, false);
        aTq(inflate);
        return inflate;
    }

    private void aTq(View view) {
        this.aDt = (ImageView) view.findViewById(R.id.specification_title_bar_bg);
        this.aDv = (ImageButton) view.findViewById(R.id.specification_back_button);
        this.aDo = (LinearLayout) view.findViewById(R.id.specification_title_bar);
        this.aDu = (TextView) view.findViewById(R.id.specification_title);
        this.aDo.setOnClickListener(this);
        this.aDv.setOnClickListener(this);
        aTp(view);
    }

    private void aTp(View view) {
        this.aDr = (NubiaScrollView) view.findViewById(R.id.specification_scroll);
        this.aDr.rO(this);
        this.aDr.smoothScrollTo(0, 0);
        this.aDs = AnimationUtils.loadAnimation(getActivity(), R.anim.show_textbook_title);
        this.aDp = AnimationUtils.loadAnimation(getActivity(), R.anim.hide_textbook_title);
    }

    private void aTo() {
        if (this.aDq) {
            this.aDq = false;
            this.aDv.setBackgroundResource(R.drawable.specification_back_normal);
            this.aDu.setVisibility(4);
            this.aDt.startAnimation(this.aDp);
            this.aDt.setVisibility(8);
        }
    }

    private void aTr() {
        if (!this.aDq) {
            this.aDq = true;
            this.aDv.setBackgroundResource(R.drawable.specification_back_focus);
            this.aDu.setVisibility(0);
            this.aDt.startAnimation(this.aDs);
            this.aDt.setVisibility(0);
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
            aTr();
        } else if (i2 < i4 && i2 < 300) {
            aTo();
        }
    }
}
