package cn.nubia.bigAperture;

import android.net.Uri;
import android.os.Messenger;
import com.p010a.C0090a;

public class C0042q extends C0025a {
    private C0024r bpn;

    public C0042q(C0024r c0024r) {
        this.bpn = c0024r;
    }

    public boolean addTask(String str, Uri uri, int i, int i2, int i3, int i4, int i5, int i6, int i7, float f, float f2, float f3, int i8) {
        return true;
    }

    public boolean addTaskObject(BigApertureTask bigApertureTask) {
        if (this.bpn != null) {
            this.bpn.bKi(bigApertureTask);
        }
        return true;
    }

    public boolean lockDepthData(Uri uri, Messenger messenger) {
        C0090a.bvo("BigAperatureProcessBinder", "lockDepthData uri: " + uri);
        if (this.bpn != null) {
            return this.bpn.lockDepthData(uri, messenger);
        }
        return false;
    }

    public void setServiceStoppedAfterTasksDone(boolean z) {
        C0090a.bvo("BigAperatureProcessBinder", "stoppedAutomatic: " + z);
        if (this.bpn != null) {
            this.bpn.setServiceStoppedAfterTasksDone(z);
        }
    }

    public String getBigApertureTmpDir() {
        return BigApertureService.bnW;
    }

    public boolean unlockDepthData(Uri uri) {
        C0090a.bvo("BigAperatureProcessBinder", "unlockDepthData uri: " + uri);
        if (this.bpn != null) {
            return this.bpn.unlockDepthData(uri);
        }
        return false;
    }

    public boolean addTaskWithDualDac(String str, Uri uri, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, float f, float f2, float f3, float f4, int i10, int i11, int i12, int i13) {
        return true;
    }
}
