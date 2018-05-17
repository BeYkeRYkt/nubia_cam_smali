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

public class C1106e extends Fragment implements OnClickListener, af {
    private ImageButton aDA = null;
    private View aDB = null;
    private Animation aDC = null;
    private boolean aDD = false;
    private ImageButton aDE = null;
    private View aDF = null;
    private ImageButton aDG = null;
    private View aDH = null;
    private NubiaScrollView aDI = null;
    private Animation aDJ = null;
    private ImageButton aDK = null;
    private View aDL = null;
    private ImageView aDM = null;
    private ImageButton aDN = null;
    private TextView aDO = null;
    private ImageButton aDP = null;
    private View aDQ = null;
    private ImageButton aDR = null;
    private View aDS = null;
    private ImageButton aDT = null;
    private LinearLayout aDz = null;

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.specification_pro, viewGroup, false);
        aTC(inflate);
        return inflate;
    }

    private void aTC(View view) {
        this.aDM = (ImageView) view.findViewById(R.id.specification_title_bar_bg);
        this.aDT = (ImageButton) view.findViewById(R.id.specification_back_button);
        this.aDz = (LinearLayout) view.findViewById(R.id.specification_title_bar);
        this.aDO = (TextView) view.findViewById(R.id.specification_title);
        this.aDz.setOnClickListener(this);
        this.aDT.setOnClickListener(this);
        aTA(view);
        aTz(view);
        aTB(view);
    }

    private void aTB(View view) {
        this.aDB = view.findViewById(R.id.pro_focus_layout);
        this.aDH = view.findViewById(R.id.pro_light_layout);
        this.aDS = view.findViewById(R.id.pro_wb_layout);
        this.aDL = view.findViewById(R.id.pro_shutter_layout);
        this.aDF = view.findViewById(R.id.pro_iso_layout);
        this.aDQ = view.findViewById(R.id.pro_tripod_layout);
    }

    private void aTz(View view) {
        this.aDN = (ImageButton) view.findViewById(R.id.tob_button);
        this.aDA = (ImageButton) view.findViewById(R.id.focus_button);
        this.aDG = (ImageButton) view.findViewById(R.id.light_button);
        this.aDR = (ImageButton) view.findViewById(R.id.wb_button);
        this.aDK = (ImageButton) view.findViewById(R.id.shutter_button);
        this.aDE = (ImageButton) view.findViewById(R.id.iso_button);
        this.aDP = (ImageButton) view.findViewById(R.id.tripod_button);
        this.aDN.setOnClickListener(this);
        this.aDA.setOnClickListener(this);
        this.aDG.setOnClickListener(this);
        this.aDR.setOnClickListener(this);
        this.aDK.setOnClickListener(this);
        this.aDE.setOnClickListener(this);
        this.aDP.setOnClickListener(this);
    }

    private void aTA(View view) {
        this.aDI = (NubiaScrollView) view.findViewById(R.id.specification_scroll);
        this.aDI.rO(this);
        this.aDI.smoothScrollTo(0, 0);
        this.aDJ = AnimationUtils.loadAnimation(getActivity(), R.anim.show_textbook_title);
        this.aDC = AnimationUtils.loadAnimation(getActivity(), R.anim.hide_textbook_title);
    }

    private void aTy() {
        if (this.aDD) {
            this.aDD = false;
            this.aDT.setBackgroundResource(R.drawable.specification_back_normal);
            this.aDO.setVisibility(4);
            this.aDM.startAnimation(this.aDC);
            this.aDM.setVisibility(8);
            this.aDN.setVisibility(8);
        }
    }

    private void aTD() {
        if (!this.aDD) {
            this.aDD = true;
            this.aDT.setBackgroundResource(R.drawable.specification_back_focus);
            this.aDO.setVisibility(0);
            this.aDM.startAnimation(this.aDJ);
            this.aDM.setVisibility(0);
            this.aDN.setVisibility(0);
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.shutter_button:
                this.aDI.smoothScrollTo(0, aTx(this.aDL));
                return;
            case R.id.specification_title_bar:
            case R.id.specification_back_button:
                getActivity().finish();
                return;
            case R.id.focus_button:
                this.aDI.smoothScrollTo(0, aTx(this.aDB));
                return;
            case R.id.light_button:
                this.aDI.smoothScrollTo(0, aTx(this.aDH));
                return;
            case R.id.wb_button:
                this.aDI.smoothScrollTo(0, aTx(this.aDS));
                return;
            case R.id.iso_button:
                this.aDI.smoothScrollTo(0, aTx(this.aDF));
                return;
            case R.id.tripod_button:
                this.aDI.smoothScrollTo(0, aTx(this.aDQ));
                return;
            case R.id.tob_button:
                this.aDI.fullScroll(33);
                return;
            default:
                return;
        }
    }

    private int aTx(View view) {
        if (view == null) {
            return 0;
        }
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        return (iArr[1] - 180) + this.aDI.getScrollY();
    }

    public void rP(int i, int i2, int i3, int i4) {
        if (i2 > i4 && i2 > 300) {
            aTD();
        } else if (i2 < i4 && i2 < 300) {
            aTy();
        }
    }
}
