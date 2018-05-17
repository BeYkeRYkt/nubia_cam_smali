package cn.nubia.bigAperture;

import android.net.Uri;
import android.os.IBinder;
import android.os.Messenger;
import android.os.Parcel;

class C0026b implements BigApertureProcess {
    private IBinder boc;

    C0026b(IBinder iBinder) {
        this.boc = iBinder;
    }

    public IBinder asBinder() {
        return this.boc;
    }

    public boolean addTask(String str, Uri uri, int i, int i2, int i3, int i4, int i5, int i6, int i7, float f, float f2, float f3, int i8) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("cn.nubia.bigAperture.BigApertureProcess");
            obtain.writeString(str);
            if (uri != null) {
                obtain.writeInt(1);
                uri.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            obtain.writeInt(i);
            obtain.writeInt(i2);
            obtain.writeInt(i3);
            obtain.writeInt(i4);
            obtain.writeInt(i5);
            obtain.writeInt(i6);
            obtain.writeInt(i7);
            obtain.writeFloat(f);
            obtain.writeFloat(f2);
            obtain.writeFloat(f3);
            obtain.writeInt(i8);
            this.boc.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            boolean z = obtain2.readInt() != 0;
            obtain2.recycle();
            obtain.recycle();
            return z;
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public boolean lockDepthData(Uri uri, Messenger messenger) {
        boolean z = true;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("cn.nubia.bigAperture.BigApertureProcess");
            if (uri != null) {
                obtain.writeInt(1);
                uri.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            if (messenger != null) {
                obtain.writeInt(1);
                messenger.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.boc.transact(2, obtain, obtain2, 0);
            obtain2.readException();
            if (obtain2.readInt() == 0) {
                z = false;
            }
            obtain2.recycle();
            obtain.recycle();
            return z;
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public boolean unlockDepthData(Uri uri) {
        boolean z = true;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("cn.nubia.bigAperture.BigApertureProcess");
            if (uri != null) {
                obtain.writeInt(1);
                uri.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.boc.transact(3, obtain, obtain2, 0);
            obtain2.readException();
            if (obtain2.readInt() == 0) {
                z = false;
            }
            obtain2.recycle();
            obtain.recycle();
            return z;
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public void setServiceStoppedAfterTasksDone(boolean z) {
        int i = 0;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("cn.nubia.bigAperture.BigApertureProcess");
            if (z) {
                i = 1;
            }
            obtain.writeInt(i);
            this.boc.transact(4, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public String getBigApertureTmpDir() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("cn.nubia.bigAperture.BigApertureProcess");
            this.boc.transact(5, obtain, obtain2, 0);
            obtain2.readException();
            String readString = obtain2.readString();
            return readString;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public boolean addTaskWithDualDac(String str, Uri uri, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, float f, float f2, float f3, float f4, int i10, int i11, int i12, int i13) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("cn.nubia.bigAperture.BigApertureProcess");
            obtain.writeString(str);
            if (uri != null) {
                obtain.writeInt(1);
                uri.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            obtain.writeInt(i);
            obtain.writeInt(i2);
            obtain.writeInt(i3);
            obtain.writeInt(i4);
            obtain.writeInt(i5);
            obtain.writeInt(i6);
            obtain.writeInt(i7);
            obtain.writeInt(i8);
            obtain.writeInt(i9);
            obtain.writeFloat(f);
            obtain.writeFloat(f2);
            obtain.writeFloat(f3);
            obtain.writeFloat(f4);
            obtain.writeInt(i10);
            obtain.writeInt(i11);
            obtain.writeInt(i12);
            obtain.writeInt(i13);
            this.boc.transact(6, obtain, obtain2, 0);
            obtain2.readException();
            boolean z = obtain2.readInt() != 0;
            obtain2.recycle();
            obtain.recycle();
            return z;
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public boolean addTaskObject(BigApertureTask bigApertureTask) {
        boolean z = true;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("cn.nubia.bigAperture.BigApertureProcess");
            if (bigApertureTask != null) {
                obtain.writeInt(1);
                bigApertureTask.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.boc.transact(7, obtain, obtain2, 0);
            obtain2.readException();
            if (obtain2.readInt() == 0) {
                z = false;
            }
            obtain2.recycle();
            obtain.recycle();
            return z;
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
