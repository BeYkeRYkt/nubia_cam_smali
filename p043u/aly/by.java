package p043u.aly;

import android.os.Build;
import android.os.Build.VERSION;

public class by extends cO {
    public by() {
        super("serial");
    }

    public String mo1006f() {
        if (VERSION.SDK_INT < 9) {
            return null;
        }
        return Build.SERIAL;
    }
}
