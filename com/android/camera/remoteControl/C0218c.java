package com.android.camera.remoteControl;

import android.content.Context;
import com.android.camera.cameraFamily.C0174b;
import com.p010a.C0090a;
import java.io.File;

class C0218c extends C0216a {
    private Context aEU;

    C0218c(String str) {
        super(str);
    }

    void aTX(Context context) {
        this.aEU = context;
        aUb();
    }

    private void aUb() {
        C0090a.bvm("ClearUserDataAction", " clearApplicationUserData ");
        File file = new File(this.aEU.getCacheDir().getParent());
        if (file.exists()) {
            aUc(file);
        }
        aUd();
    }

    private boolean aUc(File file) {
        if (file != null && file.isDirectory()) {
            String[] list = file.list();
            int i = 0;
            while (i < list.length) {
                File file2 = new File(file, list[i]);
                if (aUc(file2)) {
                    i++;
                } else {
                    C0090a.bvm("ClearUserDataAction", " delete file fail, file: " + file2);
                    return false;
                }
            }
        }
        if (file.toString().contains("databases")) {
            return true;
        }
        C0090a.bvm("ClearUserDataAction", " delete dir : " + file);
        return file.delete();
    }

    private void aUd() {
        C0090a.bvm("ClearUserDataAction", " updateCameraFamilyUserData ");
        C0174b.aUg().aUh(this.aEU);
    }
}
