package cn.nubia.bigAperture;

import android.net.Uri;
import android.os.IInterface;
import android.os.Messenger;

public interface BigApertureProcess extends IInterface {
    boolean addTask(String str, Uri uri, int i, int i2, int i3, int i4, int i5, int i6, int i7, float f, float f2, float f3, int i8);

    boolean addTaskObject(BigApertureTask bigApertureTask);

    boolean addTaskWithDualDac(String str, Uri uri, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, float f, float f2, float f3, float f4, int i10, int i11, int i12, int i13);

    String getBigApertureTmpDir();

    boolean lockDepthData(Uri uri, Messenger messenger);

    void setServiceStoppedAfterTasksDone(boolean z);

    boolean unlockDepthData(Uri uri);
}
