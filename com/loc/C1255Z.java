package com.loc;

import android.content.Context;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption$AMapLocationMode;
import com.amap.api.location.C0096d;

public class C1255Z {
    Context f153b;
    LocationListener beA = new cA(this);
    Handler bex;
    LocationManager bey;
    C0096d bez;
    long f154e = 1000;
    long f155f = 0;

    public C1255Z(Context context, C1239K c1239k) {
        this.f153b = context;
        this.bex = c1239k;
        this.bey = (LocationManager) this.f153b.getSystemService("location");
    }

    public void m149a() {
        if (!(this.bey == null || this.beA == null)) {
            this.bey.removeUpdates(this.beA);
        }
    }

    public void bxt(C0096d c0096d) {
        this.bez = c0096d;
        bxu(this.bez.buS(), 0.0f);
    }

    void bxu(long j, float f) {
        try {
            Looper myLooper = Looper.myLooper();
            if (myLooper == null) {
                myLooper = this.f153b.getMainLooper();
            }
            this.f154e = j;
            this.bey.requestLocationUpdates("gps", 1000, f, this.beA, myLooper);
        } catch (SecurityException e) {
            e.printStackTrace();
            if (AMapLocationClientOption$AMapLocationMode.Device_Sensors.equals(this.bez.buY())) {
                Message obtain = Message.obtain();
                AMapLocation aMapLocation = new AMapLocation("");
                aMapLocation.setProvider("gps");
                aMapLocation.buq(12);
                aMapLocation.bun(1);
                obtain.what = 2;
                obtain.obj = aMapLocation;
                if (this.bex != null) {
                    this.bex.sendMessage(obtain);
                }
            }
        } catch (Throwable th) {
            bx.bBw(th, "GPSLocation", "requestLocationUpdates part2");
        }
    }
}
