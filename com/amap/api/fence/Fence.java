package com.amap.api.fence;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Fence implements Parcelable {
    public static final Creator bcZ = new C0092a();
    public String f0b;
    public PendingIntent bcX;
    public float bcY;
    public double f1c;
    public double f2d;
    public int f3f;
    public long f4g;
    private long f5h;
    private long f6i;
    private int f7j;

    public Fence() {
        this.bcX = null;
        this.f0b = null;
        this.f1c = 0.0d;
        this.f2d = 0.0d;
        this.bcY = 0.0f;
        this.f5h = -1;
        this.f6i = -1;
        this.f7j = 3;
        this.f3f = -1;
        this.f4g = -1;
    }

    private Fence(Parcel parcel) {
        this.bcX = null;
        this.f0b = null;
        this.f1c = 0.0d;
        this.f2d = 0.0d;
        this.bcY = 0.0f;
        this.f5h = -1;
        this.f6i = -1;
        this.f7j = 3;
        this.f3f = -1;
        this.f4g = -1;
        if (parcel != null) {
            this.f0b = parcel.readString();
            this.f1c = parcel.readDouble();
            this.f2d = parcel.readDouble();
            this.bcY = parcel.readFloat();
            this.f5h = parcel.readLong();
            this.f6i = parcel.readLong();
            this.f7j = parcel.readInt();
            this.f3f = parcel.readInt();
            this.f4g = parcel.readLong();
        }
    }

    public int m2a() {
        return this.f7j;
    }

    public long m3b() {
        return this.f5h;
    }

    public long m4c() {
        return this.f6i;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f0b);
        parcel.writeDouble(this.f1c);
        parcel.writeDouble(this.f2d);
        parcel.writeFloat(this.bcY);
        parcel.writeLong(this.f5h);
        parcel.writeLong(this.f6i);
        parcel.writeInt(this.f7j);
        parcel.writeInt(this.f3f);
        parcel.writeLong(this.f4g);
    }
}
