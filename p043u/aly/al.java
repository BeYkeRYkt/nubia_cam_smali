package p043u.aly;

import android.content.Context;

public class al extends cO {
    private Context f709b;

    public al(Context context) {
        super("mac");
        this.f709b = context;
    }

    public String mo1006f() {
        String str = null;
        try {
            str = C1394e.bQu(this.f709b);
        } catch (Exception e) {
        }
        return str;
    }
}
