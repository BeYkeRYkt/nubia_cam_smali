package com.android.common.p014n;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.android.common.C0700r;
import com.android.common.appService.C0349y;
import com.android.common.ui.ZtemtInlineSettingSwitch;
import com.p010a.C0090a;

final class C0641E implements OnItemClickListener {
    final /* synthetic */ C0672n aeb;

    C0641E(C0672n c0672n) {
        this.aeb = c0672n;
    }

    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        String str = this.aeb.adu[i];
        C0090a.bvo(C0672n.TAG, "mMoreSettingList onItemClick arg2 " + i + ",key " + str);
        if (C0349y.ZQ(str)) {
            if (str.equals("pref_camera_storage_path") && !C0700r.aqU()) {
                return;
            }
            if (!"pref_picture_artist_info".equals(str)) {
                this.aeb.adf = str;
                this.aeb.akR(this.aeb.adf);
            } else if (this.aeb.adk != null) {
                this.aeb.adk.pO();
            }
        } else if (C0349y.ZT(str) && (view instanceof ZtemtInlineSettingSwitch)) {
            ((ZtemtInlineSettingSwitch) view).qk();
        }
    }
}
