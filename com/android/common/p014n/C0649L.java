package com.android.common.p014n;

import android.view.View;
import android.view.View.OnClickListener;

final class C0649L implements OnClickListener {
    final /* synthetic */ C0672n aei;

    C0649L(C0672n c0672n) {
        this.aei = c0672n;
    }

    public void onClick(View view) {
        if (this.aei.adn) {
            this.aei.getActivity().onBackPressed();
        } else {
            this.aei.adA.SU().Ru(false);
        }
    }
}
