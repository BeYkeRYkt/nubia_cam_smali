package cn.nubia.bigAperture;

import android.net.Uri;
import android.os.Messenger;

public interface C0024r {
    void bKi(BigApertureTask bigApertureTask);

    boolean lockDepthData(Uri uri, Messenger messenger);

    void setServiceStoppedAfterTasksDone(boolean z);

    boolean unlockDepthData(Uri uri);
}
