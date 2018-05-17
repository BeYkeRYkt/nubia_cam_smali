package com.android.camera;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import com.android.captureCamera.CaptureCameraService;
import com.android.common.custom.C0421M;
import com.android.common.setting.C0708h;
import com.android.common.setting.C0710j;
import com.p010a.C0090a;

class C0198d extends AsyncTask {
    private Context aHY = null;
    final /* synthetic */ BootCompletedReceiver aHZ;

    public C0198d(BootCompletedReceiver bootCompletedReceiver, Context context) {
        this.aHZ = bootCompletedReceiver;
        this.aHY = context;
    }

    protected /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        return aXw((Void[]) objArr);
    }

    protected Boolean aXw(Void... voidArr) {
        C0090a.m1e("BootCompletedReceiver", "BootCompletedReceiver doInBackground");
        if (this.aHY == null) {
            return Boolean.valueOf(false);
        }
        if (C0421M.dC().dD().bI()) {
            C0708h c0708h = new C0708h(this.aHY, false, false);
            if (!new C0710j(this.aHY).getString("pref_key_capture_camera", "off").equals("off")) {
                return Boolean.valueOf(true);
            }
        }
        return Boolean.valueOf(false);
    }

    protected /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        aXx((Boolean) obj);
    }

    protected void aXx(Boolean bool) {
        super.onPostExecute(bool);
        if (this.aHY != null) {
            boolean booleanValue = bool.booleanValue();
            C0090a.m1e("BootCompletedReceiver", "flag = " + booleanValue);
            if (booleanValue) {
                try {
                    this.aHY.startService(new Intent(this.aHY, CaptureCameraService.class));
                } catch (Throwable e) {
                    C0090a.bvi("BootCompletedReceiver", "start service failed!", e);
                }
            }
        }
    }
}
