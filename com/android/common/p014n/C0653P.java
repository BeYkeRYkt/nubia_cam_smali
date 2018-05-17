package com.android.common.p014n;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.android.common.setting.ListPreference;
import com.p010a.C0090a;

final class C0653P implements OnItemClickListener {
    final /* synthetic */ C0672n aem;

    C0653P(C0672n c0672n) {
        this.aem = c0672n;
    }

    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        C0090a.bvo(C0672n.TAG, "mExpandListView onItemClick " + this.aem.adf + " " + i);
        ListPreference tp = this.aem.adA.SR().tp(this.aem.adf);
        if (i == tp.uW(tp.tw())) {
            this.aem.akO();
            return;
        }
        tp.uY(i);
        if ("pref_camera_storage_path".equals(this.aem.adf)) {
            this.aem.adA.SM().auD();
            this.aem.adA.Ti().alY(null);
        }
        this.aem.adh.notifyDataSetChanged();
        if (this.aem.adq != null) {
            this.aem.adq.notifyDataSetChanged();
        }
        if ("pref_video_quality_key".equals(this.aem.adf)) {
            this.aem.adA.SU().So();
        }
        this.aem.akO();
        this.aem.adA.Tz().sendEmptyMessage(60);
    }
}
