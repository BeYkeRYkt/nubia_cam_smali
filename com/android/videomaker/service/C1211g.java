package com.android.videomaker.service;

import android.content.Intent;
import com.android.videomaker.p042b.C1181b;
import com.android.videomaker.p042b.C1182c;
import com.p010a.C0090a;
import java.io.File;

final class C1211g implements C1182c {
    final /* synthetic */ C1210f axN;
    final /* synthetic */ String axO;
    final /* synthetic */ Intent axP;

    C1211g(C1210f c1210f, String str, Intent intent) {
        this.axN = c1210f;
        this.axO = str;
        this.axP = intent;
    }

    public void aLl(C1181b c1181b, int i) {
        Intent aLp = MakerService.axv.aLp();
        aLp.putExtra("op", 4);
        aLp.putExtra("filename", this.axO);
        aLp.putExtra("req_intent", this.axP);
        aLp.putExtra("cancelled", MakerService.axt);
        if (!(MakerService.axt || this.axO == null || !new File(this.axO).exists())) {
            aLp.putExtra("uri", this.axN.axL.aLK(this.axO));
        }
        aLp.putExtra("ex", null);
        C0090a.m0d("MakerService", "submit statusIntent!");
        this.axN.axL.axB.aLZ(aLp);
    }
}
