package cn.nubia.bigAperture;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;

final class C0045u implements Creator {
    C0045u() {
    }

    public BigApertureTask createFromParcel(Parcel parcel) {
        return new BigApertureTask((Uri) Uri.CREATOR.createFromParcel(parcel), (Uri) Uri.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readFloat(), parcel.readFloat(), parcel.readFloat(), parcel.readFloat(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt(), bMb(parcel), parcel.readInt(), parcel.readInt());
    }

    public BigApertureTask[] newArray(int i) {
        return new BigApertureTask[i];
    }

    private int[] bMb(Parcel parcel) {
        int readInt = parcel.readInt();
        if (readInt == 0) {
            return null;
        }
        int[] iArr = new int[readInt];
        parcel.readIntArray(iArr);
        return iArr;
    }
}
