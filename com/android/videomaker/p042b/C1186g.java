package com.android.videomaker.p042b;

import cn.nubia.videogenerator.p007b.C0066b;
import com.p010a.C0090a;
import java.io.IOException;

final class C1186g implements C0066b {
    final /* synthetic */ C1181b axp;

    C1186g(C1181b c1181b) {
        this.axp = c1181b;
    }

    public void aLn() {
        C0090a.m1e("videoGenerator", "onComplete");
        this.axp.axi.stop();
        try {
            this.axp.axm.stop();
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.axp.mState = 4;
        this.axp.aKZ(1, 0, 100);
    }
}
