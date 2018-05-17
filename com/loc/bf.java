package com.loc;

import android.content.Context;
import android.os.Looper;
import java.util.List;

public class bf extends aR {
    private static boolean f309a = true;

    protected bf(int i) {
        super(i);
    }

    protected String mo939a(List list) {
        return null;
    }

    protected boolean mo940a(Context context) {
        if (cn.bFP(context) != 1 || !f309a) {
            return false;
        }
        f309a = false;
        synchronized (Looper.getMainLooper()) {
            C1263h c1263h = new C1263h(context);
            av a = c1263h.m559a();
            if (a == null) {
                return true;
            } else if (a.m285b()) {
                a.bza(false);
                c1263h.bvz(a);
                return true;
            } else {
                return false;
            }
        }
    }
}
