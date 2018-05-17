package com.android.videomaker.service;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.p010a.C0090a;
import java.util.ArrayList;
import java.util.List;

class C1206a {
    private final List axr;

    public C1206a(int i) {
        this.axr = new ArrayList(i);
    }

    public synchronized Intent aLq(Context context, Class cls) {
        Intent aLp;
        aLp = aLp();
        aLp.setComponent(new ComponentName(context, cls));
        return aLp;
    }

    public synchronized Intent aLp() {
        if (this.axr.size() > 0) {
            Intent intent = (Intent) this.axr.remove(0);
            for (String removeExtra : intent.getExtras().keySet()) {
                intent.removeExtra(removeExtra);
            }
            intent.setComponent(null);
            return intent;
        }
        if (Log.isLoggable("IntentPool", 3)) {
            C0090a.m0d("IntentPool", "Pool enlarged");
        }
        return new Intent();
    }

    public synchronized void aLr(Intent intent) {
        this.axr.add(intent);
    }
}
