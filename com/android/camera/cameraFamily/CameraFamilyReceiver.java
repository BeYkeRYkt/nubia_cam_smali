package com.android.camera.cameraFamily;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.android.common.custom.C0421M;

public class CameraFamilyReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.PACKAGE_REPLACED") && intent.getData().getSchemeSpecificPart().equals(context.getPackageName())) {
            context.getContentResolver().notifyChange(C0177e.aFq, null);
            aWj(context);
        }
        aWk(context);
    }

    private void aWj(Context context) {
        Intent intent = new Intent("com.android.camera.UPDATE_FOR_SYSTEMIO");
        intent.setComponent(new ComponentName("com.android.systemui", "com.android.systemui.statusbar.phone.lockscreen.CameraPreviewReceiver"));
        context.sendBroadcast(intent);
    }

    private void aWk(Context context) {
        if (C0421M.dC().dD().bF()) {
            Intent intent = new Intent("nubia.camera.bigApertureService");
            intent.setPackage("com.android.camera");
            intent.putExtra("stop-after-task-done", true);
            context.startService(intent);
        }
    }
}
