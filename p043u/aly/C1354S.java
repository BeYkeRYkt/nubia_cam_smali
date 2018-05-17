package p043u.aly;

import android.content.Context;
import android.telephony.TelephonyManager;

public class C1354S extends cO {
    private Context f662b;

    public C1354S(Context context) {
        super("imei");
        this.f662b = context;
    }

    public String mo1006f() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f662b.getSystemService("phone");
        if (telephonyManager != null) {
            try {
            } catch (Exception e) {
                return null;
            }
        }
        if (C1394e.m1245a(this.f662b, "android.permission.READ_PHONE_STATE")) {
            return telephonyManager.getDeviceId();
        }
        return null;
    }
}
