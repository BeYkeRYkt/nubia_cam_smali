package p043u.aly;

import android.content.Context;
import android.provider.Settings.Secure;

public class dw extends cO {
    private Context f992b;

    public dw(Context context) {
        super("android_id");
        this.f992b = context;
    }

    public String mo1006f() {
        String str = null;
        try {
            str = Secure.getString(this.f992b.getContentResolver(), "android_id");
        } catch (Exception e) {
        }
        return str;
    }
}
