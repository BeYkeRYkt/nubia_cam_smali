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

public class C1107f extends Fragment implements OnClickListener, af {
    private LinearLayout aDU = null;
    private Animation aDV = null;
    private boolean aDW = false;
    private NubiaScrollView aDX = null;
    private Animation aDY = null;
    private ImageView aDZ = null;
    private TextView aEa = null;
    private ImageButton aEb = null;

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.specification_electronic, viewGroup, false);
        aTG(inflate);
        return inflate;
    }

    private void aTG(View view) {
        this.aDZ = (ImageView) view.findViewById(R.id.specification_title_bar_bg);
        this.aEb = (ImageButton) view.findViewById(R.id.specification_back_button);
        this.aDU = (LinearLayout) view.findViewById(R.id.specification_title_bar);
        this.aEa = (TextView) view.findViewById(R.id.specification_title);
        this.aDU.setOnClickListener(this);
        this.aEb.setOnClickListener(this);
        aTF(view);
    }

    private void aTF(View view) {
        this.aDX = (NubiaScrollView) view.findViewById(R.id.specification_scroll);
        this.aDX.rO(this);
        this.aDX.smoothScrollTo(0, 0);
        this.aDY = AnimationUtils.loadAnimation(getActivity(), R.anim.show_textbook_title);
        this.aDV = AnimationUtils.loadAnimation(getActivity(), R.anim.hide_textbook_title);
    }

    private void aTE() {
        if (this.aDW) {
            this.aDW = false;
            this.aEb.setBackgroundResource(R.drawable.specification_back_normal);
            this.aEa.setVisibility(4);
            this.aDZ.startAnimation(this.aDV);
            this.aDZ.setVisibility(8);
        }
    }

    private void aTH() {
        if (!this.aDW) {
            this.aDW = true;
            this.aEb.setBackgroundResource(R.drawable.specification_back_focus);
            this.aEa.setVisibility(0);
            this.aDZ.startAnimation(this.aDY);
            this.aDZ.setVisibility(0);
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
            aTH();
        } else if (i2 < i4 && i2 < 300) {
            aTE();
        }
    }
}
