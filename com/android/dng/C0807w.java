package com.android.dng;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.android.common.p012e.C0458b;

final class C0807w implements OnItemClickListener {
    final /* synthetic */ C0789e aNz;

    C0807w(C0789e c0789e) {
        this.aNz = c0789e;
    }

    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        C0458b.adi().adj(new C0808x(this, i));
    }
}
