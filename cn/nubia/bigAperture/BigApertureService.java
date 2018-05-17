package cn.nubia.bigAperture;

import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import android.os.IBinder;
import android.os.Messenger;
import android.util.Log;
import com.android.common.storagemanager.C0722e;
import com.p010a.C0090a;

public class BigApertureService extends Service implements C0024r {
    public static final String bnW;
    public static final boolean bnX = Log.isLoggable("BigApertureService", 3);
    private C0032h bnY = null;
    private C0025a bnZ = new C0042q(this);
    private final boolean boa = Log.isLoggable("ApertureBackground", 3);
    private C0722e bob = null;

    static {
        String str;
        if (bnX) {
            str = Environment.getExternalStorageDirectory() + "/DCIM/Camera/bigAperture";
        } else {
            str = Environment.getExternalStorageDirectory() + "/DCIM/Camera/.bigAperture";
        }
        bnW = str;
    }

    public void onCreate() {
        super.onCreate();
        C0090a.bvo("BigApertureService", "onCreate");
        this.bob = new C0722e(1);
        this.bnY = new C0032h(getContentResolver(), this, this.bob);
        this.bnY.start();
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        boolean booleanExtra;
        C0090a.bvo("BigApertureService", "onStartCommand");
        if (intent != null) {
            booleanExtra = intent.getBooleanExtra("stop-after-task-done", false);
        } else {
            booleanExtra = true;
        }
        this.bnY.setServiceStoppedAfterTasksDone(booleanExtra);
        return super.onStartCommand(intent, i, i2);
    }

    public IBinder onBind(Intent intent) {
        C0090a.bvo("BigApertureService", "onBind");
        return this.bnZ;
    }

    public boolean onUnbind(Intent intent) {
        C0090a.bvo("BigApertureService", "onUnBind");
        return super.onUnbind(intent);
    }

    public void onDestroy() {
        C0090a.bvo("BigApertureService", "onDestroy");
        if (this.bnY != null) {
            this.bnY.bKG();
        }
        this.bob.alV();
        super.onDestroy();
    }

    public void bKi(BigApertureTask bigApertureTask) {
        C0090a.bvo("BigApertureService", "onTaskAdded");
        bKh("onDataPutted: " + bigApertureTask.toString());
        this.bnY.bKH(bigApertureTask);
    }

    public boolean lockDepthData(Uri uri, Messenger messenger) {
        C0090a.bvo("BigApertureService", "lockDepthData Uri: " + uri);
        return this.bnY.lockDepthData(uri, messenger);
    }

    public boolean unlockDepthData(Uri uri) {
        C0090a.bvo("BigApertureService", "unlockDepthData URi: " + uri);
        return this.bnY.bKI(uri, true);
    }

    public void setServiceStoppedAfterTasksDone(boolean z) {
        this.bnY.setServiceStoppedAfterTasksDone(z);
    }

    private void bKh(String str) {
        if (this.boa) {
            C0090a.m0d("BigApertureService", str);
        }
    }
}
