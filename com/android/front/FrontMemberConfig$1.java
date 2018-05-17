package com.android.front;

import com.android.camera.R;
import com.android.common.custom.C0421M;
import java.util.ArrayList;

final class FrontMemberConfig$1 extends ArrayList {
    final /* synthetic */ C0858a this$0;

    FrontMemberConfig$1(C0858a c0858a) {
        this.this$0 = c0858a;
        if (C0421M.dC().dD().cv()) {
            add(Integer.valueOf(R.xml.front_preferences_zk));
        } else {
            add(Integer.valueOf(R.xml.front_preferences));
        }
    }
}
