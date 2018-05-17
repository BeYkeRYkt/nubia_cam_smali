package com.android.common.p029i;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import com.p010a.C0090a;

public class C0565a implements C0564c {
    C0566b[] YA = new C0566b[]{new C0566b(this, "gps"), new C0566b(this, "network")};
    private LocationManager YB;
    private boolean YC = false;
    private Context Yz;

    public C0565a(Context context) {
        this.Yz = context;
    }

    public void release() {
        this.Yz = null;
        this.YA[0] = null;
        this.YA[1] = null;
    }

    public Location age() {
        if (!this.YC) {
            return null;
        }
        for (C0566b agj : this.YA) {
            Location agj2 = agj.agj();
            if (agj2 != null) {
                return agj2;
            }
        }
        C0090a.m0d("NubiaLocationManager", "No location received yet.");
        return null;
    }

    public void agf(boolean z) {
        if (this.YC != z) {
            this.YC = z;
            if (z) {
                agg();
            } else {
                agh();
            }
        }
    }

    private void agg() {
        if (this.YB == null) {
            this.YB = (LocationManager) this.Yz.getSystemService("location");
        }
        if (this.YB != null) {
            try {
                this.YB.requestLocationUpdates("network", 1000, 0.0f, this.YA[1]);
            } catch (Throwable e) {
                C0090a.bvn("NubiaLocationManager", "fail to request location update, ignore", e);
            } catch (IllegalArgumentException e2) {
                C0090a.m0d("NubiaLocationManager", "provider does not exist " + e2.getMessage());
            }
            try {
                this.YB.requestLocationUpdates("gps", 1000, 0.0f, this.YA[0]);
            } catch (Throwable e3) {
                C0090a.bvn("NubiaLocationManager", "fail to request location update, ignore", e3);
            } catch (IllegalArgumentException e22) {
                C0090a.m0d("NubiaLocationManager", "provider does not exist " + e22.getMessage());
            }
            C0090a.m0d("NubiaLocationManager", "startReceivingLocationUpdates");
        }
    }

    private void agh() {
        if (this.YB != null) {
            for (LocationListener removeUpdates : this.YA) {
                try {
                    this.YB.removeUpdates(removeUpdates);
                } catch (Throwable e) {
                    C0090a.bvn("NubiaLocationManager", "fail to remove location listners, ignore", e);
                }
            }
            C0090a.m0d("NubiaLocationManager", "stopReceivingLocationUpdates");
        }
    }
}
