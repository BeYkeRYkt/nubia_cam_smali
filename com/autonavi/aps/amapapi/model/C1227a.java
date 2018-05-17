package com.autonavi.aps.amapapi.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class C1227a implements Creator {
    C1227a() {
    }

    public AmapLoc[] m74a(int i) {
        return null;
    }

    public AmapLoc bIE(Parcel parcel) {
        return new AmapLoc(parcel);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return bIE(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return m74a(i);
    }
}
