package com.android.camera;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.android.common.custom.C0421M;

public class BootCompletedReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        aXv(context);
        new C0198d(this, context).execute(new Void[0]);
    }

    private void aXv(Context context) {
        if (C0421M.dC().dD().bF()) {
            Intent intent = new Intent("nubia.camera.bigApertureService");
            intent.setPackage("com.android.camera");
            intent.putExtra("stop-after-task-done", true);
            context.startService(intent);
        }
    }
}
