package com.loc;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

class cF implements ServiceConnection {
    final /* synthetic */ an blS;
    final /* synthetic */ bi blT;

    cF(bi biVar, an anVar) {
        this.blT = biVar;
        this.blS = anVar;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.blT.bgZ = aH.bzo(iBinder);
        this.blS.mo955a(0);
    }

    public void onServiceDisconnected(ComponentName componentName) {
        this.blT.bgZ = null;
    }
}
