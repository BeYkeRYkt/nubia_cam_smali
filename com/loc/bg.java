package com.loc;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import java.text.SimpleDateFormat;

class bg implements LocationListener {
    final /* synthetic */ af bgR;

    bg(af afVar) {
        this.bgR = afVar;
    }

    private boolean bAC(Location location) {
        boolean z = false;
        if (location != null) {
            try {
                if ("gps".equalsIgnoreCase(location.getProvider()) && location.getLatitude() > -90.0d && location.getLatitude() < 90.0d && location.getLongitude() > -180.0d && location.getLongitude() < 180.0d) {
                    z = true;
                }
            } catch (Throwable th) {
                bx.bBw(th, "CollectorManager", "isValid");
                return false;
            }
        }
        return z;
    }

    public void onLocationChanged(Location location) {
        Object obj = null;
        try {
            long time = location.getTime();
            long currentTimeMillis = System.currentTimeMillis();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            simpleDateFormat.format(Long.valueOf(time));
            simpleDateFormat.format(Long.valueOf(currentTimeMillis));
            if (time > 0) {
                obj = 1;
            }
            if (obj != null) {
                currentTimeMillis = time;
            }
            if (location != null && bAC(location)) {
                if (location.getSpeed() > ((float) af.f199f)) {
                    cm.m513a(af.beG);
                    cm.bFH(af.beG * 10);
                } else if (location.getSpeed() > ((float) af.f198e)) {
                    cm.m513a(af.beF);
                    cm.bFH(af.beF * 10);
                } else {
                    cm.m513a(af.f200g);
                    cm.bFH(af.f200g * 10);
                }
                this.bgR.beU.m379a();
                bAC(location);
                if (this.bgR.beU.m379a() && bAC(location)) {
                    location.setTime(System.currentTimeMillis());
                    this.bgR.bxG(location, 0, currentTimeMillis);
                }
            }
        } catch (Throwable th) {
            bx.bBw(th, "CollectorManager", "onLocationChanged");
        }
    }

    public void onProviderDisabled(String str) {
    }

    public void onProviderEnabled(String str) {
    }

    public void onStatusChanged(String str, int i, Bundle bundle) {
    }
}
