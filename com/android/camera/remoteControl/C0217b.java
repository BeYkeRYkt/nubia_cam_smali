package com.android.camera.remoteControl;

import android.content.Context;
import com.android.camera.cameraFamily.C0174b;
import com.p010a.C0090a;

class C0217b extends C0216a {
    private Context aEQ;

    C0217b(String str) {
        super(str);
    }

    void aTX(Context context) {
        this.aEQ = context;
        aTY();
    }

    private void aTY() {
        C0090a.bvm("UpdateCameraFamilyAction", " updateCameraFamilyUserData ");
        C0174b.aUg().aUh(this.aEQ);
    }
}
