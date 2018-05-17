package com.android.videomaker.service;

import com.android.videomaker.p042b.C1181b;
import com.android.videomaker.p042b.C1183d;

final class C1212h implements C1183d {
    final /* synthetic */ C1210f axQ;
    final /* synthetic */ String axR;

    C1212h(C1210f c1210f, String str) {
        this.axQ = c1210f;
        this.axR = str;
    }

    public void aLm(C1181b c1181b, int i) {
        for (C1194c aMg : MakerService.axx) {
            aMg.aMg(this.axR, i);
        }
    }
}
