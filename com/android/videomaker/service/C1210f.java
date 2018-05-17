package com.android.videomaker.service;

import android.content.Intent;
import com.p010a.C0090a;

final class C1210f extends Thread {
    final /* synthetic */ MakerService axL;
    final /* synthetic */ Intent axM;

    C1210f(MakerService makerService, Intent intent) {
        this.axL = makerService;
        this.axM = intent;
    }

    public void run() {
        C0090a.m1e("MakerService", "exportMovie");
        String stringExtra = this.axM.getStringExtra("filename");
        this.axM.getIntExtra("height", -1);
        this.axM.getIntExtra("bitrate", -1);
        int intExtra = this.axM.getIntExtra("fps", 6);
        try {
            MakerService.axA.aKI(new C1211g(this, stringExtra, this.axM));
        } catch (Exception e) {
            C0090a.m1e("MakerService", "Export exception: " + e);
            e.printStackTrace();
        }
        try {
            MakerService.axA.aKJ(stringExtra, intExtra, new C1212h(this, stringExtra));
        } catch (Exception e2) {
            C0090a.m1e("MakerService", "Export exception: " + e2);
            e2.printStackTrace();
        }
    }
}
