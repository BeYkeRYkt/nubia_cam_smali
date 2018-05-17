package com.android.zoomblur;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.android.camera.R;
import com.android.common.p014n.C0111p;
import com.android.common.setting.IconListPreference;
import com.android.common.ui.ZtemtSlidingDrawer;
import com.p010a.C0091b;

public class C1222b extends C0111p {
    private ImageView aPa = null;
    private IconListPreference aPb = null;
    private ZtemtSlidingDrawer aPc = null;

    public C1222b(int i) {
        super(i);
    }

    public static C1222b bfp() {
        return new C1222b(1);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        View inflate = layoutInflater.inflate(R.layout.zoomblur_fragment, viewGroup, false);
        bft(inflate);
        return inflate;
    }

    private void bft(View view) {
        bfs(view);
    }

    private void bfs(View view) {
        this.aPc = (ZtemtSlidingDrawer) view.findViewById(R.id.drawer);
        this.aPb = (IconListPreference) alv().tp("pref_zoomblur_type");
        C0091b.bvr("ZoomBlurFragment", "mPreference " + this.aPb);
        this.aPc.iF(this.aPb, getActivity(), true);
        this.aPc.iI(new C1225e(this));
        this.aPc.iJ(new C1226f(this));
    }

    private void bfr(int i) {
        this.aPb.tw();
        this.adA.Tz().sendEmptyMessage(60);
    }

    protected void ain(int i, boolean z) {
        super.ain(i, z);
        this.aPc.iL(i, z);
    }

    public void bfq(boolean z) {
        if (this.aPc != null) {
            this.aPc.setEnabled(z);
        }
    }
}
