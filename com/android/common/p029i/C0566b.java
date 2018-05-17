package com.android.common.p029i;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import com.p010a.C0090a;

class C0566b implements LocationListener {
    Location YD;
    String YE;
    boolean YF = false;
    final /* synthetic */ C0565a YG;

    public C0566b(C0565a c0565a, String str) {
        this.YG = c0565a;
        this.YE = str;
        this.YD = new Location(this.YE);
    }

    public void onLocationChanged(Location location) {
        if (location.getLatitude() != 0.0d || location.getLongitude() != 0.0d) {
            if (!this.YG.YC || "gps".equals(this.YE)) {
            }
            if (!this.YF) {
                C0090a.m0d("NubiaLocationManager", "Got first location.");
            }
            this.YD.set(location);
            this.YF = true;
        }
    }

    public void onProviderEnabled(String str) {
    }

    public void onProviderDisabled(String str) {
        this.YF = false;
    }

    public void onStatusChanged(String str, int i, Bundle bundle) {
        switch (i) {
            case 0:
            case 1:
                this.YF = false;
                if (!this.YG.YC || !"gps".equals(str)) {
                    return;
                }
                return;
            default:
                return;
        }
    }

    public Location agj() {
        return this.YF ? this.YD : null;
    }
}
