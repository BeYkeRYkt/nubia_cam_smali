package cn.nubia.bigAperture;

import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Messenger;
import android.os.Parcel;
import com.umeng.analytics.ReportPolicy;

public abstract class C0025a extends Binder implements BigApertureProcess {
    public C0025a() {
        attachInterface(this, "cn.nubia.bigAperture.BigApertureProcess");
    }

    public static BigApertureProcess bKj(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("cn.nubia.bigAperture.BigApertureProcess");
        if (queryLocalInterface == null || !(queryLocalInterface instanceof BigApertureProcess)) {
            return new C0026b(iBinder);
        }
        return (BigApertureProcess) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        String readString;
        Uri uri;
        boolean addTask;
        switch (i) {
            case 1:
                parcel.enforceInterface("cn.nubia.bigAperture.BigApertureProcess");
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    uri = (Uri) Uri.CREATOR.createFromParcel(parcel);
                } else {
                    uri = null;
                }
                addTask = addTask(readString, uri, parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readFloat(), parcel.readFloat(), parcel.readFloat(), parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeInt(addTask ? 1 : 0);
                return true;
            case 2:
                Uri uri2;
                Messenger messenger;
                parcel.enforceInterface("cn.nubia.bigAperture.BigApertureProcess");
                if (parcel.readInt() != 0) {
                    uri2 = (Uri) Uri.CREATOR.createFromParcel(parcel);
                } else {
                    uri2 = null;
                }
                if (parcel.readInt() != 0) {
                    messenger = (Messenger) Messenger.CREATOR.createFromParcel(parcel);
                } else {
                    messenger = null;
                }
                addTask = lockDepthData(uri2, messenger);
                parcel2.writeNoException();
                parcel2.writeInt(addTask ? 1 : 0);
                return true;
            case 3:
                Uri uri3;
                parcel.enforceInterface("cn.nubia.bigAperture.BigApertureProcess");
                if (parcel.readInt() != 0) {
                    uri3 = (Uri) Uri.CREATOR.createFromParcel(parcel);
                } else {
                    uri3 = null;
                }
                addTask = unlockDepthData(uri3);
                parcel2.writeNoException();
                parcel2.writeInt(addTask ? 1 : 0);
                return true;
            case 4:
                parcel.enforceInterface("cn.nubia.bigAperture.BigApertureProcess");
                setServiceStoppedAfterTasksDone(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            case 5:
                parcel.enforceInterface("cn.nubia.bigAperture.BigApertureProcess");
                String bigApertureTmpDir = getBigApertureTmpDir();
                parcel2.writeNoException();
                parcel2.writeString(bigApertureTmpDir);
                return true;
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                parcel.enforceInterface("cn.nubia.bigAperture.BigApertureProcess");
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    uri = (Uri) Uri.CREATOR.createFromParcel(parcel);
                } else {
                    uri = null;
                }
                addTask = addTaskWithDualDac(readString, uri, parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readFloat(), parcel.readFloat(), parcel.readFloat(), parcel.readFloat(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeInt(addTask ? 1 : 0);
                return true;
            case 7:
                BigApertureTask bigApertureTask;
                parcel.enforceInterface("cn.nubia.bigAperture.BigApertureProcess");
                if (parcel.readInt() != 0) {
                    bigApertureTask = (BigApertureTask) BigApertureTask.bpo.createFromParcel(parcel);
                } else {
                    bigApertureTask = null;
                }
                addTask = addTaskObject(bigApertureTask);
                parcel2.writeNoException();
                parcel2.writeInt(addTask ? 1 : 0);
                return true;
            case 1598968902:
                parcel2.writeString("cn.nubia.bigAperture.BigApertureProcess");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
