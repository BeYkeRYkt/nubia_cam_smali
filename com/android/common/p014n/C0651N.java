package com.android.common.p014n;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.android.camera.R;
import com.android.common.ActivityBase;

final class C0651N implements OnClickListener {
    final /* synthetic */ C0672n aek;

    C0651N(C0672n c0672n) {
        this.aek = c0672n;
    }

    public void onClick(View view) {
        ((ActivityBase) this.aek.getActivity()).aus();
        this.aek.adA.SU().Sa();
        if (this.aek.adn) {
            this.aek.notifyDataSetChanged();
        } else {
            this.aek.adA.SU().RZ();
        }
        this.aek.adA.SU().RG();
        this.aek.adA.SU().RB();
        if (this.aek.adt == null) {
            this.aek.adt = Toast.makeText(this.aek.getActivity(), this.aek.getString(R.string.settings_have_restored), 0);
        }
        this.aek.adt.show();
    }
}
