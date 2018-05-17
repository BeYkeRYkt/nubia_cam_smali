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

public class C1104c extends Fragment implements OnClickListener, af {
    private LinearLayout aDg = null;
    private Animation aDh = null;
    private boolean aDi = false;
    private NubiaScrollView aDj = null;
    private Animation aDk = null;
    private ImageView aDl = null;
    private TextView aDm = null;
    private ImageButton aDn = null;

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.specification_slow_shutter, viewGroup, false);
        aTm(inflate);
        return inflate;
    }

    private void aTm(View view) {
        this.aDl = (ImageView) view.findViewById(R.id.specification_title_bar_bg);
        this.aDn = (ImageButton) view.findViewById(R.id.specification_back_button);
        this.aDg = (LinearLayout) view.findViewById(R.id.specification_title_bar);
        this.aDm = (TextView) view.findViewById(R.id.specification_title);
        this.aDg.setOnClickListener(this);
        this.aDn.setOnClickListener(this);
        aTl(view);
    }

    private void aTl(View view) {
        this.aDj = (NubiaScrollView) view.findViewById(R.id.specification_scroll);
        this.aDj.rO(this);
        this.aDj.smoothScrollTo(0, 0);
        this.aDk = AnimationUtils.loadAnimation(getActivity(), R.anim.show_textbook_title);
        this.aDh = AnimationUtils.loadAnimation(getActivity(), R.anim.hide_textbook_title);
    }

    private void aTk() {
        if (this.aDi) {
            this.aDi = false;
            this.aDn.setBackgroundResource(R.drawable.specification_back_normal);
            this.aDm.setVisibility(4);
            this.aDl.startAnimation(this.aDh);
            this.aDl.setVisibility(8);
        }
    }

    private void aTn() {
        if (!this.aDi) {
            this.aDi = true;
            this.aDn.setBackgroundResource(R.drawable.specification_back_focus);
            this.aDm.setVisibility(0);
            this.aDl.startAnimation(this.aDk);
            this.aDl.setVisibility(0);
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
            aTn();
        } else if (i2 < i4 && i2 < 300) {
            aTk();
        }
    }
}
