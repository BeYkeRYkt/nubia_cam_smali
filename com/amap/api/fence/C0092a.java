package com.amap.api.fence;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class C0092a implements Creator {
    C0092a() {
    }

    public Fence[] m5a(int i) {
        return new Fence[i];
    }

    public Fence bvh(Parcel parcel) {
        return new Fence(parcel);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return bvh(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return m5a(i);
    }
}
