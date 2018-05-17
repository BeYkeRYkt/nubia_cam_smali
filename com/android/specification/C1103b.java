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

public class C1103b extends Fragment implements OnClickListener, af {
    private LinearLayout aCY = null;
    private Animation aCZ = null;
    private boolean aDa = false;
    private NubiaScrollView aDb = null;
    private Animation aDc = null;
    private ImageView aDd = null;
    private TextView aDe = null;
    private ImageButton aDf = null;

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.specification_star_track, viewGroup, false);
        aTi(inflate);
        return inflate;
    }

    private void aTi(View view) {
        this.aDd = (ImageView) view.findViewById(R.id.specification_title_bar_bg);
        this.aDf = (ImageButton) view.findViewById(R.id.specification_back_button);
        this.aCY = (LinearLayout) view.findViewById(R.id.specification_title_bar);
        this.aDe = (TextView) view.findViewById(R.id.specification_title);
        this.aCY.setOnClickListener(this);
        this.aDf.setOnClickListener(this);
        aTh(view);
    }

    private void aTh(View view) {
        this.aDb = (NubiaScrollView) view.findViewById(R.id.specification_scroll);
        this.aDb.rO(this);
        this.aDb.smoothScrollTo(0, 0);
        this.aDc = AnimationUtils.loadAnimation(getActivity(), R.anim.show_textbook_title);
        this.aCZ = AnimationUtils.loadAnimation(getActivity(), R.anim.hide_textbook_title);
    }

    private void aTg() {
        if (this.aDa) {
            this.aDa = false;
            this.aDf.setBackgroundResource(R.drawable.specification_back_normal);
            this.aDe.setVisibility(4);
            this.aDd.startAnimation(this.aCZ);
            this.aDd.setVisibility(8);
        }
    }

    private void aTj() {
        if (!this.aDa) {
            this.aDa = true;
            this.aDf.setBackgroundResource(R.drawable.specification_back_focus);
            this.aDe.setVisibility(0);
            this.aDd.startAnimation(this.aDc);
            this.aDd.setVisibility(0);
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
            aTj();
        } else if (i2 < i4 && i2 < 300) {
            aTg();
        }
    }
}
