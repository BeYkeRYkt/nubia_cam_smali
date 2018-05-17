package com.android.camera;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.provider.Settings.System;
import android.widget.Toast;
import com.android.common.C0616j;
import com.android.common.cameradevice.C0384o;
import com.android.common.setting.C0710j;

public class CameraButtonIntentReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        boolean z = false;
        if (System.getInt(context.getContentResolver(), "visitor", 1) == 0) {
            if (C0616j.apV("cn.nubia.v5light.preset", context)) {
                Toast.makeText(context, R.string.cannot_conflic_exit_flashlight, 1).show();
                return;
            }
            C0384o Jr = C0384o.Jr();
            int parseInt = Integer.parseInt(new C0710j(context).getString("pref_camera_id_key", "0"));
            try {
                if (Jr.JA(parseInt) == null) {
                    z = true;
                }
                if (z) {
                    if (C0616j.apL(context)) {
                        Toast.makeText(context, R.string.cannot_conflic_close_light, 1).show();
                    }
                    return;
                }
                Jr.JB(parseInt);
                Jr.JC(parseInt);
                Intent intent2 = new Intent("android.intent.action.MAIN");
                intent2.setClass(context, Camera.class);
                intent2.addCategory("android.intent.category.LAUNCHER");
                intent2.setFlags(268468224);
                intent2.putExtra("is_camera_key", true);
                context.startActivity(intent2);
            } catch (Exception e) {
                if (C0616j.apL(context)) {
                    Toast.makeText(context, R.string.cannot_conflic_close_light, 1).show();
                }
            }
        }
    }
}
