package com.loc;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.os.Message;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.C0098f;

class cA implements LocationListener {
    final /* synthetic */ C1255Z bly;

    cA(C1255Z c1255z) {
        this.bly = c1255z;
    }

    public void onLocationChanged(Location location) {
        Object obj = 1;
        if (location != null) {
            try {
                Bundle extras = location.getExtras();
                int i = extras == null ? 0 : extras.getInt("satellites");
                if (i > 0 || this.bly.bez.buR()) {
                    if (C1253X.m132b() - this.bly.f155f > this.bly.f154e) {
                        obj = null;
                    }
                    if (obj == null) {
                        AMapLocation aMapLocation;
                        if (bx.bBs(location.getLatitude(), location.getLongitude()) && this.bly.bez.bvd()) {
                            aMapLocation = new AMapLocation(location);
                            aMapLocation.bun(1);
                            C0098f byg = ap.byg(this.bly.f153b, location.getLongitude(), location.getLatitude());
                            aMapLocation.setLatitude(byg.getLatitude());
                            aMapLocation.setLongitude(byg.getLongitude());
                        } else {
                            aMapLocation = new AMapLocation(location);
                            aMapLocation.setLatitude(location.getLatitude());
                            aMapLocation.setLongitude(location.getLongitude());
                            aMapLocation.bun(1);
                        }
                        aMapLocation.buC(i);
                        Message message = new Message();
                        message.obj = aMapLocation;
                        message.what = 2;
                        if (this.bly.bex != null) {
                            this.bly.bex.sendMessage(message);
                        }
                        if (!bx.bhz) {
                            bx.bhz = true;
                            bA.bBV(this.bly.f153b, "pref", "ded", true);
                        }
                        this.bly.f155f = C1253X.m132b();
                    } else if (this.bly.bex != null) {
                        this.bly.bex.sendEmptyMessage(5);
                    }
                }
            } catch (Throwable th) {
                bx.bBw(th, "GPSLocation", "onLocationChanged");
            }
        }
    }

    public void onProviderDisabled(String str) {
        try {
            if ("gps".equals(str) && this.bly.bex != null) {
                this.bly.bex.sendEmptyMessage(3);
            }
        } catch (Throwable th) {
            bx.bBw(th, "GPSLocation", "onProviderDisabled");
        }
    }

    public void onProviderEnabled(String str) {
    }

    public void onStatusChanged(String str, int i, Bundle bundle) {
        if (i == 0 || i == 1) {
            try {
                if (this.bly.bex != null) {
                    this.bly.bex.sendEmptyMessage(3);
                }
            } catch (Throwable th) {
                bx.bBw(th, "GPSLocation", "onStatusChanged");
            }
        }
    }
}
