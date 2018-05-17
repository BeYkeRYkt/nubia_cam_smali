package com.android.camera.cameraFamily;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.p010a.C0090a;

public class LocaleChangedReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        C0090a.m1e("LocaleChangedReceiver", "getAction = " + intent.getAction());
        context.getContentResolver().notifyChange(C0177e.aFq, null);
    }
}
