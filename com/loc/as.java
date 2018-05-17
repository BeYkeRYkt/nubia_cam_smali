package com.loc;

import android.content.Context;
import android.os.Looper;
import java.util.Date;
import java.util.List;

public class as extends aR {
    private static boolean f232a = true;

    protected as(int i) {
        super(i);
    }

    protected String mo938a(String str) {
        return bU.bDD(str + bv.m426a(new Date().getTime()));
    }

    protected String mo939a(List list) {
        return null;
    }

    protected boolean mo940a(Context context) {
        if (!f232a) {
            return false;
        }
        f232a = false;
        synchronized (Looper.getMainLooper()) {
            C1263h c1263h = new C1263h(context);
            av a = c1263h.m559a();
            if (a == null) {
                return true;
            } else if (a.m284a()) {
                a.m283a(false);
                c1263h.bvz(a);
                return true;
            } else {
                return false;
            }
        }
    }
}
