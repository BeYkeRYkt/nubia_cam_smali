package cn.nubia.p000a;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import cn.nubia.bigAperture.C0025a;

final class C0018p implements ServiceConnection {
    final /* synthetic */ C0001a bnV;

    C0018p(C0001a c0001a) {
        this.bnV = c0001a;
    }

    public void onServiceDisconnected(ComponentName componentName) {
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (!this.bnV.bmo.SO()) {
            synchronized (this.bnV.bmq) {
                this.bnV.bmp = C0025a.bKj(iBinder);
                this.bnV.bmu.bIR(this.bnV.bmp);
                try {
                    iBinder.linkToDeath(this.bnV.bmt, 0);
                    this.bnV.bmp.setServiceStoppedAfterTasksDone(false);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
