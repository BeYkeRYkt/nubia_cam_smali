package cn.nubia.gallery3d.data;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class C0050a extends Binder implements CommonInterface {
    public C0050a() {
        attachInterface(this, "cn.nubia.gallery3d.data.CommonInterface");
    }

    public static CommonInterface bMc(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("cn.nubia.gallery3d.data.CommonInterface");
        if (queryLocalInterface == null || !(queryLocalInterface instanceof CommonInterface)) {
            return new C0051b(iBinder);
        }
        return (CommonInterface) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                parcel.enforceInterface("cn.nubia.gallery3d.data.CommonInterface");
                String cameraForSelection = getCameraForSelection();
                parcel2.writeNoException();
                parcel2.writeString(cameraForSelection);
                return true;
            case 1598968902:
                parcel2.writeString("cn.nubia.gallery3d.data.CommonInterface");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
