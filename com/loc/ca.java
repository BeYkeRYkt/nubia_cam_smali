package com.loc;

import com.amap.api.location.AMapLocation;

class ca {
    double f352a;
    double f353b;
    float bjk;
    float bjl;
    final /* synthetic */ bR bjm;
    long f354c;
    int f355f;
    String f356g;

    ca(bR bRVar, AMapLocation aMapLocation, int i) {
        this.bjm = bRVar;
        this.f352a = aMapLocation.getLatitude();
        this.f353b = aMapLocation.getLongitude();
        this.f354c = aMapLocation.getTime();
        this.bjk = aMapLocation.getAccuracy();
        this.bjl = aMapLocation.getSpeed();
        this.f355f = i;
        this.f356g = aMapLocation.getProvider();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        try {
            ca caVar = (ca) obj;
            if (this.f352a == caVar.f352a && this.f353b == caVar.f353b) {
                z = true;
            }
            return z;
        } catch (Throwable th) {
            return false;
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f352a);
        stringBuffer.append(",");
        stringBuffer.append(this.f353b);
        stringBuffer.append(",");
        stringBuffer.append(this.bjk);
        stringBuffer.append(",");
        stringBuffer.append(this.f354c);
        stringBuffer.append(",");
        stringBuffer.append(this.bjl);
        stringBuffer.append(",");
        stringBuffer.append(this.f355f);
        stringBuffer.append(",");
        stringBuffer.append(this.f356g);
        return stringBuffer.toString();
    }
}
