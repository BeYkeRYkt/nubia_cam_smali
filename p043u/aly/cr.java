package p043u.aly;

import android.content.Context;
import android.content.SharedPreferences;

public class cr {
    private cr() {
    }

    public static SharedPreferences m1204a(Context context, String str) {
        return context.getSharedPreferences(str, 0);
    }

    public static SharedPreferences m1203a(Context context) {
        return context.getSharedPreferences("umeng_general_config", 0);
    }
}
