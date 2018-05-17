package cn.nubia.gallery3d.data;

import android.os.IBinder;
import android.os.Parcel;

class C0051b implements CommonInterface {
    private IBinder bpR;

    C0051b(IBinder iBinder) {
        this.bpR = iBinder;
    }

    public IBinder asBinder() {
        return this.bpR;
    }

    public String getCameraForSelection() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("cn.nubia.gallery3d.data.CommonInterface");
            this.bpR.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            String readString = obtain2.readString();
            return readString;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
