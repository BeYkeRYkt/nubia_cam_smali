package com.loc;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

class bw implements bd {
    private IBinder bhr;

    bw(IBinder iBinder) {
        this.bhr = iBinder;
    }

    public IBinder asBinder() {
        return this.bhr;
    }

    public int bAB(Bundle bundle) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.amap.api.service.locationprovider.ILocationProviderService");
            if (bundle == null) {
                obtain.writeInt(0);
            } else {
                obtain.writeInt(1);
                bundle.writeToParcel(obtain, 0);
            }
            this.bhr.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            int readInt = obtain2.readInt();
            if (obtain2.readInt() != 0) {
                bundle.readFromParcel(obtain2);
            }
            obtain2.recycle();
            obtain.recycle();
            return readInt;
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
